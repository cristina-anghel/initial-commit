function rezultat = s_dreptunghiular( n,t,P )
    for contor=1:length(t)
        if mod(t(contor),P)<=n*P
            rezultat(contor)=1;
        else
            rezultat(contor)=0;
        end
    end
end