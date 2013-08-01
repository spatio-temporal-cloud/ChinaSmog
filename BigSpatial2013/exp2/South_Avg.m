function [  ] = South_Avg(  )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
load south_city_Avg.txt;
load south_city_GDP_capitaAvg.txt;
load south_city_GDPAvg.txt;
load south_city_urban_areaAvg.txt; 
load south_city_urban_densityAvg.txt; 
load south_city_urban_populationAvg.txt;

subplot(231),plot(south_city_GDP_capitaAvg,south_city_Avg,'b*');
xlabel('south_city_GDP_capitaAvg'),ylabel('Avg');
title('corr=-0.14146781663204766');
subplot(232),plot(south_city_GDPAvg,south_city_Avg,'b*');
xlabel('south_city_GDPAvg'),ylabel('Avg');
title('corr=0.224299773754124');
subplot(233),plot(south_city_urban_areaAvg,south_city_Avg,'b*');
xlabel('south_city_urban_areaAvg'),ylabel('Avg');
title('corr=0.19940168022209714');
subplot(234),plot(south_city_urban_densityAvg,south_city_Avg,'b*');
xlabel('south_city_urban_densityAvg'),ylabel('Avg');
title('corr=0.5082784521181102');
subplot(235),plot(south_city_urban_populationAvg,south_city_Avg,'b*');
xlabel('south_city_urban_populationAvg'),ylabel('Avg');
title('corr=0.4463998666699595');

end

