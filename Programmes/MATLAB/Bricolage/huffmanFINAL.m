clc
clear all;
fprintf('Bonjour, Veuillez ecrire le message à  compresser et appuyer enter\n');

M = input('ecrire ici: ','s')
Moriginal=M;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Preparation de Données %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% M='réforme des rythmes scolaires en 2014'; % Message a coder en Huffman 

M= regexprep(M,'(?:é|è|ê)','e'); %Normalisation character Speciaux
M=upper(M);    %Mettre en Majuscule tout les letres de message 

space= strfind(M,' ');  %identifier les space dans  le message

M(space)=[];    %suprimer les spaces

x2=unique(M);
x=unique(M);    %tableau unique de characters repetées
p=histc(M,x);   %Nombre d'aparition de chaque lettre au niveau du message
 
[prob,IX] =sort(p,'descend');%classifier de Plus Grande au plus Petit les probabilités
x=x(IX); %Rearranger  le tableau par rapport au Plus grande au plus petit 
total=sum(prob); %somme de  probabilités 
probC=prob/sum(prob);


%%%%%%%%%%%%%%%%%Codage Matrice position  et  Probabilité%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
long=length(prob);
a=prob';
b=[1:long]';

%Manipulation de matrices

for(n=2:long-1)%column n(ligne)x m(column)
 prob=a(:,n-1);
 prob(long-n+1)=prob(long-n+1)+prob(long-n+2);
 prob(long-n+2)=0;
 [prob,index]=sort(prob,'descend');
 index(long-n+2:long)=0;
 a=[a,prob];
 b=[b,index];
end
%Resultat a et b 
 fprintf(' Matrice de Probabilité HUFFMAN Resultant \n'); 
a
 fprintf(' Matrice de Position  HUFFMAN Resultant \n'); 
b

%%%%%%%%%%%%%%Creation de Matrice de Code Huffman Preliminaire %%%%%%%%%%%%
z=cell(long,long-1);
z{1,long-1}='0';
z{2,long-1}='1';
  
 it=long-2:-1:1;%Column
    jt=1:long-it;   %Ligne
    
    for (it=long-2:-1:1)
        for  (jt=1:long-it)
          z{jt,it}  ;
        end
    end
      
    proba=long;
    l=1;
    
  %%%%%%%%%%%%%%%%%%%%%%%Development  et Remplissage de Matrice Code HUFFMAN %%%%%%D%%%%%%%I%%%%U%%%%%%E%%
   for(c=proba-2:-1:1)
       
         for (k=1:1:proba-c-1);
         
             for(i=1:1:proba-c)  
                if(b(i,c+1)==k)
                    z{k,c}=z{i,c+1};
                end
             end
           end
           
       
       
       for (k2=proba-c:1:proba-c);
           
          for(i2=1:1:proba-c)
              for(i2=1:1:proba-c)
                  if(b(i2,c+1)==k2)
                      z{k2,c}=strjoin({z{i2,c+1},'0'});
                      z{k2+1,c}=strjoin({z{i2,c+1},'1'});
                  end
              end
          end
       end
   end
   
   %Matrice HUFFMAN Resultant
   
 fprintf(' Matrice HUFFMAN Resultant \n'); 
   z
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%Partie III  CELL ARRAY Alpha%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %Recuperation de Vecteur Ligne  et   Vecteur Column 
   
   z2=cell(1,proba);
   
for r=1:proba;
 z2{1,r}=z{r,1};
end

 %Enlevement des spaces depuis notre  cell array z2
 for r2=1:proba
     z2{1,r2}=z2{1,r2}(~isspace(z2{1,r2}));
 end  
    
 
 %%Recuperation vecteur Ligne Lettres
 
 z3=cell(1,proba);
 for r2=1:proba
     z3{1,r2}=x(1,r2);
 end
 
 
 alpha=cell(1,2);
 alpha{1,1}=z3;
 alpha{1,2}=z2;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Partie IV  CODE C du Message M %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
long=length(alpha{1,1}); 
longM=length(M);% Nombre de Letres par tout le message a coder
 
M2=cell(1,length(M));
z4=cell(1,length(M));

for(i=1:length(M))
    M2{1,i}=M(1,i);
end

%Creation du vecteur ligne z4 qui contienet le Code C
for i=1:longM;
   for s=1:long
      if(M2{1,i}==z3{1,s})
        z4{1,i}= z2{1,s} ;
     
       end
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Presentation Resultat%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Mise en place du code dans une seule   string 
 C2=strjoin(z4) ;    C=C2(~isspace(C2));
  
  fprintf('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$RESULTAT$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n\n');  

  fprintf('Pour visualiser le code compressé tapez : C\n');   
  fprintf('Pour visualiser le Lettres du Message  tappez : alpha{1} \n'); 
  fprintf('Pour visualiser le Code associé à chaque Lettre   tappez : alpha{2} \n\n');   
 
   fprintf('Le Message codé a été le suivante :\n'); 
   Moriginal
  
 fprintf('Code Huffman \n');  
 C
 fprintf('alpha{1} \n'); 
 alpha{1}
 fprintf('alpha{2} \n'); 
 alpha{2}
 
 