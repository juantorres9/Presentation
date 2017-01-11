LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY compteur9 IS
PORT(
CLK:      IN STD_LOGIC;--Horloge de 50MHZ
HEXclone: OUT STD_LOGIC_VECTOR(6 downto 0)
);
END compteur9;


ARCHITECTURE arch1 OF compteur9 IS  
SIGNAL compt50 : INTEGER  RANGE 0 to 500000000; --Valeur de Compteur50 MHZ
SIGNAL compt10 :  UNSIGNED(3 downto 0);--Valeur en Binaire Unsigned  Compteur9 0000 a 1111

COMPONENT afficheur IS
PORT (
SW:  IN STD_LOGIC_VECTOR(3 downto 0);--SWITCH physique de 0000 a 1111
HEX: OUT STD_LOGIC_VECTOR(6 downto 0)--Sorties physiques ver Afficheur
);
END COMPONENT;
BEGIN

PROCESS
BEGIN
WAIT UNTIL CLK'EVENT AND CLK= '1';--Repetition Cyclique 1/50MHZ
IF(compt50<4)THEN--Le valeur original doit etre 49999999
compt50<=compt50+1;
ELSE
compt50<=0;
IF(compt10<9)THEN--Comptage Inferiur à 9 car le resultat s'attendre en 8+1=9
compt10<=compt10+1;
ELSE 
compt10<="0000";
END IF;
END IF;





END PROCESS;
instance1:afficheur PORT MAP(SW=> STD_LOGIC_VECTOR(compt10) ,HEX=>HEXclone);
END arch1;

