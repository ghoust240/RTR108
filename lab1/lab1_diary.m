	Classroom License -- for classroom instructional use only.

>> mkdir lab1
>> cd lab1
>> diary lab1_diary.m
>> Vm=[-1 0.3 1.5 2.5 3.2];
>> Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
>> plot(Vm, Im, 'o-')
>> % aprakstisim tos datus ar
>> % 2 kartas polinomu
>> % y = C1*x^2+C2*x+C3
>> % to koeficentus atradisim funkcija
>> % polyfit - polynomial fitting
>> % sitakse
>> % C = polyfit(x,y,N)
>> % N - polinoma karta
>> C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

>> % saformesim vektoru x ar sikaku soli
>> V = -1:0.01:3.2;
>> % aprekinasim y
>> I=C(1)*V.^2+C(2)*V+C(3);
>> plot(Vm,Im,'o',V,I)
>> % atkartojam to pasu prieks 3 kartas polinomu
>> C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

>> I=C(1)*V.^3+C(2)*V.^2+C(3);
>> plot(Vm,Im,'o',V,I)
>> plot(Vm,Im,'o',V,I)
>> I=C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
>> plot(Vm,Im,'o',V,I)
>> % velreiz atkartosim
>> C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

>> % lai nerakstitu I = C()
>> % lai nerakstitu =C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
>> % izmantosim funkciju polyval - polinomial sintakse
>> % y = polyval(C,x)
>> I = polyval(C,V);
>> plot(Vm,Im,'o',V,I)
>> % 4 kartas atkartosana
>> C = polyfit(Vm,Im,4)

C =

   -0.0001    0.0004   -0.0006    0.0000    0.0022

>> I=C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(4);
>> plot(Vm,Im,'o',V,I)
>> I = polyval(C,V);
>> plot(Vm,Im,'o',V,I)
>> I=C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(5);
>> plot(Vm,Im,'o',V,I)
>> C = polyfit(Vm,Im,1)

C =

    0.0007    0.0017

>> I=C(1)*V+C(2);
>> plot(Vm,Im,'o',V,I)
>> C = polyfit(Vm,Im,4)

C =

   -0.0001    0.0004   -0.0006    0.0000    0.0022

>> I = polyval(C,V);
>> plot(Vm,Im,'o',V,I)
>> C = polyfit(Vm,Im,1)

C =

    0.0007    0.0017

>> I = polyval(C,V);
>> %% Merijumu serijas
>> Vm=[-1 0.3 1.5 2.5 3.2];
>> Im = [1.1 2.2 2.1 3.2 4.7
         0.9 1.8 2.6 3.3 4.5
         1.0 2.0 2.4 3.4 4.3
         0.8 1.9 2.5 3.5 4.6
         0.9 2.0 2.3 3.1 4.4];
>> plot(Vm,Im,'o',V,I)
>> figure
>> plot(Vm,Im,'o-')
>> plot(Vm,Im,'o-')
>> plot(Vm,Im','o-')
>> %% videjas vertibas atrasana
>> sum ([1 2 3 4 5])

ans =

    15

>> sum ([1 2 ; 3 4 5])
Dimensions of arrays being concatenated are not consistent.
 
>> sum ([1 2; 3 4 5])
Dimensions of arrays being concatenated are not consistent.
 
>> sum ([1 2 ; 3 4])

ans =

     4     6

>> Ivid = sum(Im)/5

Ivid =

    0.9400    1.9800    2.3800    3.3000    4.5000

>> Ivid = mean(Im)

Ivid =

    0.9400    1.9800    2.3800    3.3000    4.5000

>> %%
>> % videjai vertibai pielaikosim polinomu
>> C=polyfit(Vm,Ivid,4);
>> V=-1:0.01:3.2;
>> I=polyval(C,V);
>> % uzzimet 3 grafikus vienas asis
>> % Vm, Im ar 'o'
>> % Vm, Ivid ar '*'
>> % V,I ar '-'
>> plot(Vm,Im','o')
>> hold
Current plot held
>> plot(Vm,Ivid','*')
>> plot(V,I','-')
>> %%
>> % aprekinasim standartnovirzi
>> Istd=std(Im)

Istd =

    0.1140    0.1483    0.1924    0.1581    0.1581

>> errorbar(Vm,Ivid,Istd)
>> hold of
Error using hold (line 83)
Unknown command option.
 
>> hold off
>> errorbar(Vm,Ivid,Istd)
>> % meginasim tikt vala no lauzstas linijas
>> errorbar(Vm,Ivid,Istd,'.')
>> hold on
>> plot(V,I)
>> hold off
>> ls
bilde1.png  bilde2.png	lab1_diary.m

>> %% datu iegusana no rasejuma
>> %% datu iegusana no rasejuma (skanetas bildes)
>> A = imread('bilde1.png');
>> B = imread('bilde2.png');
>> figure
>> figure(1),image(A)
>> figure(2),image(B)
>> figure(2),image([500,800],[0,1],B)
>> figure(2),image([500,800],[0,1]',B)
>> figure(2),image([500,800],[0,1],B)
>> get(gca,'YDir','normal')
Error using matlab.graphics.axis.Axes/get
Too many input arguments.
 
>> set(gca,'YDir','normal')
>> set(gca,'YDir','normal')
>> figure(2),image([500,800],[1,0],B)
>> set(gca,'YDir','normal')
>> [x,y]=ginput(1)

x =

  482.8235


y =

    0.4237

>> [x,y]=ginput(10)
hold on

x =

  558.6046
  572.3451
  590.6659
  599.4098
  610.6521
  633.9694
  650.2082
  657.7030
  665.6142
  680.6039


y =

    0.0096
    0.0568
    0.1803
    0.2893
    0.5073
    0.9904
    0.6962
    0.5036
    0.3293
    0.1476

>> plot(x,y,'o')
