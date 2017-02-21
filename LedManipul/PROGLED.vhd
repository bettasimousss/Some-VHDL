----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:37:26 03/10/2016 
-- Design Name: 
-- Module Name:    ProgLed - Behavioral 
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

entity ProgLed is
    Port ( data : in  std_logic_vector (6 downto 0);
	        con : in  std_logic;
			  LED : out std_logic_vector (6 downto 0);
			  affich : out std_logic_vector (6 downto 0);
			  an : out std_logic_vector (3 downto 0)
	 );
end ProgLed;

architecture Behavioral of ProgLed is 
begin  

a:process(data,con)
begin
    
   if con='0' then -- afficher sur les LED
      an<="1111";
		LED<=data;
   else  -- afficher sur segments
      an<="1110";
		affich<=data;
		LED<="0000000";
   end if;
end process;

end Behavioral;

