clc
clear
for mm = 1:5
    for nn = 1:5
        if (nn > 3)
            break;
        end
        pro = mm*nn;
        fprintf('%d * %d = %d\n', mm,nn,pro);
    end
end