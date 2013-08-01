function [  ] = plot_Hour_monsoon(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
matrix_pm2p5_Avg=[38.87361591 60.65218571 81.60197333 11.4399 35.9743];
matrix_pm2p5_hour=[129.5789 289.3571 487.9333  75.5];
figure;
subplot(121),bar(matrix_pm2p5_Avg,0.5,'r');
xlabel('monsoon');
ylabel('pm2p5_Avg');
set(gca, 'XTick', 1:5);
set(gca,'XTickLabel',{'亚热带季风气候(44个城市)','温带大陆性气候(14个城市)','温带季风气候(15个城市)','热带季风气候(1个城市)','高原山地气候(2个城市)'});
subplot(122),bar(matrix_pm2p5_hour,0.5);
xlabel('monsoon');
ylabel('pm2p5_hour');
set(gca, 'XTick', 1:4);
set(gca,'XTickLabel',{'亚热带季风气候(38个城市)','温带大陆性气候(14个城市)','温带季风气候(15个城市)','高原山地气候(2个城市)'});

end


