%% Telpiskas figuras
% Uzzimesim 3D(dimensiju) sferu, un izmantosim
% datu filtraciju lai to noskeltu
%%
% * sferas konstruesanas
% sferu apraksta
% x^2+y^2+z^2=R^2
R=1;
x=-1:0.01:1;
y=-1:0.01:1;
z=sqrt(R^2-(x.^2+y.^2));
plot3(x,y,z)
grid
%% x y nav neatkarigi, lidz ar to nasanac ilustracijai samazinasim x,y soli
x=-1:0.5:1;
y=-1:0.5:1;
x
[X,Y]=meshgrid(x,y)
% atjaunosim smalku soli
x=-1:0.01:1;
y=-1:0.01:1;
[X,Y]=meshgrid(x,y);
z=sqrt(R^2-(X.^2+Y.^2));
Z=sqrt(R^2-(X.^2+Y.^2));
plot3(X,Y,Z)
plot3(X,Y,abs(Z))
plot3(X,Y,real(Z))
mesh(X,Y,real(Z))
mesh(X,Y,abs(Z))
%% novaksim kompleskus skaitlus
% to darisim sadi:
% redzam ka kompleksam skaitlim
% real(Z)==0
%% Ka nezimet dalu no grafika
plot([1 2 3 4 5 6],[1 2 3 4 5 6])
plot([1 2 3 4 5 6],[1 2 NaN NaN 5 6])
0/0
1/0
%% Pamatni (komplekso dalu no sferas)
% partaisisim par Nan
ind=real(Z)==0;
Z(ind)=NaN;
mesh(X,Y,Z)
%% uzzimesim -sqrt
%% uzzimesim sferas apaksu
Z2 = -sqrt(R^2-(X.^2+Y.^2));
ind2=real(Z2)==0;
Z2(ind2)=NaN;
mesh([X,X],[Y,Y],[Z,Z2])
%% Izgriezisim gredzenu no sferas
ind_gredzens=(Z > 0.5) & (Z<0.7);
Z_gredzens=Z;
Z_gredzens(~ind_gredzens)=NaN;
figure,mesh(X,Y,Z_gredzens)
zlim([-1 1])
%% Majasdarbs:
% atkartot to pasu un no sferas izgriezt gredzenu un uzzimet sferu best tas dalas
Z_gredzens(ind_gredzens);
figure,mesh(X,Y,Z_gredzens)
zlim([-1 1])
Z_gredzens(ind_gredzens)=NaN;
figure,mesh(X,Y,Z_gredzens)
zlim([-1 1])