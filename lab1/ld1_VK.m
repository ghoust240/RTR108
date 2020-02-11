%% 1.Labaratorijas darbs
%% Merijumu datu apstrade
%% Darba merki
% * iemacities apstradat merijumu datus
% * iemacities veidot atskaites izmantojot
% report generator
% * iemacities nolasit datus no grafika
%% Dots sekojosajs grafiks
%
% <<../bilde5.png>>
%
A = imread('bilde7.png');
figure,image([0,30],[1.4,0],A)
set(gca,'YDir','normal')
hold on
ylabel('Relative luminous intensity (Normalized at 20mA)')
xlabel('I_F - forward current - mA')
%[x,y]=ginput(12)
x = [   -0.0068
    4.9585
    7.2998
   10.0247
   12.4871
   14.9899
   17.2707
   19.9753
   22.5387
   25.0213
   27.4636
   30.0068];


y =[   -0.0003
    0.2827
    0.4224
    0.5675
    0.6839
    0.8003
    0.8970
    0.9955
    1.0743
    1.1298
    1.1800
    1.2355];
C = polyfit(x,y,6);
V = 0:0.1:30;
I = polyval(C,V);
plot(x,y,'o',V,I)
grid

%% Polinoma koeficienti

%% Secinajumi:
% * secinajumos jaraksta no esam
% iemacijusies sini darba
% * vai ari jaskatas darba merkus
% * secinajumiem jabut unikaliem