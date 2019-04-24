
clc
clear all;

global P_EA1
global P_EA2
global P_EA3
global P_EB1
global P_EB2
global lifeA
global lifeB
global k
global G
global S %Ä£Äâ×ÜÊý
global A
global B
S=10000;
sum=0;
mean_time_to_fail=[];
availablity=[];
k=4;
lifeA=7.72*10^4
P_EA1=0.14;
P_EA2=0.28;
P_EA3=0.58;
t=0;
lifeB=2.35*10^5;
P_EB1=0.69;
P_EB2=0.31;
maxtime=78000;