function result=subtype(in,per)
in_taille=size(in);
per_taille=size(per);

in_max=prod(size(in));
per_max=prod(size(per));

if(in_max==per_max)
    in_v=reshape(in',1,in_max);
    per_v=reshape(per',1,in_max);
    per_v=per_v+1;
    
    out_v=[];
    for(j=1:in_max)
        for(k=1:in_max)
         if(per_v(1,k)==j)
             out_v(1,j)=in_v(1,k);
         else
             nada=0;
         end
        end
    end
    fprintf('Bonjour le vecteur out vaut \n');
    out_v
    
    result=[];
    for(s=1:in_taille(1,1))
        for(t=1:in_taille(1,2))

            result(s,t)=out_v(1,t+in_taille(1,2)*(s-1));
        end
    end

    fprintf('*************************\n');
    fprintf('La matrice result de la fonction Subtype vaut \n');
    result
end
    