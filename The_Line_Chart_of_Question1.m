t = [0 10 20 30 40 50 60 70 80 90 100 150];
h = [0 0.16 0.65 1.15 1.52 1.75 1.88 1.94 1.97 1.99 2.0 2.00];
plot(t,h);
xlabel('t(s)'); % x坐标命名
ylabel('h(mm)');
grid on; % 打开网格
hold on; % 当有新坐标线画出则保留原图，与hold off相对