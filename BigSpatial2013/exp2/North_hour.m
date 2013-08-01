function [  ] = North_hour(  )
load north_city_hour.txt;
load north_city_GDP_capitaAvg.txt;
load north_city_GDPAvg.txt;
load north_city_urban_areaAvg.txt; 
load north_city_urban_densityAvg.txt; 
load north_city_urban_populationAvg.txt;

subplot(231),plot(north_city_GDP_capitaAvg,north_city_hour,'b*');
xlabel('north_city_GDP_capitaAvg'),ylabel('hour');
title('corr=0.33543534494493393');
subplot(232),plot(north_city_GDPAvg,north_city_hour,'b*');
xlabel('north_city_GDPAvg'),ylabel('hour');
title('corr=0.2419457093748234');
subplot(233),plot(north_city_urban_areaAvg,north_city_hour,'b*');
xlabel('north_city_urban_areaAvg'),ylabel('hour');
title('corr=0.11459134664218099');
subplot(234),plot(north_city_urban_densityAvg,north_city_hour,'b*');
xlabel('north_city_urban_densityAvg'),ylabel('hour');
title('corr=-0.2544794468742007');
subplot(235),plot(north_city_urban_populationAvg,north_city_hour,'b*');
xlabel('north_city_urban_populationAvg'),ylabel('hour');
title('corr=0.14396468631993165');


end

