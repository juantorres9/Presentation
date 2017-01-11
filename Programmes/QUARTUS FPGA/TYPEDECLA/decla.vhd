LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


ENTITY reg IS
GENERIC(
N: INTEGER RANGE 0 TO 5:=4 
);

PORT(
--ENTREES
REG: IN STD_LOGIC_VECTOR(7 DOWNTO 0);--REGISTRE  8 bits a analyser parité répresenté par une  SWITCH Physique  SW
--SORTIES
RESULT:OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
S:     OUT STD_LOGIC--Sortie du LED parité  "0"=pair  et "1"=impair
);
END reg;