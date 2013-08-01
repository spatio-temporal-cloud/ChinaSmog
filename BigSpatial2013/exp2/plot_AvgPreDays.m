function [] = plot_AvgPreDays()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
load Avg.txt
load Hour.txt
load AvgPreDays.txt
subplot(221),plot(AvgPreDays,Avg,'b*');
xlabel('AvgPreDays'),ylabel('Avg');
title('-0.7189256884506049');
subplot(222),plot(AvgPreDays,Hour,'b*');
xlabel('AvgPreDays'),ylabel('hour');
title('corr=-0.7026613858439501');
matrix_pm2p5=[0.305907654504503 0.3547301279768298;
    -0.11900034736989357 -0.07080955582174527;
    -0.7189256884506049 -0.7026613858439501;
    -0.20791130801744176 -0.11876070530018361;
    -0.4698328582601648 -0.42001943333118763;
    -0.5242365355634637 -0.4942710375505847;
    0.3857507506008064 0.3967289085380031];
subplot(223),plot(Hour,Avg,'b*');
xlabel('Hour'),ylabel('Avg');
subplot(224),bar(matrix_pm2p5);
legend('Avg-pm2p5','Hour>=75');
xlabel('factor');
ylabel('Correlation Coefficient');
set(gca, 'XTick', 1:7);
set(gca,'XTickLabel',{'AvgHighTemp','AvgLowTemp','AvgPreDays','AvgTemp','Humidity','Precipitation','SunHours'});
end

