a =27
b = 30; % doesn't show in command window but stores variable
clear all; close all    %use command window to summon things too
b = 30; 
size(b)
a = [1,2,3,4];
size(a)

A = [1,2,3; 4,5,6; 7,8,9]
size(A)
A(2,3)
%A(0,1)   %matlab starts from 1 not 0!!

b =A(2,1:2)
size(b)
c=A(2,:)

x=0:0.5:10 %array = start:stepsize:stop
t=0:20
v=0:0.867
v=0:0.005:0.867

q=linspace(1,30,10)

A=[1,2,3; 4,5,6 ; 7,8,9]
B=[3,2,1; 6,4,5; 8,7,9]
A+B
A-B
A*B
A*[1;2;3]
A^3 %doesn't work. Need dot-star

[1,2,3].*[3,2,1]
[1,2,3]./[3,2,1]
[1,2,3].^2

%Can use help plot

%Make a plot
x = 1:1:10; %array with range 1-10
y = x.^5;
y1= sin(x);
y2= log(x);
y3= log10(x);

plot(x,y)
plot(x,y2,x,y3) %plots two functions at once

figure(27); %creates new figure
plot(x,y);

figure(1); %plot multiple things on same plot, can put hold
plot(x,y); 
hold on;
plot(x,y2,x,y3);
%hold off

title('V(x)')  %adding labels
xlabel('V(Volts)')
ylabel('distance(meters)')
axis([0 pi 0.1 1.7])    %changing axis limits

%Scripts and Functions

x = -5:0.1:5;
sigma = 1.5;
y = myGauss(x,sigma);
plot(x,y)



%function to fit
fun = @(a,b,c,x) - sqrt(a^2-(x-b).^2)+c;
figure(2)
errorbar(e,y,ey,'g.')
% Find a starting point for the parameters a, b, and c.
guess = fun(15,0,15,x); % fun(a,b,c,x)
plot(x,guess,'r:')

%fit the data
fittedmodel = fit(x',y',fun,'StartPoint',[15 0 15])

disp(fittedmodel);
%plot the result
plot(fittedmodel,'r-');

w=  ey.^-2
weightedfitted = fit(x',y',fun,'StartPoint',[15 0 15],'Weights',w')
% plot the result
plot(weightedfit,'r-');
        
%Exercise 2

experiment = importdata('radioactivedecay.dat')
t = experiment.data(:,1);
N = experiment.data(:,2);
fun1 = @(a,b,c,x) b*exp(-a*x)+c;
figure(42)
plot(t,N,'b.');
figure(53)
plot(t,N,'b.');
%plot the result
plot(fittedmodel,'b-',t,N,'b.');
legend('radioactive data','curvefit')
xlabel('time(s)')
ylabel('# decays')

