function [] = plot_beijing_weak2()
cor=[0.924359 0.879416 0.753942 0.656716 0.435444 0.000183 -0.1695412 -0.27776 -0.343276];
bar(cor);
set(gca,'XTickLabel',{'CO','PM10','SO2','Hum','NO2','O3','Temp','Pres','Wind'});
xlabel('Temporal Factors');
ylabel('Correlation Coefficients');
title('Dependence between PM');
end