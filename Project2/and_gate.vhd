library ieee;
use ieee.std_logic_ll64.all;

entity and_gate is

	port (
		i_Switch_1 : in std_logic;
		i_Switch_2 : in std_logic;
		o_LED_1 : out std_logic
		);

end entity and_gate;

architecture RTL of and_gate is

begin
	o_LED_1 <= i_Switch_1 and i_Switch_2;
end architecture RTL;