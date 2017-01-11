
#include <p16f877.inc>   ;

    org   0x00     ; A l'initialisation, le µC vient lire ici
    GOTO  debut  ; aller à l'étiquette debut

    org   0x04      ; vecteur d'interruption (nous verrons plus tard)

    org   0x06     ; Début du programme
debut      ; c'est ici que commence notre programme principal

    MOVLW H'0E'; on charge W avec la valeur 0E exprimée en hexadécimal.
    ADDLW H'5' ; on ajoute à W, la valeur 5 exprimée en hexadécimal

    end       ; directive de fin de programme


