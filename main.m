tic
init;

for i=0:5
    lifeA=lifeA*(1+i/5);
n=8
sum=0;
   S_good=0;
for q=1:S
    %%初始化
    t=0;
    A=[0 0 0 0 0 0 0 0 0 0 0 0 0 0]; %n节点状态记录
    B=[0 0 0 0 0 0 0 0 0 0 0 0 0 0];
   G=[n 0 0 0 0 0];
   tA=exprnd(lifeA,1,n);%生成故障表
   tB=exprnd(lifeB,1,n);
   Gsys=1;
   while (Gsys==1)
      lifeA1=min(tA)
      lifeB1=min(tB)
       if lifeA1<lifeB1
           t=lifeA1;
           j=find(tA==lifeA1,1);
           tA(j)=+inf;
           a1=rand();
           if a1<P_EA1
               A(j)=1;
             if B(j)==2
            
            elseif B(j)==1
               G(6)= G(6)+1;
               G(4)= G(4)-1;
            elseif B(j)==0
              G(2)= G(2)+1;
              G(1)= G(1)-1;
            end
           elseif a1<P_EA1+P_EA2&&a1>=P_EA1
               A(j)=2;
            if B(j)==2
            G(2)=G(2)-1;
            G(5)=G(5)+1;
            elseif B(j)==1
              
            elseif B(j)==0
              G(3)= G(3)+1;
              G(1)= G(1)-1;
           end
           elseif a1>=P_EA1+P_EA2
               A(j)=3;
           if B(j)==2
            G(2)=G(2)-1;
            G(5)=G(5)+1
            elseif B(j)==1
              G(4)=G(4)-1;
              G(5)=G(5)+1;
            elseif B(j)==0
              G(5)= G(5)+1;
              G(1)= G(1)-1;
           end
           end
       else
           t=lifeB1;
           j=find(tB==lifeB1,1);
           tB(j)=+inf;
           a2=rand();
           if a2<P_EB1
               B(j)=1;
               if A(j)==0
          G(1)=G(1)-1;
          G(4)=G(4)+1;
      elseif A(j)==1
          G(2)=G(2)-1;
          G(6)=G(6)+1;
      elseif A(j)==2
          G(3)=G(3)-1;
          G(4)=G(4)+1;
      elseif A(j)==3
      end
           else
               B(j)=2;
               if A(j)==0
                G(1)=G(1)-1;
                G(2)=G(2)+1;
               elseif A(j)==1
          
               elseif A(j)==2
                 G(3)=G(3)-1;
                 G(5)=G(5)+1;
                elseif A(j)==3
             end
           end;
       end;
       Gsys=sys_sit(n);
       if t>=78000
           t=78000;
           Gsys=0;
       end
       
   end
    sum=sum+t
    if t>=25000
    S_good=S_good+1;1
   end
end
mean_time_to_fail=[mean_time_to_fail sum/S];
availablity=[availablity S_good/S];

end
x=[1:0.2:2]
plot(x,availablity,'r');



toc