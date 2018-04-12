----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:10 04/10/2018 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( A_mux : in  STD_LOGIC_VECTOR (3 downto 0);
           B_mux : in  STD_LOGIC_VECTOR (3 downto 0);
           C_mux : in  STD_LOGIC_VECTOR (3 downto 0);
           sel_mux : in  STD_LOGIC_VECTOR (1 downto 0);
           out_mux : out  STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is

begin
process (sel_mux, A_mux, B_mux, C_mux) is
begin
		case sel_mux is
			when "00" => out_mux <= (others => '0');
			when "01" => out_mux <= A_mux;
			when "10" => out_mux <= B_mux;
			when "11" => out_mux <= C_mux;
			when others => out_mux <= (others => '0');
		end case;
	end process;	
end Behavioral;

