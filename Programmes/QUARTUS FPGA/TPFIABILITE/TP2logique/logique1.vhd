LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY logique1 IS
PORT(
--ENTREES
iSW:          IN STD_LOGIC_VECTOR(3 DOWNTO 0);-- iSW(4)=ERROR   iSW(3)=MODE    (iSW=2-0)C2-C1-C0   
iCLK_50:      IN STD_LOGIC;
oHEX0_D:      OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
--SORTIES
oLEDG:  INOUT STD_LOGIC;--LED ETAT DE SORTIE
oLEDR:  OUT STD_LOGIC----LED PASS/FAIL
);
END logique1;




ARCHITECTURE arch2 OF logique1 IS 
SIGNAL compt50 : INTEGER  RANGE 0 to 500000000; --Valeur de Compteur50 MHZ
SIGNAL compt10 :  UNSIGNED(3 downto 0);--Valeur en Binaire Unsigned  Compteur9 0000 a 1111
SIGNAL FF:     STD_LOGIC;--LED ETAT DE SORTIE
SIGNAL LEDRR:  STD_LOGIC;----LED PASS/FAIL

COMPONENT afficheur IS
PORT (
SW:  IN STD_LOGIC_VECTOR(3 downto 0);--SWITCH physique de 0000 a 1111
HEX: OUT STD_LOGIC_VECTOR(6 downto 0)--Sorties physiques ver Afficheur
);
END COMPONENT;
BEGIN

PROCESS
VARIABLE LEDG:  STD_LOGIC;--LED ETAT DE SORTIE
VARIABLE LEDR:  STD_LOGIC;----LED PASS/FAIL
VARIABLE A:     STD_LOGIC;----HABILITER Compt10
VARIABLE F:     STD_LOGIC;
--VARIABLE ERROR: STD_LOGIC;--ERREUR DE C(3)
VARIABLE C:     STD_LOGIC_VECTOR(2 DOWNTO 0);--EXECUTEUR du  FONCTION Logique
--VARIABLE MODE:  STD_LOGIC;----AMANUEL/TEST AUTOMATIQUE
BEGIN


WAIT UNTIL iCLK_50'EVENT AND iCLK_50= '1';--Repetition Cyclique 1/50MHZ
--ERROR:=iSW(4);
IF(iSW(3)='0')THEN
A:='1';--RESET ENABLE  TEST AUTOMATIQUE 
LEDR:='0';--RESET LED PASS/FAIL 
C:=iSW(2 DOWNTO 0);
ELSIF(iSW(3)='1') THEN 



--VECTEURS DE TEST
IF(compt50<49999999)THEN--Le valeur original doit etre 49999999
compt50<=compt50+1;
ELSE
compt50<=0;
   IF((compt10<9)AND (A='1'))THEN--Comptage Inferiur à 9 car le resultat s'attendre en 8+1=9
   compt10<=compt10+1;
      IF(compt10="0001") THEN 
      C:="000";--VECTEUR DE TEST 1
      LEDG:=oLEDG;
         IF(LEDG='1') THEN 
         LEDR:='0';--Eteindre  LEDR=0 si PASS 
         ELSE
         LEDR:='1';--Allumer  LEDR=1 si FAIL 
         END IF;
	   END IF;
		

      IF(compt10="0010") THEN 
      C:="001";--VECTEUR DE TEST 2
      LEDG:=oLEDG;
         IF(LEDG='1') THEN 
         LEDR:='0';--Eteindre  LEDR=0 si PASS 
         ELSE
         LEDR:='1';--Allumer  LEDR=1 si FAIL 
         END IF;
	   END IF;
		
		
		IF(compt10>="0011") THEN
		A:='0';
		compt10<="0000";
      END IF;		
    ELSE    
    END IF;
END IF;
ELSE
END IF;

F:=((C(0)OR C(1))AND C(2));--OR iSW(4);
FF<=F;--LED ETAT DE SORTIE
LEDRR<=LEDR;----LED PASS/FAIL
END PROCESS;
oLEDG<=FF;--LED ETAT DE SORTIE
oLEDR<=LEDRR;----LED PASS/FAIL
instance1:afficheur PORT MAP(SW=> STD_LOGIC_VECTOR(compt10) ,HEX=>oHEX0_D);
END arch2;
