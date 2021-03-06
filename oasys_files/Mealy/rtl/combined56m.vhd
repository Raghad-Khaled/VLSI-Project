LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Combined56m IS
  PORT (
    clk : IN STD_LOGIC; --- clock signal
    Rst : IN STD_LOGIC; -- reset input
    SFD : IN STD_LOGIC;
    SRD : IN STD_LOGIC;
    SW : IN STD_LOGIC;
    SFA : IN STD_LOGIC;
    ST : IN STD_LOGIC_VECTOR (6 DOWNTO 0);
    fdoor : OUT STD_LOGIC;
    rdoor : OUT STD_LOGIC;
    winbuzz : OUT STD_LOGIC;
    alarmbuzz : OUT STD_LOGIC;
    heater : OUT STD_LOGIC;
    cooler : OUT STD_LOGIC;
    display : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
  );
END Combined56m;

ARCHITECTURE Behavioral OF Combined56m IS
  TYPE MOORE_FSM IS (Zero, One, Two, Three, Four, Five, six); --Five heater, Six cooler
  SIGNAL current_state, next_state : MOORE_FSM;

BEGIN
  -- Sequential memory of the VHDL MOORE FSM Sequence Detector
  PROCESS (Clk)
  BEGIN
    IF (rising_edge(Clk)) THEN
	IF (Rst = '1') THEN
      		current_state <= Zero;
	ELSE
      		current_state <= next_state;
	END IF;
    END IF;
  END PROCESS;
  -- Next state logic of the VHDL MOORE FSM Sequence Detector
  -- Combinational logic
  PROCESS (current_state, SFD, SRD, SFA, SW, ST)
  BEGIN
    CASE(current_state) IS

      WHEN Zero =>
      IF (SFD = '1') THEN
        next_state <= One;
      ELSIF (SRD = '1') THEN
        next_state <= Two;
      ELSIF (SFA = '1') THEN
        next_state <= Three;
      ELSIF (SW = '1') THEN
        next_state <= Four;
      ELSIF (ST < "0110010") THEN
        next_state <= Five;
      ELSIF (ST > "1000110") THEN
        next_state <= Six;
      ELSE
        next_state <= Zero;
      END IF;

      WHEN One =>
      IF (SRD = '1') THEN
        next_state <= Two;
      ELSIF (SFA = '1') THEN
        next_state <= Three;
      ELSIF (SW = '1') THEN
        next_state <= Four;
      ELSIF (ST < "0110010") THEN
        next_state <= Five;
      ELSIF (ST > "1000110") THEN
        next_state <= Six;
      ELSIF (SFD = '1') THEN
        next_state <= One;
      ELSE
        next_state <= Zero;
      END IF;

      WHEN Two =>
      IF (SFA = '1') THEN
        next_state <= Three;
      ELSIF (SW = '1') THEN
        next_state <= Four;
      ELSIF (ST < "0110010") THEN
        next_state <= Five;
      ELSIF (ST > "1000110") THEN
        next_state <= Six;
      ELSIF (SFD = '1') THEN
        next_state <= One;
      ELSIF (SRD = '1') THEN
        next_state <= Two;
      ELSE
        next_state <= Zero;
      END IF;

      WHEN Three =>
      IF (SW = '1') THEN
        next_state <= Four;
      ELSIF (ST < "0110010") THEN
        next_state <= Five;
      ELSIF (ST > "1000110") THEN
        next_state <= Six;
      ELSIF (SFD = '1') THEN
        next_state <= One;
      ELSIF (SRD = '1') THEN
        next_state <= Two;
      ELSIF (SFA = '1') THEN
        next_state <= Three;
      ELSE
        next_state <= Zero;
      END IF;

      WHEN Four =>
      IF (ST < "0110010") THEN
        next_state <= Five;
      ELSIF (ST > "1000110") THEN
        next_state <= Six;
      ELSIF (SFD = '1') THEN
        next_state <= One;
      ELSIF (SRD = '1') THEN
        next_state <= Two;
      ELSIF (SFA = '1') THEN
        next_state <= Three;
      ELSIF (SW = '1') THEN
        next_state <= Four;
      ELSE
        next_state <= Zero;
      END IF;

      WHEN Five =>
      IF (SFD = '1') THEN
        next_state <= One;
      ELSIF (SRD = '1') THEN
        next_state <= Two;
      ELSIF (SFA = '1') THEN
        next_state <= Three;
      ELSIF (SW = '1') THEN
        next_state <= Four;
      ELSIF (ST < "0110010") THEN
        next_state <= Five;
      ELSIF (ST > "1000110") THEN
        next_state <= Six;
      ELSE
        next_state <= Zero;
      END IF;

      WHEN Six =>
      IF (SFD = '1') THEN
        next_state <= One;
      ELSIF (SRD = '1') THEN
        next_state <= Two;
      ELSIF (SFA = '1') THEN
        next_state <= Three;
      ELSIF (SW = '1') THEN
        next_state <= Four;
      ELSIF (ST < "0110010") THEN
        next_state <= Five;
      ELSIF (ST > "1000110") THEN
        next_state <= Six;
      ELSE
        next_state <= Zero;
      END IF;

    END CASE;
  END PROCESS;
  -- Output logic of the VHDL MOORE FSM Sequence Detector
  PROCESS (current_state)
  BEGIN
        fdoor <= '0';
        rdoor <= '0';
        winbuzz <= '0';
        alarmbuzz <= '0';
        heater <= '0';
        cooler <= '0';
    CASE current_state IS
      WHEN Zero =>
        display <= "000";
      WHEN One =>
        fdoor <= '1';
        display <= "001";
      WHEN Two =>
        rdoor <= '1';
        display <= "010";
      WHEN Three =>
        alarmbuzz <= '1';
        display <= "011";
      WHEN Four =>
        winbuzz <= '1';
        display <= "100";
      WHEN Five =>
        heater <= '1';
        display <= "101";
      WHEN Six =>
        cooler <= '1';
        display <= "110";
    END CASE;
  END PROCESS;
END Behavioral;
