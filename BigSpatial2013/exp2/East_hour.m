function [  ] =East_hour (  )
load east_city_hour.txt;
load east_city_GDP_capitaAvg.txt;
load east_city_GDPAvg.txt;
load east_city_urban_areaAvg.txt; 
load east_city_urban_densityAvg.txt; 
load east_city_urban_populationAvg.txt;

subplot(231),plot(east_city_GDP_capitaAvg,east_city_hour,'b*');
xlabel('east_city_GDP_capitaAvg'),ylabel('hour');
title('corr=0.4080223220699011');
subplot(232),plot(east_city_GDPAvg,east_city_hour,'b*');
xlabel('east_city_GDPAvg'),ylabel('hour');
title('corr=0.24875776739003255');
subplot(233),plot(east_city_urban_areaAvg,east_city_hour,'b*');
xlabel('east_city_urban_areaAvg'),ylabel('hour');
title('corr=0.18736293115284863');
subplot(234),plot(east_city_urban_densityAvg,east_city_hour,'b*');
xlabel('east_city_urban_densityAvg'),ylabel('hour');
title('corr=0.15108973104611564');
subplot(235),plot(east_city_urban_populationAvg,east_city_hour,'b*');
xlabel('east_city_urban_populationAvg'),ylabel('hour');
title('corr=0.21190667323669893');


end

