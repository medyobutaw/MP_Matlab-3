function matlab3(e)
    
e1 = e(:,1);
e2 = e(:,2);

if length(e1) >= 11
    l = 10;
else
    l = length(e1)-1;
end
    
for L = 1:l
    
q = polyfit(e1,e2,L);
t = polyval(q,e1);
p(L) = norm(e2 - t);

end

[~,I] = min(p);
c = polyfit(e1,e2,I);

disp(c)
        