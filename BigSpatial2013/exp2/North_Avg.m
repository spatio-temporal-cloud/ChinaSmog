function [  ] = North_Avg(  )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
load north_city_Avg.txt;
load north_city_GDP_capitaAvg.txt;
load north_city_GDPAvg.txt;
load north_city_urban_areaAvg.txt; 
load north_city_urban_densityAvg.txt; 
load north_city_urban_populationAvg.txt;

subplot(231),plot(north_city_GDP_capitaAvg,north_city_Avg,'b*');
xlabel('north_city_GDP_capitaAvg'),ylabel('Avg');
title('corr=0.2731402582112826');
subplot(232),plot(north_city_GDPAvg,north_city_Avg,'b*');
xlabel('north_city_GDPAvg'),ylabel('Avg');
title('corr=0.18889158123306643');
subplot(233),plot(north_city_urban_areaAvg,north_city_Avg,'b*');
xlabel('north_city_urban_areaAvg'),ylabel('Avg');
title('corr=0.06585462432953822');
subplot(234),plot(north_city_urban_densityAvg,north_city_Avg,'b*');
xlabel('north_city_urban_densityAvg'),ylabel('Avg');
title('corr=-0.3080737168279076');
subplot(235),plot(north_city_urban_populationAvg,north_city_Avg,'b*');
xlabel('north_city_urban_populationAvg'),ylabel('Avg');
title('corr=0.08049434912057732');

end

