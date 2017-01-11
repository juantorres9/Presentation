        \documentclass{article}
        \makeatletter
        \def\bezout#1#2{%
        	\bezout@i{#1}10{#2}01\bezout@ii
        	\ensuremath{#1\times\z@test\coeffA{(\coeffA)}\coeffA\z@test{#2}{}+#2\times\z@test\coeffB{(\coeffB)}\coeffB=\thePGCD}
        \def\bezout@i#1#2#3#4#5#6{%
        	\edef\reserved@a{\d@nxp\thePGCD{#1}\d@nxp\coeffA{#2}\d@nxp\coeffB{#3}%
        	\d@nxp\@r@{\number\numexpr#4}\d@nxp\coeffA@{\number\numexpr#5}\d@nxp\coeffB@{\number\numexpr#6}}%
        	\reserved@a}
        \def\bezout@ii{%
        	\unless\ifnum\@r@=\z@
         		\edef\@q{\numexpr(2*\z@test\thePGCD-{}\thePGCD-\z@test\@r@-{}\@r@+1)/(\z@test\thePGCD-{}2*\@r@)\relax}%
        		\bezout@i\@r@\coeffA@\coeffB@{\thePGCD-\@q*\@r@}{\coeffA-\@q*\coeffA@}{\coeffB-\@q*\coeffB@}\expandafter\bezout@ii
        	\fi}
        \def\d@nxp{\def\noexpand}
        \def\z@test#1#2#3{\ifnum#1<\z@#2\else#3\fi}
        \makeatother
        \begin{document}
        \'Egalit\'e de Bezout : \bezout{39}{15}
         
        Les coefficients sont $\coeffA${} et $\coeffB${} et le PGCD est $\thePGCD$.
        \bigskip
         
        \'Egalit\'e de Bezout : \bezout{1897}{879}
         
        Les coefficients sont $\coeffA${} et $\coeffB${} et le PGCD est $\thePGCD$.
        \end{document}

    Répondre avec citation Répondre avec citation   0  0
    04/09/2013, 08h22 #3
    Invité
    Invité(e)
    Par défaut

        Comme d'habitude, code impénétrable qu'il m'est inutile d'essayer de comprendre mais code qui fonctionne très bien.

        Juste une petite requete encore : les coefficients u et v s'affichent avant a et b alors que je voulais qu'il s'affichent après. J'ai eu beau modifier la ligne 5 (j'ai quand même compris que c'était là que se faisait l'affichage sans vraiment comprendre ce qui s'y passe), je n'arrive pas à obtenir ce que je veux. 

    Répondre avec citation Répondre avec citation   0  0
    04/09/2013, 12h37 #4
    Invité
    Invité(e)
    Par défaut

        Voici la ligne 5 correctement modifiée :

        Code : 	Sélectionner tout - Visualiser dans une fenêtre à part

        \ensuremath{#1\times\z@test\coeffA{(\coeffA)}\coeffA\z@test{#2}{}+#2\times\z@test\coeffB{(\coeffB)}\coeffB=\thePGCD}

    Répondre avec citation Répondre avec citation   0  0
    05/09/2013, 07h06 #5
    Invité
    Invité(e)
    Par défaut

        Merci, j'avais écrit un truc approchant, mais je m'étais perdu en route et ça ne fonctionnaite pas. 

    Répondre avec citation Répondre avec citation   0  0

