%---------------------------------------------------------------------------------------------------------------------------
%Name : Prajesh Sanil
%USN : NNM23EE057
%Batch : B1
%Exp-1
%Date : 10/1/26
%----------------------------------------------------------------------------------------------------------------------------
close all; %closes all the previously open figures/plots 
clear ; %clears the workspace previously existing stored variables
clc ; %clears the command window
f=50; %set the signal frequency as given in the Question
fs=input('Enter the sampling frequency (fs)= '); %Input the value of sampling frequency
t=0:1/fs:0.02; %resolution here set to sampling time intervals, range kept for 1 cycle of 50Hz signal
x=5*sin(2*pi*f*t+(30*pi/180)); %signal fuction expression
plot(t,x,'k'); %PLots the function signal wrt time axis 
hold on;
stem(t,x,'r'); %stem function indicating the sampling magnitude for the respective sampling interval perpendicular to x axis
yline(0,'k'); %horizontal line at x=0
grid on; 
%----------------------------------------------------------------------------------------------------------------------------
 
%Inference:
%Nyquist Criterion: fs>=2fmax is realized in this exercise
%Observation:
%100Hz -> 1/2 (cycle/sample) Poor signal recontructability, higher loss.
%150 & 200Hz -> 3 and 4 samples/cycle Better than fs=100Hz Lower loss
%1000Hz -> 20 samples/cycle Higher resolution, Better informations recived 