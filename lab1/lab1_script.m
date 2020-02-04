%-- 02/04/2020 12:38:55 PM --%
mkdir lab1
cd lab1
diary lab1_diary.m
Vm=[-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
plot(Vm, Im, 'o-')
% aprakstisim tos datus ar
% 2 kartas polinomu
% y = C1*x^2+C2*x+C3
% to koeficentus atradisim funkcija
% polyfit - polynomial fitting
% sitakse
% C = polyfit(x,y,N)
% N - polinoma karta
C = polyfit(Vm,Im,2)
% saformesim vektoru x ar sikaku soli
V = -1:0.01:3.2;
% aprekinasim y
I=C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
% atkartojam to pasu prieks 3 kartas polinomu
C = polyfit(Vm,Im,3)
I=C(1)*V.^3+C(2)*V.^2+C(3);
plot(Vm,Im,'o',V,I)
I=C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
plot(Vm,Im,'o',V,I)
% velreiz atkartosim
C = polyfit(Vm,Im,3)
% lai nerakstitu =C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
% izmantosim funkciju polyval - polinomial sintakse
% y = polyval(C,x)
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
% 4 kartas atkartosana
C = polyfit(Vm,Im,4)
I=C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(4);
plot(Vm,Im,'o',V,I)
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
I=C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(5);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,1)
I=C(1)*V+C(2);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,4)
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,1)
I = polyval(C,V);
%% Merijumu serijas
Vm=[-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7
0.9 1.8 2.6 3.3 4.5
1.0 2.0 2.4 3.4 4.3
0.8 1.9 2.5 3.5 4.6
0.9 2.0 2.3 3.1 4.4];
plot(Vm,Im,'o',V,I)
figure
plot(Vm,Im,'o-')
plot(Vm,Im','o-')
%% videjas vertibas atrasana
sum ([1 2 3 4 5])
sum ([1 2 ; 3 4 5])
sum ([1 2; 3 4 5])
sum ([1 2 ; 3 4])
Ivid = sum(Im)/5
Ivid = mean(Im)
%%
% videjai vertibai pielaikosim polinomu
C=polyfit(Vm,Ivid,4);
V=-1:0.01:3.2;
I=polyval(C,V);
% uzzimet 3 grafikus vienas asis
% Vm, Im ar 'o'
% Vm, Ivid ar '*'
% V,I ar '-'
plot(Vm,Im','o')
hold
plot(Vm,Ivid','*')
plot(V,I','-')
%%
% aprekinasim standartnovirzi
Istd=std(Im)
errorbar(Vm,Ivid,Istd)
hold of
hold off
errorbar(Vm,Ivid,Istd)
% meginasim tikt vala no lauzstas linijas
errorbar(Vm,Ivid,Istd,'.')
hold on
plot(V,I)
hold off
ls
%% datu iegusana no rasejuma
%% datu iegusana no rasejuma (skanetas bildes)
A = imread('bilde1.png');
B = imread('bilde2.png');
figure
figure(1),image(A)
figure(2),image(B)
figure(2),image([500,800],[0,1],B)
figure(2),image([500,800],[0,1]',B)
figure(2),image([500,800],[0,1],B)
get(gca,'YDir','normal')
set(gca,'YDir','normal')
figure(2),image([500,800],[1,0],B)
set(gca,'YDir','normal')
[x,y]=ginput(1)
[x,y]=ginput(10)
hold on
plot(x,y,'o')