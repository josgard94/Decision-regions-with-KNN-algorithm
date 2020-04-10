%
%   implementación del algoritmo knn
%
function S = knn(xi,xt,k)
    si = zeros(length(xi),1);
    Di = zeros(length(xi),1);
    
    for i = 1:length(xi)
        suma = 0;
        for l = 1:length(xt)
            suma = suma + ((xt(l) - xi(i,l))^2);
        end
        Di(i) = sqrt(suma);
    end
    for j = 1:k
        Dmin = Di(1);
        q = 1;
        for i = 1:length(xi)
            if(Di(i)<Dmin && si(i) == 0)
                Dmin = Di(i);
                q = i;
            end
        end
        si(q) = 1;
    end
    S = si;
end