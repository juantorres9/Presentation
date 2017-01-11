
%Function calculH(p) pour calculer l entropie H(p) et la Taille K de
%Alphabet 

%input
%Probabilite de p comme vecteur LIGNE , Ex: P=[0.1 0.2 0.3 0.3 0.1]
%Output
%Hp,K
%POUR appeler la fonction utiliser!!!===>  [Hp,k]=calculHP(p)
function [Hp,K]= calculHP(p)

for n=1:1:length(p)
    A(n)=p(n)*log2(p(n));
    B(n)=p(n);    
end 
disp('Entropie vaut :')
Hp= -1*sum(A)/sum(B);%%Entropie de l'Alphabet 
disp('La Taille de lAlphabet K:')
K=length(p); %%Taille de l alphabet K 

end





