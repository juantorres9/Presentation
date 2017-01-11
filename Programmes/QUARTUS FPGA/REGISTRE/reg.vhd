LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


ENTITY reg IS
PORT(
--ENTREES
REG: IN STD_LOGIC_VECTOR(7 DOWNTO 0);--REGISTRE  8 bits a analyser parité répresenté par une  SWITCH Physique  SW
--SORTIES
RESULT:OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
S:     OUT STD_LOGIC--Sortie du LED parité  "0"=pair  et "1"=impair
);
END reg;


ARCHITECTURE arch4 OF reg IS  
BEGIN
PROCESS(REG)
BEGIN 
IF(REG(1)='1')THEN--REG sur 8 bit 00000010 sera la condition pour changer
RESULT<="11110000";
ELSIF (REG(3 DOWNTO 0)="1101")THEN--REG sur 8 bit 00001101 sera la condition pour changer
RESULT<="10000001";
ELSE
RESULT(7 DOWNTO 4)<="0000";--REG sur 4bits MSB sera 0000
RESULT(3 DOWNTO 0)<="1111";--REG sur 4  bits LSB sera 1111
END IF;

END PROCESS;
END arch4;