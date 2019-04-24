%对一个系统n个结点的结点内部元件状态进行设置 返回n个结点的A器件与B器件状态。
function triger=point_sit(n)
global P_EA1
global P_EA2
global P_EA3
global P_EB1
global P_EB2
global pa
global pb
global A
global B
global G
%global triger
triger=0;
for i=1:n
if A(i)==0
    ax1=rand();
    if ax1<=pa;
      triger=1;
      ax2=rand();
      if ax2<=P_EA1
          A(i)=1;
            if B(i)==2
            
            elseif B(i)==1
               G(6)= G(6)+1;
               G(4)= G(4)-1;
            elseif B(i)==0
              G(2)= G(2)+1;
              G(1)= G(1)-1;
         end
      elseif ax2<=(P_EA1+P_EA2)
          A(i)=2;    
           if B(i)==2
            G(2)=G(2)-1;
            G(5)=G(5)+1
            elseif B(i)==1
              
            elseif B(i)==0
              G(3)= G(3)+1;
              G(1)= G(1)-1;
           end
      else
          A(i)=3
           if B(i)==2
            G(2)=G(2)-1;
            G(5)=G(5)+1
            elseif B(i)==1
              G(4)=G(4)-1;
              G(5)=G(5)+1;
            elseif B(i)==0
              G(5)= G(5)+1;
              G(1)= G(1)-1;
           end
       end
    end
end
if B(i)==0
      bx1=rand();
   if bx1<=pb
      triger=1;
      bx2=rand()
    if bx2<=P_EB1
      B(i)=1;
      if A(i)==0
          G(1)=G(1)-1;
          G(4)=G(4)+1;
      elseif A(i)==1
          G(2)=G(2)-1;
          G(6)=G(6)+1;
      elseif A(i)==2
          G(3)=G(3)-1;
          G(4)=G(4)+1;
      elseif A(i)==3
      end
      
    else 
      B(i)=2;
     if A(i)==0
          G(1)=G(1)-1;
          G(2)=G(2)+1;
      elseif A(i)==1
          
      elseif A(i)==2
          G(3)=G(3)-1;
          G(5)=G(5)+1;
      elseif A(i)==3
          
      end
    end
   end
end
end
