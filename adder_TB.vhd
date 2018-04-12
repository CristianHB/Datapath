--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:21:00 04/12/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/data/Datapath/adder_TB.vhd
-- Project Name:  Datapath
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder_TB IS
END adder_TB;
 
ARCHITECTURE behavior OF adder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         a_adder : IN  std_logic_vector(31 downto 0);
         b_adder : IN  std_logic_vector(31 downto 0);
         out_adder : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_adder : std_logic_vector(31 downto 0) := (others => '0');
   signal b_adder : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal out_adder : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          a_adder => a_adder,
          b_adder => b_adder,
          out_adder => out_adder
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
					a_adder <= x"00000001";
					b_adder <= x"00000001";
      wait for 100 ns;
					a_adder <= x"00000002";
		wait for 100 ns;
					b_adder <= x"00000003";

      

      -- insert stimulus here 

      wait;
   end process;

END;
