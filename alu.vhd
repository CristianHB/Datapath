----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:53 04/09/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A_ALU : in  STD_LOGIC_VECTOR (31 downto 0);
           B_ALU : in  STD_LOGIC_VECTOR (31 downto 0);
           out_ALU : out  STD_LOGIC_VECTOR (31 downto 0);
           sel_ALU : in  STD_LOGIC_VECTOR (5 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

 
   out_ALU <= A_ALU + B_ALU when sel_ALU = "000000" --add
				  else
              A_ALU - B_ALU when sel_ALU = "000100" --sub
				  else
				  a_ALU and b_ALU when sel_ALU = "000001" --and
				  else
				  a_ALU nand b_ALU when sel_ALU = "000101" --nand
				  else
				  a_ALU or b_ALU when sel_ALU = "000010" --or
				  else
				  a_ALU nor b_ALU when sel_ALU = "000110" --nor
				  else
				  a_ALU xor b_ALU when sel_ALU = "000011" --xor
				  else
				  a_ALU xnor b_ALU when sel_ALU = "000111" --xnor
				  ;
			 
			


end Behavioral;

