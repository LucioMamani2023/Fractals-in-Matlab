clc;
close all;
clear;
new_chain(1) = 'F';
N = 7;
for n = 1:N
    j = 1;
    chain = new_chain;
    for i = 1:length(new_chain)
        if chain(i) == 'F'
            new_chain(j:j+7) = 'F+F--F+F';
            j = j + 8;
        else if chain(i) == '+'
                new_chain(j) = '+';
                j = j + 1;
            else if chain(i) == '-'
                    new_chain(j) = '-';
                    j = j + 1;
                end
            end
        end
    end
end
x(1) = 0;
y(1) = 0;
fi = 0;
k = 1;
color(1) = 0;
new_chain = [new_chain new_chain new_chain];
for i = 1:length(new_chain)
    if i == length(new_chain)/3 + 1
        fi = -2*pi/3;
    else if i == 2*length(new_chain)/3 + 1
            fi = -4*pi/3;
        end
    end
    if new_chain(i) == 'F'
        x(k+1) = x(k) + cos(fi)/(3^N);
        y(k+1) = y(k) + sin(fi)/(3^N);
        color(k+1) = i;
        k = k + 1;
    else if new_chain(i) == '+'
            fi = fi + pi/3;
        else if new_chain(i) == '-'
                fi = fi - pi/3;
            end
        end
    end
end
figure;
set(gcf(), 'Color', [0.1 0.1 0.16]);
axes('Color',[0.1 0.1 0.16], 'XColor', [0.9 0.9 0.9], 'YColor', [0.9 0.9 0.9], 'FontName', 'Consolas', 'FontSize', 14);
hold on;
scatter(x, y, 1, color, 'filled');
axis([-0.5 1.5 -1 0.5]);
title('Koch Snowflake', 'FontSize', 16,'Color', [0.9 0.9 0.9], 'FontName', 'Consolas');
xlabel('x', 'FontSize', 14, 'Color', [0.9 0.9 0.9]);
ylabel('y', 'FontSize', 14, 'Color', [0.9 0.9 0.9],'Rotation', 0);



