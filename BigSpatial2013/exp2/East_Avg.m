function [  ] = East_Avg(  )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
load east_city_Avg.txt;
load east_city_GDP_capitaAvg.txt;
load east_city_GDPAvg.txt;
load east_city_urban_areaAvg.txt; 
load east_city_urban_densityAvg.txt; 
load east_city_urban_populationAvg.txt;

subplot(231),plot(east_city_GDP_capitaAvg,east_city_Avg,'b*');
xlabel('east_city_GDP_capitaAvg'),ylabel('Avg');
title('corr=0.3281612097019935');
subplot(232),plot(east_city_GDPAvg,east_city_Avg,'b*');
xlabel('east_city_GDPAvg'),ylabel('Avg');
title('corr=0.2186854109188599');
subplot(233),plot(east_city_urban_areaAvg,east_city_Avg,'b*');
xlabel('east_city_urban_areaAvg'),ylabel('Avg');
title('corr=0.12418632659298788');
subplot(234),plot(east_city_urban_densityAvg,east_city_Avg,'b*');
xlabel('east_city_urban_densityAvg'),ylabel('Avg');
title('corr=0.08153627099227909');
subplot(235),plot(east_city_urban_populationAvg,east_city_Avg,'b*');
xlabel('east_city_urban_populationAvg'),ylabel('Avg');
title('corr=0.1335818061123794');


end

