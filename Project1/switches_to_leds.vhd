library ieee;
use ieee.std_logic_1164.all;

entity switches_to_leds is
	port (
		i_Switch_1 : in std_logic;
		i_Switch_2 : in std_logic;
		i_Switch_3 : in std_logic;
		i_Switch_4 : in std_logic;
		o_led_1 : out std_logic;
		o_led_2 : out std_logic;
		o_led_3 : out std_logic;
		o_led_4 : out std_logic
		);
end entity switches_to_leds;

architecture RTL of switches_to_leds is
begin

	o_LED_1 <= i_Switch_1;
	o_LED_2 <= i_Switch_2;
	o_LED_3 <= i_Switch_3;
	o_LED_4 <= i_Switch_4;

end architecture RTL;		

