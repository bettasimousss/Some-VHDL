----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:39:44 03/03/2016 
-- Design Name: 
-- Module Name:    afficheur - Behavioral 
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

entity afficheur is
    Port ( data : in  std_logic_vector (3 downto 0);
           affich : out  std_logic_vector (6 downto 0);
           an : out  std_logic_vector (3 downto 0));
end afficheur;

architecture Behavioral of afficheur is

component DECOD
    Port ( Data : in  std_logic_vector (3 downto 0);
           seg : out  std_logic_vector (6 downto 0)
			  );
end component;

begin

etiq: DECOD port map (data,affich);
an<="1110";

end Behavioral;

