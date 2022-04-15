Em = 0.1*99 + 5; % Em = 14.5   99是个随便选的数
Exm = 10;  % x分量幅值
Eym = (Em^2-Exm^2)^0.5;  % y分量幅值
w = 10; % 角频率
z0 = 0;  % 起始位置
x = 0:0.01:3;  % x轴坐标取样
m0 = zeros(size(x)); % 与x取样序列规模相同的0序列
Qx = 0; %x分量初相角
Qy = pi/4; %y分量初相角 方便起见 0:线极化 pi/2：圆计划 其它：椭圆极化
figure
for t=0:500
    Ex = Exm*cos(w*x+w*t*1e-2+Qx);  % 计算 x方向幅值瞬时序列
    Ey = Eym*cos(w*x+w*t*1e-2+Qy);  % 计算 y 方向幅值瞬时序列
    plot3(x,m0,m0,'black','LineWidth',3); %画 参考轴线
    hold on
    plot3(x, m0, Ex,'m','LineWidth', 1.5); % 画x轴方向分量
    hold on
    plot3(x, Ey, m0,'b','LineWidth', 1.1);% 画y轴方向分量
    hold on
	% 和向量y坐标为Y分量幅值，z坐标为X分量幅值
    plot3(x, Ey, Ex,'g','LineWidth', 1.2);    hold off
    xlabel('传播方向');
    ylabel('电场Ey');
    zlabel('电场Ex');
    title(['平面电磁波传播示意图'],'fontsize',14)
    set(gca,'fontsize',12)
    drawnow
end
