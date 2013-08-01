function [  ] = plot_geo_factors(  )
matrix_pm2p5_Avg=[39.24604074    57.33812245];
matrix_pm2p5_hour=[171.9048    262.3542];
figure;
subplot(3,2,1),bar(matrix_pm2p5_Avg,0.2,'r');
xlabel('Location');
ylabel('Avg Concentration');
set(gca, 'XTick', 1:2);
set(gca,'XTickLabel',{'Coastal','Inland'});

subplot(3,2,2),bar(matrix_pm2p5_hour,0.2);
xlabel('Location');
ylabel('Avg Pollution Hours');
set(gca, 'XTick', 1:2);
set(gca,'XTickLabel',{'Coastal','Inland'})


matrix_pm2p5_Avg=[38.87361591;60.65218571;81.60197333;11.4399;35.9743];
matrix_pm2p5_hour=[129.5789 289.3571 487.9333 0 75.5];
subplot(3,2,3),bar(matrix_pm2p5_Avg,0.5,'r');
xlabel('Climatic Zone');
ylabel('Avg Concentration');
set(gca, 'XTick', 1:5);
set(gca,'XTickLabel',{'STM','TC','TM','TrM','PM'});
%legend('Subtrop_mons','Temp_cont','Temp_mons','Trop_mons','Plat_moun');
subplot(3,2,4),bar(matrix_pm2p5_hour,0.5);
xlabel('Climatic Zone');
ylabel('Avg Pollution Hours');
set(gca, 'XTick', 1:5);
set(gca,'XTickLabel',{'STM','TC','TM','TrM','PM'});



matrix_pm2p5=[0.305907654504503 0.3547301279768298;
    -0.11900034736989357 -0.07080955582174527;
     -0.20791130801744176 -0.11876070530018361;
    -0.7189256884506049 -0.7026613858439501;   
    -0.4698328582601648 -0.42001943333118763;
    -0.5242365355634637 -0.4942710375505847;
    0.3857507506008064 0.3967289085380031];
subplot(3,2,5:6),bar(matrix_pm2p5);
legend('Avg Concentration','Pollution Hours');

xlabel('Climate');
ylabel('Correlation Coefficient');
set(gca, 'XTick', 1:7);
set(gca,'XTickLabel',{'AvgHigTemp','AvgLowTemp','AvgTemp','AvgPreDays','Humidity','Precipitation','SunHours'});





end