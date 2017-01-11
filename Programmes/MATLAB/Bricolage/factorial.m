function result = factorial(n)

if (n<=1)
    result=1;
else
    result=n;
for (k=n:-1:2)
result=result*(k-1);
end
fprintf('Bonjour,le resultata de factoriel de n est ::\n');
result
end