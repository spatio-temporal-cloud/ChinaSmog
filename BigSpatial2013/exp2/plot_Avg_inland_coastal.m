function [  ] = plot_Avg_inland_coastal( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
matrix_pm2p5_Avg=[39.24604074    57.33812245];
matrix_pm2p5_hour=[171.9048    262.3542];
figure;
subplot(121),bar(matrix_pm2p5_Avg,0.4,'r');
xlabel('');
ylabel('Average Concentration of PM25');
set(gca, 'XTick', 1:2);
set(gca,'XTickLabel',{'Coastal Cities','Inland Cities'});

subplot(122),bar(matrix_pm2p5_hour,0.4);
xlabel('');
ylabel('Average Pollution Hours of PM25');
set(gca, 'XTick', 1:2);
set(gca,'XTickLabel',{'Coastal Cities','Inland Cities'});

end

