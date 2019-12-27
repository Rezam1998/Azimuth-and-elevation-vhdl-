
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Top_module is
  Port (
        clk : in std_logic;
        in_val : in std_logic;
        oflag : out std_logic;
		--S 	 : in std_logic_vector(9 downto 0);  -- satlite langtitude in Radian : 3bits integer(sign+2bit) & fractions part
		--N   : in std_logic_vector(9 downto 0);  -- sire longlitude : 3bits integer(sign+2bit) & fractions part
		G   : in signed(9 downto 0); -- G = S - N
		L   : in signed(9 downto 0);  -- satlite latitude in Radian   : 3bits integer(sign+2bit) & fractions part
		E   : out signed(9 downto 0);
		A   : out signed(10 downto 0)  -- Azimuth angle : 3bits integer(sign+2bit) & fractions part
 );
end Top_module;

architecture Behavioral of Top_module is

-------------------components---------------------------
component clk_wiz_0
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;

component Azimuth 
  Port (  
        clk : in std_logic;
        in_val : in std_logic;
        o_flag : out std_logic;
		--S_in 	 : in std_logic_vector(9 downto 0);  -- satlite langtitude in Radian : 3bits integer(sign+2bit) & fractions part
		--N_in   : in std_logic_vector(9 downto 0);  									: 3bits integer(sign+2bit) & fractions part
		G_in   : in signed(9 downto 0);
		L_in   : in signed(9 downto 0);  -- satlite latitude in Radian   : 3bits integer(sign+2bit) & fractions part
		LOCKED : in std_logic;
		E_out   : out signed(9 downto 0);
		A_out   : out signed(10 downto 0)  -- Azimuth angle : 3bits integer(sign+2bit) & fractions part
   );
end component;
--------------------------------------------------------
---------------------signals--------------------------
signal sysclk : std_logic;
signal corclk: std_logic;
signal LOCKED : std_logic;
--signal S_IN	 :  std_logic_vector(9 downto 0);  -- satlite langtitude in Radian : 3bits integer(sign+2bit) & fractions part
--signal N_in  :  std_logic_vector(9 downto 0);  --  									: 3bits integer(sign+2bit) & fractions part
signal G_in  :  signed(9 downto 0);
signal L_in   :  signed(9 downto 0);
signal in_val_0 : std_logic; 
signal A_out : signed(10 downto 0);
signal E_out : signed(9 downto 0);
signal o_flag : std_logic;
------------------------------------------------------


begin

---------------------port mapping---------------------
clk_0 : clk_wiz_0
   port map ( 
  -- Clock out ports  
   clk_out1 => sysclk,
   clk_out2 => corclk,
  -- Status and control signals                
   reset => '0',
   locked => locked,
   -- Clock in ports
   clk_in1 => clk
 );
 
 azimuth_0 : Azimuth 
  Port map (  
        clk => clk,
        o_flag => o_flag,
        in_val => in_val,
        G_in=>G_in,
		L_in => L_in,
		LOCKED => locked,
		E_out=>E_out,
		A_out => A_out
   );
------------------------------------------------------

in_val_0 <= in_val;
--s_in <= s;
--N_in <= N;
G_in <= G;
L_in <= L;
A <= A_out;
E<= E_out;
oflag <= o_flag;
end Behavioral;
