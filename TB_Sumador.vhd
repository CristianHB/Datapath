--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:17:04 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/utp/PC/ProgramCounter/TB_Sumador.vhd
-- Project Name:  ProgramCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador
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
 
ENTITY TB_Sumador IS
END TB_Sumador;
 
ARCHITECTURE behavior OF TB_Sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         C : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador PORT MAP (
          A => A,
          B => B,
          C => C
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      
		A <= "00000000000000000000000000000001";
		B <= "00000000000000000000000000000001";
      wait for 50 ns;	
		A <= "00000000000010000000000000000000";
		B <= "00000000000000010000000000000001";
      wait for 50 ns;
		A <= "00000000000010000000000010000000";
		B <= "00000000000000010000000000000001";
      wait for 50 ns;
		A <= "00000000000010000000000000000001";
		B <= "00000000000000010000000100000001";
      wait for 50 ns;
		

      

      wait;
   end process;

END;
