function [  ] =urban_hour(  )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
load urban_H.txt;
load urban_area.txt;
load urban_density.txt;
load urban_GDP.txt; 
load urban_GDP_capita.txt;  
load urban_population.txt;

subplot(231),plot(urban_area,urban_H,'r+');
xlabel('urban_area'),ylabel('hour');
title('corr=0.037339355914656626');
subplot(232),plot(urban_density,urban_H,'r+');
xlabel('urban_density'),ylabel('hour');
title('corr=0.22950689874739516');
subplot(233),plot(urban_GDP,urban_H,'r+');
xlabel('urban_GDP'),ylabel('hour');
title('corr=0.081132236755545');
subplot(234),plot(urban_GDP_capita,urban_H,'r+');
xlabel('urban_GDP_capita'),ylabel('hour');
title('corr=-0.09012125543158739');
subplot(235),plot(urban_population,urban_H,'r+');
xlabel('urban_population'),ylabel('hour');
title('corr=0.13827920074649144');

end

