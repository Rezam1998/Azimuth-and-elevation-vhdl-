
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Azimuth is
  Port (  
        clk : in std_logic;
        o_flag : out std_logic;
        in_val : in std_logic;
		G_in   : in signed(9 downto 0);	-- G = S-N : 3bits integer(sign+2bit) & fractions part
		L_in   : in signed(9 downto 0);  -- satlite latitude in Radian   : 3bits integer(sign+2bit) & fractions part
		LOCKED : in std_logic;
		E_out   : out signed(9 downto 0);
		
		A_out   : out signed(10 downto 0)  -- Azimuth angle : 3bits integer(sign+2bit) & fractions part
   );
end Azimuth;

architecture Behavioral of Azimuth is

-------------------components---------------------------
COMPONENT cordic_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_phase_tvalid : IN STD_LOGIC;
    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

COMPONENT div_gen_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_divisor_tvalid : IN STD_LOGIC;
    s_axis_divisor_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_dividend_tvalid : IN STD_LOGIC;
    s_axis_dividend_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

COMPONENT cordic_1
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_cartesian_tvalid : IN STD_LOGIC;
    s_axis_cartesian_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

COMPONENT cordic_sqrt
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_cartesian_tvalid : IN STD_LOGIC;
    s_axis_cartesian_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mult_gen_0
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END COMPONENT;


COMPONENT mult_gen_1
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(39 DOWNTO 0)
  );
END COMPONENT;
--------------------------------------------------------
--------------------------------------------------------

---------------------signals----------------------------

constant pi : signed(10 downto 0):= TO_SIGNED(402,11);
constant const : signed (19 downto 0) := TO_SIGNED(20,20);
constant one : signed(39 downto 0) := "0000000100000000000000000000000000000000";

signal   s_axis_phase_tvalid :  STD_LOGIC;
signal   s_axis_phase_tdata :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others=>'0');
signal   m_axis_dout_tvalid :  STD_LOGIC;
signal   m_axis_dout_tdata :  STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0');

signal s_axis_divisor_tvalid :  STD_LOGIC;
signal s_axis_divisor_tdata :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others=>'0');
signal s_axis_dividend_tvalid :  STD_LOGIC;
signal s_axis_dividend_tdata :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others=>'0');
signal m_axis_dout_tvalid_div :  STD_LOGIC;
signal m_axis_dout_tdata_div :  STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0') ;


signal s_axis_cartesian_tvalid :  STD_LOGIC;
signal s_axis_cartesian_tdata : STD_LOGIC_VECTOR(31 DOWNTO 0) :=(others=>'0');
signal m_axis_dout_tvalid_atan : STD_LOGIC;
signal m_axis_dout_tdata_atan : STD_LOGIC_VECTOR(15 DOWNTO 0):=(others=>'0');

 
signal state  : unsigned(3 downto 0):=(others=>'0');
signal counter  : unsigned(3 downto 0):=(others=>'0'); 
 
signal S 	 :  std_logic_vector(9 downto 0):=(others=>'0');  -- satlite langtitude in Radian : 3bits integer(sign+2bit) & fractions part
signal N   :  std_logic_vector(9 downto 0):=(others=>'0');  --  									: 3bits integer(sign+2bit) & fractions part
signal L   :  std_logic_vector(9 downto 0):=(others=>'0');  -- satlite latitude in Radian   : 3bits integer(sign+2bit) & fractions part
signal A   :  signed(10 downto 0):=(others=>'0');
signal E   :  signed(9 downto 0) :=(others=>'0');
signal G   :  std_logic_vector(9 downto 0):=(others=>'0');
signal sin_G : std_logic_vector(9 downto 0):=(others=>'0');
signal cos_G : std_logic_vector(9 downto 0):=(others=>'0');
signal sin_L : std_logic_vector(9 downto 0):=(others=>'0');
signal cos_L : std_logic_vector(9 downto 0):=(others=>'0');
signal tan_G : signed(9 downto 0):=(others=>'0');
signal Atan_in : std_logic_vector(9 downto 0):=(others=>'0'); 

signal out_flag : std_logic;

signal sum_test : std_logic_vector(10 downto 0);
signal atan_out : signed(10 downto 0);
signal cos_Lcos_G : signed (19 downto 0);
signal cos_Lcos_G_2 : signed (39 downto 0):=(others=>'0');
signal arg_0 : signed(19 downto 0):=(others=>'0'); -- first argument for elevation's arctan
signal arg_1 : signed(39 downto 0):=(others=>'0'); -- second argument for elevation's arctan without sqrt
signal arg_2 : signed(9 downto 0):=(others=>'0'); -- sqrt

signal s_axis_cartesian_tvalid_sqrt : std_logic;
signal s_axis_cartesian_tdata_sqrt : std_logic_vector(15 downto 0):=(others=>'0');
signal m_axis_dout_tvalid_sqrt : std_logic;
signal m_axis_dout_tdata_sqrt : std_logic_vector(15 downto 0):=(others=>'0');


signal Amult_0 : std_logic_vector(9 downto 0);
signal Bmult_0 : std_logic_vector(9 downto 0);
signal Pmult_0 : std_logic_vector(19 downto 0);
signal Amult_1 : std_logic_vector(19 downto 0);
signal Bmult_1 : std_logic_vector(19 downto 0);
signal Pmult_1 : std_logic_vector(39 downto 0);
--------------------------------------------------------

begin
---------------------port mapping-----------------------
sin_cos : cordic_0
  PORT MAP (
    aclk => clk,
    s_axis_phase_tvalid => s_axis_phase_tvalid,
    s_axis_phase_tdata => s_axis_phase_tdata,
    m_axis_dout_tvalid => m_axis_dout_tvalid,
    m_axis_dout_tdata => m_axis_dout_tdata
  );
  
  div : div_gen_0
  PORT MAP (
    aclk => clk,
    s_axis_divisor_tvalid => s_axis_divisor_tvalid,
    s_axis_divisor_tdata => s_axis_divisor_tdata,
    s_axis_dividend_tvalid => s_axis_dividend_tvalid,
    s_axis_dividend_tdata => s_axis_dividend_tdata,
    m_axis_dout_tvalid => m_axis_dout_tvalid_div,
    m_axis_dout_tdata => m_axis_dout_tdata_div
  );
  
  ArcTan : cordic_1
  PORT MAP (
    aclk => clk,
    s_axis_cartesian_tvalid => s_axis_cartesian_tvalid,
    s_axis_cartesian_tdata => s_axis_cartesian_tdata,
    m_axis_dout_tvalid => m_axis_dout_tvalid_atan,
    m_axis_dout_tdata => m_axis_dout_tdata_atan
  );

  sqrt : cordic_sqrt
  PORT MAP (
    aclk => clk,
    s_axis_cartesian_tvalid => s_axis_cartesian_tvalid_sqrt,
    s_axis_cartesian_tdata => s_axis_cartesian_tdata_sqrt,
    m_axis_dout_tvalid => m_axis_dout_tvalid_sqrt,
    m_axis_dout_tdata => m_axis_dout_tdata_sqrt
  );



mult_10bit : mult_gen_0
  PORT MAP (
    CLK => CLK,
    A => Amult_0,
    B => Bmult_0,
    P => Pmult_0
  );

mult_2_bir : mult_gen_1
  PORT MAP (
    CLK => CLK,
    A => Amult_1,
    B => Bmult_1,
    P => Pmult_1
  );
--------------------------------------------------------
--------------------------------------------------------
--s <= std_logic_vector(s_in);
--N <= std_logic_vector(N_in);
G <= std_logic_vector(G_in);
L <= std_logic_vector(L_in);
A_out <= A ;
E_out <= E;
O_flag <= out_flag;
--------------- process --------------------------------
process(clk)

begin

    if(rising_edge(clk) and locked = '1')then
            
        if (in_val = '1' and state = TO_UNSIGNED(0,4))then
            out_flag <= '0';
            state <= TO_UNSIGNED(1,4);
            --G <= S + N ;
        end if;
        
        
        
        if (state = TO_UNSIGNED(1,4))then
            s_axis_phase_tvalid <= '1';
            s_axis_phase_tdata <= "000000" & G;
        end if;
        
        
        
        if (m_axis_dout_tvalid = '1' and state = TO_UNSIGNED(1,4)  )then -- counter >= x"14" m_axis_dout_tvalid = '1'
              sin_G <= m_axis_dout_tdata (25 downto 16);
              cos_G <= m_axis_dout_tdata (9 downto 0);
              s_axis_phase_tvalid <= '0';
              --  counter <= X"0";
              state <= TO_UNSIGNED(2,4);
        end if;       
        
        
        
        if(state = TO_UNSIGNED(2,4))then
            counter <= counter + 1;
            if(counter = TO_UNSIGNED(15,4))then
                counter <= TO_UNSIGNED(0,4);
                state <= TO_UNSIGNED(3,4);
            end if; 
        end if;
        
        
        if (state = TO_UNSIGNED(3,4))then 
            s_axis_phase_tvalid <= '1';
            s_axis_phase_tdata <= "000000" & L;
                       
        end if;
        
        
            if ( m_axis_dout_tvalid = '1' and state = TO_UNSIGNED(3,4)  )then -- counter >= x"14" m_axis_dout_tvalid = '1'
                sin_L <= m_axis_dout_tdata (25 downto 16);
                cos_L <= m_axis_dout_tdata (9 downto 0);
                s_axis_phase_tvalid <= '0';
                --counter <= X"0";
                state <= TO_UNSIGNED(4,4);  
             end if;
        
         if(state = TO_UNSIGNED(4,4))then
            counter <= counter + 1;
            if(counter = TO_UNSIGNED(15,4))then
                counter <= TO_UNSIGNED(0,4);
                state <= TO_UNSIGNED(5,4);
            end if; 
        end if;       
        
        
        if (state = TO_UNSIGNED(5,4))then 
            s_axis_divisor_tvalid <= '1';
            S_axis_dividend_tvalid <= '1';
            s_axis_dividend_tdata <= "000000" & sin_G;
            s_axis_divisor_tdata <= "000000" & cos_G;
            --------------------------------------------
--            cos_Lcos_G <= signed(cos_G) * signed(cos_L);
            Amult_0 <= cos_G;
            Bmult_0 <= cos_L;


        end if;
        
       if(m_axis_dout_tvalid_div = '1' and state = TO_UNSIGNED(5,4))then
           tan_G <= signed(m_axis_dout_tdata(25 downto 16 )) + signed(m_axis_dout_tdata(9 downto 2));
           S_axis_dividend_tvalid <= '0';
           s_axis_divisor_tvalid <= '0';
            state <= TO_UNSIGNED(6,4);
            ------------------------------------------
            --cos_Lcos_G_2 <= cos_Lcos_G * cos_Lcos_G;
            cos_lcos_G <= signed(pmult_0); 
       end if;       
        
        
        
        
        
        if (state <= TO_UNSIGNED(6,4))then
            s_axis_cartesian_tvalid <= '1';
            s_axis_cartesian_tdata <= "000000" & std_logic_vector(tan_G) & "000000" & sin_L;
          --  counter <= counter + x"1";
            -----------------------------------------


            arg_0 <= (cos_Lcos_G - const);

            Amult_1 <= std_logic_vector(cos_Lcos_G);
            Bmult_1 <= std_logic_vector(cos_Lcos_G);
        end if;
        
        if(state = TO_UNSIGNED(6,4))then
            counter <= counter + 1;
            if(counter = TO_UNSIGNED(15,4))then
                counter <= TO_UNSIGNED(0,4);
                state <= TO_UNSIGNED(7,4);
            end if; 
        end if;        
        
        
        
        
       if (m_axis_dout_tvalid_atan = '1' and state = TO_UNSIGNED(7,4))then -- and counter >= x"14"
            
            A <= pi +  RESIZE(signed( m_axis_dout_tdata_atan(9 downto 0)),11);
            atan_out <= RESIZE(signed( m_axis_dout_tdata_atan(9 downto 0)),11);
            s_axis_cartesian_tvalid <= '0';
            out_flag <= '1';
            counter <= x"0";
            state <= TO_UNSIGNED(8,4);
            
            cos_Lcos_G_2 <= signed(Pmult_1);

            arg_1 <= one - signed(Pmult_1);
       end if; 
       
       
        
       if(state = TO_UNSIGNED(8,4))then
            s_axis_cartesian_tvalid_sqrt <= '1';
            s_axis_cartesian_tdata_sqrt <= "000000" & std_logic_vector(arg_1(39 downto 39)) & std_logic_vector(arg_1(31 downto 23));
            state <= TO_UNSIGNED(9,4);
       end if;
       
       
       if(state = TO_UNSIGNED(9,4))then
            counter <= counter + 1;
            if(counter = TO_UNSIGNED(15,4))then
                counter <= TO_UNSIGNED(0,4);
                state <= TO_UNSIGNED(10,4);
            end if; 
        end if;
        
        if(m_axis_dout_tvalid_sqrt = '1' and state = TO_UNSIGNED(10,4))then
            arg_2 <= signed('0' & m_axis_dout_tdata_sqrt(9 downto 1)); -- 0.xxxxxxxxx => 00.xxxxxxxx
            state <= TO_UNSIGNED(11,4);
          --  s_axis_cartesian_tvalid <= '1';
        end if;
        
        
        
        if(state = TO_UNSIGNED(11,4))then
           s_axis_cartesian_tvalid <= '1';
           s_axis_cartesian_tdata <= "000000" & std_logic_vector(arg_0(19 downto 19))& 
                        std_logic_vector(arg_0(16 downto 8))& "000000" & std_logic_vector(arg_2);
           state <= TO_UNSIGNED(12,4);
        end if; 
        
        
        if(state = TO_UNSIGNED(12,4))then
            counter <= counter + 1;
            if(counter = TO_UNSIGNED(15,4))then
                counter <= TO_UNSIGNED(0,4);
                state <= TO_UNSIGNED(13,4);
            end if; 
        end if;   
        
        if (m_axis_dout_tvalid_sqrt = '1' and state = TO_UNSIGNED(13,4))then -- and counter >= x"14"
            
            E <= signed( m_axis_dout_tdata_atan(9 downto 0));
            
            s_axis_cartesian_tvalid <= '0';
            out_flag <= '1';
            counter <= x"0";
            state <= TO_UNSIGNED(0,4);
       end if; 
              
        
    
    end if;


 
end process;

end Behavioral;
