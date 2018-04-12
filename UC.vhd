----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:52:32 04/10/2018 
-- Design Name: 
-- Module Name:    UC - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           out_op3 : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture Behavioral of UC is

begin
process(op, op3)
begin
	if(op="10")then
		case(op3) is
			when "000000" => --add
			out_op3 <= "000000";
			when "000100" => --sub
			out_op3 <= "000100";
			when "000001" => --and
			out_op3 <= "000001";
			when "000101" => --nand
			out_op3 <= "000101";
			when "000010" => --or
			out_op3 <= "000010";
			when "000110" => --nor
			out_op3 <= "000110";
			when "000011" => --xor
			out_op3 <= "000011";
			when "000111" => --xnor
			out_op3 <= "000111";
			
			when others =>
			out_op3 <= "111111";
		end case;
	end if;
end process;
	
end Behavioral;

