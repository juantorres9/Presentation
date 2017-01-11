LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


--ENTITY
ENTITY alu IS
PORT(
--Entrées
CLK:        IN STD_LOGIC;--Horloge de 50MHZ
SELEC:      IN STD_LOGIC_VECTOR(1 DOWNTO 0);--2 Bits pour selection de operation SW[1]-SW[0]
A:          IN STD_LOGIC_VECTOR(2 DOWNTO 0);--3 Bits d'entrée  REG A: SW[4]-SW[2]
B:          IN STD_LOGIC_VECTOR(2 DOWNTO 0);--3 Bits d'entrée  REG A: SW[7]-SW[5]
--Sorties
LEDG:       OUT STD_LOGIC_VECTOR(3 downto 0);--4 Bits pour Visauliser les operation +Bit CARRY   
HEX0:       OUT STD_LOGIC_VECTOR(6 downto 0)-- AFFICHEUR  des 4 bits  en HEXA
);
END alu;



--ARCHITECTURE
ARCHITECTURE arch3 OF alu IS  
SIGNAL RESULTAT:  STD_LOGIC_VECTOR(3 downto 0);--SIGNAL sur 4 Bits pour representer les operations sur 3bits 

COMPONENT afficheur IS--Represent une  "CLASSE" qui me permettra de creer des Instancées
PORT (
SW:  IN STD_LOGIC_VECTOR (3 DOWNTO 0);--SWITCH physique de 0000 a 1111
HEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)--Sorties physiques ver Afficheur
);
END COMPONENT;
BEGIN

PROCESS
BEGIN 
WAIT UNTIL CLK'EVENT AND CLK= '1';--Repetition Cyclique 1/50MHZ

CASE SELEC  IS
WHEN "00" => 
RESULTAT  <='0'&(A AND B);
WHEN "01" =>
RESULTAT  <='0'&(A OR B);
WHEN "10" =>
RESULTAT  <=A&'0';
WHEN "11" =>
RESULTAT  <=STD_LOGIC_VECTOR(UNSIGNED('0'&A)+UNSIGNED(B));
WHEN OTHERS=>
RESULTAT <="0000";
END CASE;
END PROCESS;

AffichLEDS:afficheur PORT MAP(SW=> STD_LOGIC_VECTOR(RESULTAT) ,HEX=>HEX0);--Instance 1 de la CLASSE AFFICHEUR
LEDG<=RESULTAT;
END arch3;