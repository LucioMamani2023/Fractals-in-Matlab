clc;
close all;
clear;
k = 1;
for R = -2.1:0.005:0.9
    for I = -1.5:0.005:1.5
        c = R + 1i*I;
        Z = 0;
        for n =1:100
            Z = Z^2 + c;
            if abs(Z) > 2
                Zm(k) = c;
                color(k) = n;
                k = k + 1;
                break;
            end
        end
    end
end
figure;
set(gcf(), 'Color', [0.1 0.1 0.16]);
axes('Color',[0.1 0.1 0.16], 'XColor', [0.9 0.9 0.9], 'YColor', [0.9 0.9 0.9], 'FontName', 'Consolas', 'FontSize', 14);
hold on;
scatter(real(Zm), imag(Zm), 1, color, 'filled');
axis([-2.2 1 -1.6 1.5]);
title('Mandelbrot Set', 'FontSize', 16,'Color', [0.9 0.9 0.9], 'FontName', 'Consolas');
xlabel('R', 'FontSize', 14, 'Color', [0.9 0.9 0.9]);
ylabel('I', 'FontSize', 14, 'Color', [0.9 0.9 0.9],'Rotation', 0);

 


