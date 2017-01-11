

delimitateur='	';
lignetitre=1;
c200=importdata('c2.txt',delimitateur,lignetitre);
c400=importdata('c4.txt',delimitateur,lignetitre);
c600=importdata('c6.txt',delimitateur,lignetitre);
c800=importdata('c8.txt',delimitateur,lignetitre);

x2=c200.data(:,1);
y2=c200.data(:,2);

x4=c400.data(:,1);
y4=c400.data(:,2);

x6=c600.data(:,1);
y6=c600.data(:,2);

x8=c800.data(:,1);
y8=c800.data(:,2);

figure(1)

plot(x2,y2,x4,y4,x6,y6,x8,y8);
xlabel('Largueur mts') % x-axis label
ylabel('C mol/m^3') % y-axis label
legend('coupe= 200um','coupe=400um','coupe=600um','coupe=800um')
grid on 

figure(2)
subplot(2,2,1)
plot(x2,y2,'--r');
xlabel('Largueur mts') % x-axis label
ylabel('C mol/m^3') % y-axis labe
title('Concentration vs Largueur  coupe= 200um')
grid on
subplot(2,2,2)
plot(x4,y4);
xlabel('Largueur mts') % x-axis label
ylabel('C mol/m^3') % y-axis labe
title('Concentration vs Largueur  coupe= 400um')
grid on
subplot(2,2,3)
plot(x6,y6,'*-c');
xlabel('Largueur mts') % x-axis label
ylabel('C mol/m^3') % y-axis labe
title('Concentration vs Largueur  coupe= 600um')
grid on
subplot(2,2,4)
plot(x8,y8,'*g');
xlabel('Largueur mts') % x-axis label
ylabel('C mol/m^3') % y-axis labe
title('Concentration vs Largueur  coupe= 800um')
grid on



x22=x2(80:120);
y22=y2(80:120);

x44=x4(80:120);
y44=y4(80:120);

x66=x6(80:120);
y66=y6(80:120);

x88=x8(80:120);
y88=y8(80:120);

figure(3)

plot(x22,y22,x44,y44,x66,y66,x88,y88);
xlabel('Largueur mts') % x-axis label
ylabel('C mol/m^3') % y-axis label
legend('coupe= 200um','coupe=400um','coupe=600um','coupe=800um')
grid on 
