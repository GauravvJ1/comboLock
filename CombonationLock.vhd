
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY combonationLock IS
    PORT (
        PIN_Input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        Unlock    : OUT STD_LOGIC
    );
END combonationLock;

ARCHITECTURE Behavioral OF combonationLock IS

    SIGNAL Match1, Match2, Match3, Match4 : STD_LOGIC;

BEGIN

    -- First digit: 4 (0100)
    Match1 <= (NOT PIN_Input(15)) AND
               PIN_Input(14) AND
              (NOT PIN_Input(13)) AND
              (NOT PIN_Input(12));

    -- Second digit: 8 (1000)
    Match2 <= PIN_Input(11) AND
             (NOT PIN_Input(10)) AND
             (NOT PIN_Input(9)) AND
             (NOT PIN_Input(8));

    -- Third digit: 3 (0011)
    Match3 <= (NOT PIN_Input(7)) AND
              (NOT PIN_Input(6)) AND
               PIN_Input(5) AND
               PIN_Input(4);

    -- Fourth digit: 2 (0010)
    Match4 <= (NOT PIN_Input(3)) AND
              (NOT PIN_Input(2)) AND
               PIN_Input(1) AND
              (NOT PIN_Input(0));

    -- Unlock when all four digits match
    Unlock <= Match1 AND Match2 AND Match3 AND Match4;

END Behavioral;
