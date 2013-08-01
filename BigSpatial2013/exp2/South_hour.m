function [  ] = South_hour(  )
load south_city_hour.txt;
load south_city_GDP_capitaAvg.txt;
load south_city_GDPAvg.txt;
load south_city_urban_areaAvg.txt; 
load south_city_urban_densityAvg.txt; 
load south_city_urban_populationAvg.txt;

subplot(231),plot(south_city_GDP_capitaAvg,south_city_hour,'b*');
xlabel('south_city_GDP_capitaAvg'),ylabel('hour');
title('corr=-0.6275447770408914');
subplot(232),plot(south_city_GDPAvg,south_city_hour,'b*');
xlabel('south_city_GDPAvg'),ylabel('hour');
title('corr=-0.3948278296045207');
subplot(233),plot(south_city_urban_areaAvg,south_city_hour,'b*');
xlabel('south_city_urban_areaAvg'),ylabel('hour');
title('corr=-0.4814053449719604');
subplot(234),plot(south_city_urban_densityAvg,south_city_hour,'b*');
xlabel('south_city_urban_densityAvg'),ylabel('hour');
title('corr=0.7204970809234033');
subplot(235),plot(south_city_urban_populationAvg,south_city_hour,'b*');
xlabel('south_city_urban_populationAvg'),ylabel('hour');
title('corr=-0.15621999725335745');

end

