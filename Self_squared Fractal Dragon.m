clc;
close all;
clear;
lambda = 1.64 + 0.96*1i;
k = 1;
for R = -0.5:0.003:1.5
    for I = -1:0.003:1
        Z = R + 1i*I;
        for n =1:70
            Z = lambda*Z*(1 - Z);
            if abs(Z) > 2
                Zext(k) = R + 1i*I;
                color_ext(k) = n;
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
scatter(real(Zext), imag(Zext), 1, color_ext, 'filled');
axis([-0.55 1.5 -1.05 1]);
title('Self-squared Fractal Dragon', 'FontSize', 16,'Color', [0.9 0.9 0.9], 'FontName', 'Consolas');
xlabel('R', 'FontSize', 14, 'Color', [0.9 0.9 0.9]);
ylabel('I', 'FontSize', 14, 'Color', [0.9 0.9 0.9],'Rotation', 0);
