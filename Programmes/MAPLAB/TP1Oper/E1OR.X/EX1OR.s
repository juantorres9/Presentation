
#include <p16f877.inc>   ;

    org   0x00     ; A l'initialisation, le �C vient lire ici
    GOTO  debut  ; aller � l'�tiquette debut

    org   0x04      ; vecteur d'interruption (nous verrons plus tard)

    org   0x06     ; D�but du programme
debut      ; c'est ici que commence notre programme principal

    MOVLW H'0E'; on charge W avec la valeur 0E exprim�e en hexad�cimal.
    ADDLW H'5' ; on ajoute � W, la valeur 5 exprim�e en hexad�cimal

    end       ; directive de fin de programme


