LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


ENTITY parite IS
GENERIC(
N: INTEGER:=8
);
PORT(
--ENTREES
REG: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);--REGISTRE  8 bits a analyser parité répresenté par une  SWITCH Physique  SW
--SORTIES
S: OUT STD_LOGIC--Sortie du LED parité  "0"=pair   "1"=impair
);
END parite;


ARCHITECTURE arch4 OF parite IS  
SIGNAL SS:    STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

PROCESS(REG)
VARIABLE COMPT :UNSIGNED(3 DOWNTO 0);
BEGIN
COMPT:="0000";
FOR i IN  0 TO N-1 LOOP--Scrutin sur tous les 8 bits Debut=0 Fin=N-1
IF(REG(i)='0') THEN--Condition pour compter le nombres de ZEROS dasn le registre REG 
COMPT:=COMPT+1;
ELSE
COMPT:=COMPT;
END IF;
END LOOP ;
SS<=STD_LOGIC_VECTOR(COMPT);--Conversion Unsigned a STD_LOGIC_VECTOR
END PROCESS;
S<=SS(0);--Transferance de BIT 0 du  SIGNAL SS qui indique ma PARITE vers les SORTIE  S=STD_LOGIC
END arch4;
