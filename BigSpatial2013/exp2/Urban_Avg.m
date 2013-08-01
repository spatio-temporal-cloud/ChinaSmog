function [  ] = Urban_Avg(  )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

load urban_A.txt;
load urban_area.txt;
load urban_density.txt;
load urban_GDP.txt; 
load urban_GDP_capita.txt; 
load urban_population.txt;

subplot(231),plot(urban_area,urban_A,'b*');
xlabel('urban_area'),ylabel('Avg');
title('corr=0.017221209913834475');
subplot(232),plot(urban_density,urban_A,'b*');
xlabel('urban_density'),ylabel('Avg');
title('corr=0.24003991210150566');
subplot(233),plot(urban_GDP,urban_A,'b*');
xlabel('urban_GDP'),ylabel('Avg');
title('corr=0.074952974837268651');
subplot(234),plot(urban_GDP_capita,urban_A,'b*');
xlabel('urban_GDP_capita'),ylabel('Avg');
title('corr=-0.12122404804088698');
subplot(235),plot(urban_population,urban_A,'b*');
xlabel('urban_population'),ylabel('Avg');
title('corr=0.13956674973981434');
end

