LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY combonationLock IS
    PORT (
        PIN_Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        Unlock    : OUT STD_LOGIC
    );
END combonationLock;

ARCHITECTURE Behavioral OF combonationLock IS
BEGIN
    Unlock <= '1' WHEN PIN_Input = "1011" ELSE '0';
END Behavioral;
