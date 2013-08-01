function [] = plot_beijing_weak()
load pm2.5-5.29~6.4.txt
load no2-5.29~6.4.txt
load co-5.29~6.4.txt
load so2-5.29~6.4.txt
load pm10-5.29~6.4.txt
load o3-5.29~6.4.txt
load ws-5.29~6.4.txt
load tem-5.29~6.4.txt
load p-5.29~6.4.txt
load hum-5.29~6.4.txt
co=co_5_29_6_4;
so2=so2_5_29_6_4;
no2=no2_5_29_6_4;
o3=o3_5_29_6_4;
pm10=pm10_5_29_6_4;
pm25=pm2_5_5_29_6_4;
tem=tem_5_29_6_4-273.15;
hum=hum_5_29_6_4;
p=p_5_29_6_4;
ws=ws_5_29_6_4;
subplot(331),plot(co,pm25,'b*');
xlabel('CO'),ylabel('PM2.5');
title('corr=0.9244');
subplot(332),plot(no2,pm25,'b*');
xlabel('NO2'),ylabel('PM2.5');
title('corr=0.4354');
subplot(333),plot(so2,pm25,'b*');
xlabel('SO2'),ylabel('PM2.5');
title('corr=0.7539');
subplot(334),plot(o3,pm25,'b*');
xlabel('O3'),ylabel('PM2.5');
title('corr=0.0002');
subplot(335),plot(pm10,pm25,'b*');
xlabel('PM10'),ylabel('PM2.5');
title('corr=0.8794');
subplot(336),plot(tem,pm25,'g*');
xlabel('Temperature'),ylabel('PM2.5');
title('corr=-0.1695');
subplot(337),plot(hum,pm25,'g*');
xlabel('Humidity'),ylabel('PM2.5');
title('corr=0.6567');
subplot(338),plot(p,pm25,'g*');
xlabel('Barometric Pressure'),ylabel('PM2.5');
title('corr=-0.2777');
subplot(339),plot(ws,pm25,'g*');
xlabel('Wind Speed'),ylabel('PM2.5');
title('corr=-0.3433');
end