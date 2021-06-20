clear
close
u = -1:0.1:1;
for i=1:length(u)
    if(u(i) >= 0.5)
        y(i) = 1;
    end
    if ((u(i)>-0.5)&&(u(i)<0.5))
        y(i) = u(i)+0.5;
    end
    if (u(i)<= -0.5)
        y(i) = 0;
    end
end
plot(u,y);
grid on

figure(2)
u = -1:0.1:1;
for i=1:length(u)
    if(u(i) >= 0.5)
        y(i) = 0.5;
    end
    if ((u(i)>-0.5)&&(u(i)<0.5))
        y(i) = u(i);
    end
    if (u(i)<= -0.5)
        y(i) = -0.5;
    end
end
plot(u,y);
grid on