function g=chargementMatrice(f);
fprintf('Matrice original  f  sera :\n');
f
fprintf('Matrice Coup� \n');
for i=1:4
   for n=2:5
    g(i,n-1)=f(i,n);
   end
end

