function y = lab3_demo(t)
if nargin == 0
    t=0:0.01:6.5;
end
%t_sin=1.5:0.01:3.5;
t_sinf=(t>=1.5)&(t<3.5); t_sin=t(t_sinf);
%t_saw=0:0.01:0.5;
t_sawf=(t>=0)&(t<0.5); t_saw=t(t_sawf);
%t_const=3.5:0.01:5;
t_constf=(t>=3.5)&(t<5); t_const=t(t_constf)
%t_zero=0.5:0.01:1.5;
t_zerof=(t>=0.5)&(t<1.5); t_zero=t(t_zerof)
%t_noise=5:0.01:6.5;
t_noisef=(t>=5)&(t<6.5); t_noise=t(t_noisef)

%% sinusoida y=A0+a*sin(2*pi*f*(t-delay))
A0=0; A=1.5;
T=(3.5-1.5)/2;
f=1/T; delay=1.5;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
axis([0 6.5 -2 2])
%% Lineari mainiga funkcija  y=k*(t-delay)
k=(1-0)/(0-0.5);
delay=0.5;
y_saw=k*(t_saw-delay);
hold on
%plot(t_saw,y_saw)
%% Konstantes signals  y=k*t
y_const=zeros(size(t_const))+1.5;
%plot(t_const,y_const)
%% Nullu signals
y_zero=zeros(size(t_zero));
%plot(t_zero,y_zero)
%% Troksna signals
y_noise=1.5*rand(size(t_noise))-0.75;
%plot(t_noise,y_noise)
%% apvienosim visu vina vektora
t=[t_saw,t_zero,t_sin,t_const,t_noise];
y=[y_saw,y_zero,y_sin,y_const,y_noise];
if nargout == 0
    plot(t,y);
    y=[];
end