
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity RegistroPC is
    Port ( PCAddr : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           PCOut : out  STD_LOGIC_VECTOR (31 downto 0));
end RegistroPC;

architecture Behavioral of RegistroPC is

begin
	process (clk, rst, PCAddr) is
		begin
			if (rst = '1') then
				PCOut <= (others => '0');
			elsif(rising_edge(clk))then
				PCOut <= PCAddr;
			end if;
	end process;


end Behavioral;

