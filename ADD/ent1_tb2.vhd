--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:16:03 02/18/2016
-- Design Name:   
-- Module Name:   D:/BENSI/ADD/ent1_tb2.vhd
-- Project Name:  ADD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ENTITY1
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
USE ieee.numeric_std.ALL;
 
ENTITY ent1_tb2 IS
END ent1_tb2;
 
ARCHITECTURE behavior OF ent1_tb2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ENTITY1
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         CIN : IN  std_logic;
         S : OUT  std_logic;
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal CIN : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ENTITY1 PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          S => S,
          COUT => COUT
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   A_process: process
   begin		
    A <= not A;
   wait for 50 ns;	
   end process;
	
	B_process: process
   begin		
    B <= not B;
   wait for 20 ns;	
   end process;
	
	C_process: process
   begin		
    CIN <= not CIN;
   wait for 10 ns;	
   end process;

END;
