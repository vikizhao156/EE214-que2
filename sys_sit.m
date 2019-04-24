function Gsys=sys_sit(n)
global k
global A
global B
global G


 if (G(6)>=1)||(G(4)>=2)||((G(1)+G(4)+G(3))==0)||((G(1)+G(2)+1*((G(4)+G(3)>0)))<k)
    Gsys=0;
elseif(G(6)==0)&&(((G(4)==1)&&((G(1)+G(2))>=k-1))||((G(4)==0&&G(1)>=1&&(G(1)+G(2))>=k)||(G(4)==0&&G(1)==0&&G(3)>=1&&G(2)>=k-1)))
    Gsys=1;
elseif ((G(6)+G(4))==0)&&((G(1)>=1)&&((G(1)+G(2))==k-1)&&(G(3)>=1))
    ran=rand();
    if ran<=(G(3)/(G(3)+G(1)))
        Gsys=1;
    else 
        Gsys=0;
    end
end
