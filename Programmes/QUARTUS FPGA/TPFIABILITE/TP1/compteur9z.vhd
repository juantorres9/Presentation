LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY compteur9z IS
PORT(
iCLK_50:      IN STD_LOGIC;--Horloge de 50MHZ
iCLK_50_2:      IN STD_LOGIC;--Horloge2 de 50MHZ
oHEX0_D:      OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
GPIO_1 :      OUT STD_LOGIC_VECTOR(1 DOWNTO 0);--GPIO PIN  de  signal cachée 
oLEDG  :      OUT STD_LOGIC_VECTOR(1 DOWNTO 0)--LED PIN  de  signal cachée
);
END compteur9z;


ARCHITECTURE arch1 OF compteur9z IS  
SIGNAL compt50 : INTEGER  RANGE 0 to 500000000; --Valeur de Compteur50 MHZ
SIGNAL compt10 : UNSIGNED(3 DOWNTO 0);--Valeur en Binaire Unsigned  Compteur9 0000 a 1111
SIGNAL x       : STD_LOGIC;--Signal cachée  sans sortie Physique 
COMPONENT afficheur IS
PORT (
SW:  IN STD_LOGIC_VECTOR(3 DOWNTO 0);--SWITCH physique de 0000 a 1111
HEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)--Sorties physiques ver Afficheur
);
END COMPONENT;
BEGIN

PROCESS
BEGIN
WAIT UNTIL iCLK_50'EVENT AND iCLK_50='1';--Repetition Cyclique 1/50MHZ
--DIVISEUR FREQUENCE -----------------------------------------
IF(compt50<10)THEN--Le valeur original doit etre 49999999
compt50<=compt50+1;
ELSE
compt50<=0;
IF(compt10<9)THEN--Comptage Inferiur à 9 car le resultat s'attend en 8+1=9
compt10<=compt10+1;
--SIGNAL CACHEE-------------------------------------------------
IF((compt10>3)AND(compt10<8))THEN
x<='1';
ELSE
x<='0';
END IF;
----------------------------------------------------------------
ELSE 
compt10<="0000";
END IF;
END IF;





END PROCESS;
GPIO_1(0)<=x;
oLEDG (0)<=x;
instance1:afficheur PORT MAP(SW=> STD_LOGIC_VECTOR(compt10) ,HEX=>oHEX0_D);
END arch1;

