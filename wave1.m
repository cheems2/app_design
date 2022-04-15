Em = 0.1*99 + 5; % Em = 14.5   99�Ǹ����ѡ����
Exm = 10;  % x������ֵ
Eym = (Em^2-Exm^2)^0.5;  % y������ֵ
w = 10; % ��Ƶ��
z0 = 0;  % ��ʼλ��
x = 0:0.01:3;  % x������ȡ��
m0 = zeros(size(x)); % ��xȡ�����й�ģ��ͬ��0����
Qx = 0; %x���������
Qy = pi/4; %y��������� ������� 0:�߼��� pi/2��Բ�ƻ� ��������Բ����
figure
for t=0:500
    Ex = Exm*cos(w*x+w*t*1e-2+Qx);  % ���� x�����ֵ˲ʱ����
    Ey = Eym*cos(w*x+w*t*1e-2+Qy);  % ���� y �����ֵ˲ʱ����
    plot3(x,m0,m0,'black','LineWidth',3); %�� �ο�����
    hold on
    plot3(x, m0, Ex,'m','LineWidth', 1.5); % ��x�᷽�����
    hold on
    plot3(x, Ey, m0,'b','LineWidth', 1.1);% ��y�᷽�����
    hold on
	% ������y����ΪY������ֵ��z����ΪX������ֵ
    plot3(x, Ey, Ex,'g','LineWidth', 1.2);    hold off
    xlabel('��������');
    ylabel('�糡Ey');
    zlabel('�糡Ex');
    title(['ƽ���Ų�����ʾ��ͼ'],'fontsize',14)
    set(gca,'fontsize',12)
    drawnow
end
