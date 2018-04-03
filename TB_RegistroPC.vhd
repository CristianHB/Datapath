--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:16:29 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/utp/PC/ProgramCounter/TB_RegistroPC.vhd
-- Project Name:  ProgramCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegistroPC
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
 
ENTITY TB_RegistroPC IS
END TB_RegistroPC;
 
ARCHITECTURE behavior OF TB_RegistroPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegistroPC
    PORT(
         PCAddr : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         PCOut : OUT  std_logic_vector(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal PCAddr : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal PCOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistroPC PORT MAP (
          PCAddr => PCAddr,
          rst => rst,
          clk => clk,
          PCOut => PCOut
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		rst <= '1';
		PCAddr <= "00000000000000000000000000000011";
      wait for 50 ns;	
		rst <= '0';
		PCAddr <= "00000000000000000000000000000111";
		wait for 50 ns;
		rst <= '0';
		PCAddr <= "00000000000000000000000000000110";
		wait for 50 ns;
		rst <= '0';
		PCAddr <= "00000000000000000000000000010111";
		wait for 50 ns;
		rst <= '0';
		PCAddr <= "00000000000000000000000000111111";
		wait for 50 ns;
		rst <= '0';
		PCAddr <= "00000000000000000000000000011011";
		wait for 50 ns;
		rst <= '0';
		PCAddr <= "00000000000000000000000001011111";
		wait for 50 ns;

      wait;
   end process;

END;
