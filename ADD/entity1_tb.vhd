--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:58:29 02/18/2016
-- Design Name:   
-- Module Name:   D:/BENSI/ADD/entity1_tb.vhd
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
 
ENTITY entity1_tb IS
END entity1_tb;
 
ARCHITECTURE behavior OF entity1_tb IS 
 
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
 
   -- constant <clock>_period : time := 10 ns;
 
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
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
   wait for 10 ps;	

      --	wait for <clock>_period*10;
  	A <='1';
	B <= '1';
	CIN <= '0';
	wait for 20 ps;
	
      -- insert stimulus here 
  	A <='0';
	B <= '1';
	CIN <= '0';
	
	
   wait;
   end process;

END;
