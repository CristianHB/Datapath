----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:05:27 04/08/2018 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           dwr : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           out_rf1 : out  STD_LOGIC_VECTOR (31 downto 0);
           out_rf2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  out_rd : out  STD_LOGIC_VECTOR (31 downto 0));
end RF;

architecture Behavioral of RF is

	type rom_type is array (0 to 31) of std_logic_vector (31 downto 0);
	signal registro : rom_type :=( x"00000000",  --00
											 x"00000001",  --01	
											 x"00000002",  --02
											 x"00000003",  --03
											 x"00000004",  --04
											 x"00000005",  --05
											 x"00000006",  --06
											 x"00000007",  --07
											 x"0000000A",  --08
											 x"00000009",  --09
											 x"0000000A",  --10
											 x"0000000B",  --11
											 x"00000002",  --12
											 x"00000000",  --13
											 x"00000345",  --14
											 x"00454545",  --15
											 x"00000003",  --16
											 x"00000007",  --17
											 x"00003242",  --18
											 x"00000033",  --19
											 x"00003200",  --20
											 x"00400000",  --21
											 x"00500000",  --22
											 x"0000000A",  --23
											 x"45000000",  --24
											 x"00000000",  --25
											 x"0A000000",  --26
											 x"00B00000",  --27
											 x"000C0000",  --28
											 x"0000C000",  --29
											 x"00000001",  --30
											 x"0000A000"); --31
begin

process(rs1,rs2,rd,dwr,reset)
	begin
		if(reset = '1')then
			out_rf1 <= (others=>'0');
			out_rf2 <= (others=>'0');	
			
		else
			out_rf1 <= registro(conv_integer(rs1)); 
			out_rf2 <= registro(conv_integer(rs2)); 
			
			
			if(rd /= "000000")then
			registro(conv_integer(rd)) <= dwr;
			out_rd <=registro(conv_integer(rd));
			end if;
	end if;
	
end process;

end Behavioral;

