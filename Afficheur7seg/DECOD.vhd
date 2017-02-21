----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:07:22 03/03/2016 
-- Design Name: 
-- Module Name:    DECOD - Behavioral 
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

entity DECOD is
    Port ( Data : in  std_logic_vector (3 downto 0);
           seg : out  std_logic_vector (6 downto 0));
end DECOD;


architecture Behavioral of DECOD is


constant aff_0: std_logic_vector (6 downto 0):= "0000001";
constant aff_1: std_logic_vector (6 downto 0):= "1001111";
constant aff_2: std_logic_vector (6 downto 0):= "0010010";
constant aff_3: std_logic_vector (6 downto 0):= "0000110";
constant aff_4: std_logic_vector (6 downto 0):= "1001100";
constant aff_5: std_logic_vector (6 downto 0):= "0100110";
constant aff_6: std_logic_vector (6 downto 0):= "0100000";
constant aff_7: std_logic_vector (6 downto 0):= "0001110";
constant aff_8: std_logic_vector (6 downto 0):= "0000000";
constant aff_9: std_logic_vector (6 downto 0):= "0000100";
constant aff_10: std_logic_vector (6 downto 0):= "0001000";
constant aff_11: std_logic_vector (6 downto 0):= "0000000";
constant aff_12: std_logic_vector (6 downto 0):= "0110001";
constant aff_13: std_logic_vector (6 downto 0):= "0000001";
constant aff_14: std_logic_vector (6 downto 0):= "0110000";
constant aff_15: std_logic_vector (6 downto 0):= "0111000";

begin


process(data)
begin
         case data is
            when "0000" => seg <= aff_0;
            when "0001" => seg <= aff_1;
            when "0010" => seg <= aff_2;
            when "0011" => seg <= aff_3;
            when "0100" => seg <= aff_4;
            when "0101" => seg <= aff_5;
            when "0110" => seg <= aff_6;
            when "0111" => seg <= aff_7;
				when "1000" => seg <= aff_8;
				when "1001" => seg <= aff_9;
				when "1010" => seg <= aff_10;
				when "1011" => seg <= aff_11;
				when "1100" => seg <= aff_12;
				when "1101" => seg <= aff_13;
				when "1110" => seg <= aff_14;
				when "1111" => seg <= aff_15;
            when others => seg <= "1111111";
         end case;

end process;

end Behavioral;

