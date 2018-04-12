--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:54 04/12/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/data/Datapath/ALU_TB.vhd
-- Project Name:  Datapath
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A_ALU : IN  std_logic_vector(31 downto 0);
         B_ALU : IN  std_logic_vector(31 downto 0);
         out_ALU : OUT  std_logic_vector(31 downto 0);
         sel_ALU : IN  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_ALU : std_logic_vector(31 downto 0) := (others => '0');
   signal B_ALU : std_logic_vector(31 downto 0) := (others => '0');
   signal sel_ALU : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal out_ALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A_ALU => A_ALU,
          B_ALU => B_ALU,
          out_ALU => out_ALU,
          sel_ALU => sel_ALU
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      
			A_ALU <= x"00000003";
			B_ALU <= x"00000004";
			sel_ALU <= "000000";
			wait for 100 ns;
			sel_ALU <= "000100";
			wait for 100 ns;
			sel_ALU <= "000001";
			wait for 100 ns;
			sel_ALU <= "000010";
		

      wait;
   end process;

END;
