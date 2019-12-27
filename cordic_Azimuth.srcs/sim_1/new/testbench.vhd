

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use ieee.std_logic_textio.all;
use std.textio.all;
 


entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

component Top_module 
  Port (
        clk : in std_logic;
        in_val : in std_logic;
        oflag : out std_logic;
		S 	 : in std_logic_vector(9 downto 0);  -- satlite langtitude in Radian : 3bits integer(sign+2bit) & fractions part
		N   : in std_logic_vector(9 downto 0);  -- sire longlitude : 3bits integer(sign+2bit) & fractions part
		L   : in std_logic_vector(9 downto 0);  -- satlite latitude in Radian   : 3bits integer(sign+2bit) & fractions part
		A   : out std_logic_vector(9 downto 0)  -- Azimuth angle : 3bits integer(sign+2bit) & fractions part
 );
end component;


signal clk : std_logic;
signal in_val : std_logic;
signal S : std_logic_vector(9 downto 0);
signal N : std_logic_vector(9 downto 0);
signal L : std_logic_vector(9 downto 0);
signal A : std_logic_vector(9 downto 0);

signal in_val_before : std_logic;
signal temp : std_logic;
signal oflag :  std_logic;
constant clk_period : time := 5 ns;


begin

unit_1 : Top_module 
  Port map (
        clk=>clk,
        oflag => oflag,
        in_val =>in_val,
		S 	 => S,
		N  =>  N,
		L => L,
		A => A
 );


   Clock_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
   
   in_val_process : process
   begin
        wait for 1 us;
   		in_val <= '1';
		wait until oflag ='1';
		in_val <= '0';
		
   end process;
   
   
   	Read_Input_Vector: process(Clk)
	
		file	 input_text_L	: text open read_mode is "C:\Users\Reza\Downloads\Telegram Desktop\testBench2\Input_lat1.txt";
        variable L_L            : line;
		variable LL_var	        : std_logic_vector(9 downto 0);--integer;
		file	 input_text_S   : text open read_mode is "C:\Users\Reza\Downloads\Telegram Desktop\testBench2\Input_long2.txt";
		variable L_S            : line;
		variable LS_var	        : std_logic_vector(9 downto 0);--integer;
		file	 input_text_N	: text open read_mode is "C:\Users\Reza\Downloads\Telegram Desktop\testBench2\Input_long1-n.txt";
		variable L_N	        : line;
		variable LN_var	        : std_logic_vector(9 downto 0);--integer;		
		
	begin
	
		if rising_edge(in_val) then
--		  temp <= in_val;
--          in_val_before <= temp;
--            if(in_val = '1')then
                  
                readline(input_text_L,L_L);
                read(L_L,LL_var);
                --Input_Signal				<= to_signed(LI1_var,14);
                L <= std_logic_vector(LL_var);
                
                readline(input_text_S,L_S);
                read(L_S,LS_var);
                --Input_Signal				<= to_signed(LI1_var,14);
                S <= std_logic_vector(LS_var);
                
                readline(input_text_N,L_N);
                read(L_N,LN_var);
                --Input_Signal				<= to_signed(LI1_var,14);
                N <= std_logic_vector(LN_var);
--            end if;						
		end if;	
	end process;
	
		write_Output_Vector: process(Clk)
	
		file     output_text	: text open write_mode is "C:\Users\Reza\Downloads\Telegram Desktop\testBench2\fpga_out.txt";
		variable LO1			: line;
		
	begin
	
		if (oflag = '1') then

                write(LO1,A); --to_integer(Output_Signal)
                writeline(output_text , LO1);

		end if;
	end process;


end Behavioral;
