LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY compteur59 IS
PORT(
--ENTREES
SELECTOR: IN STD_LOGIC_VECTOR(1 DOWNTO 0);--Selector de vitesse de Compteur 59
CLK     : IN STD_LOGIC;
--SORTIES
oHEX0_D : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);--Afficheur 7 Segment  0-9
oHEX1_D : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)--Afficheur 7 Segment  0-5
);
END compteur59;


ARCHITECTURE arch2 OF compteur59 IS  
SIGNAL compt50 :  INTEGER  RANGE 0 to 500000000; --Valeur de Compteur50 MHZ
SIGNAL compt10 :  UNSIGNED(3 DOWNTO 0);--Valeur en Binaire Unsigned  Compteur9 0000 a 1001(9)
SIGNAL compt5  :  UNSIGNED(2 DOWNTO 0);--Valeur en Binaire Unsigned 000 a 101(5) 


COMPONENT afficheur IS--Represent une  "CLASSE" qui me permettra de creer des Instancées
PORT (
SW:  IN STD_LOGIC_VECTOR (3 DOWNTO 0);--SWITCH physique de 0000 a 1111
HEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)--Sorties physiques ver Afficheur
);
END COMPONENT;
BEGIN

PROCESS
VARIABLE VITESSE : INTEGER RANGE 0 TO 50000000;
BEGIN
WAIT UNTIL CLK'EVENT AND CLK= '1';--Repetition Cyclique 1/50MHZ


--Commande pour gerer la Vitesse avec une  ENTREE  IN "SELECTOR"
C1: CASE SELECTOR IS 
WHEN "00"=>
VITESSE:=49999999;
WHEN "01"=>
VITESSE:=19;
WHEN "10"=>
VITESSE:=9;
WHEN OTHERS =>
VITESSE:=5;
END CASE;


--Comptage 59 TOTAL 
IF(compt50<VITESSE)THEN--Le valeur original doit etre 49999999
compt50<=compt50+1;
ELSE
compt50<=0;
  IF(compt10<9)THEN--Comptage Inferiur à 9 car le resultat s'attendre en 8+1=9
  compt10<=compt10+1;
  ELSE 
  compt10<="0000";
     IF(compt5<5)THEN
     compt5<=compt5+1;
     ELSE
     compt5<="000";
     END IF;
  END IF;
END IF;

END PROCESS;
Afficheur9:afficheur PORT MAP(SW=> STD_LOGIC_VECTOR(compt10) ,HEX=>oHEX0_D);--Instance 1 de la CLASSE AFFICHEUR
Afficheur5:afficheur PORT MAP(SW=> STD_LOGIC_VECTOR("0"&compt5) ,HEX=>oHEX1_D);--Instance 2 de la CLASSE AFFICHEUR
END arch2;


