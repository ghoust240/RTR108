%% 2.Labaratorijas darbs
% Viktors Kozlovskis
%% Darba merkis
% * Iepazities ar matlaba simbolisko matematiku

%% 1. Uzdevums
% <<../uzd1.jpg>>
syms a b x;
y = solve(x+a*sqrt(x)==b,a);
pretty(y);

%% 2. Uzdevums
% <<../uzd2.jpg>>
u = x^sin(x);
u_atv = simplify(diff(u));
u_v = vectorize(u);
u_atv_v = vectorize(u_atv);
x = [0:0.01:10];
u_n = eval(u_v);
u_atv_n = eval(u_atv_v);
plot(x,u_n,x,u_atv_n)
ylim([-12 12]);
grid;
u_ltx = latex(u);
u_atv_ltx = latex(u_atv);
h=legend(['$',u_ltx,'$'],['$',u_atv_ltx,'$']);
set(h,'Interpreter','Latex')

%% Secinajumi