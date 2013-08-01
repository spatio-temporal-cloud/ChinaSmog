function [] = plot_urban_factors( )
%PLOT_URBAN_FACTORS Summary of this function goes here
%   Detailed explanation goes here
avg_matrix=[0.017221209913834475 0.13956674973981434 0.24003991210150566 0.074952974837268651 -0.12122404804088698 ];
hour_matrix=[0.037339355914656626 0.13827920074649144 0.22950689874739516 0.081132236755545 -0.09012125543158739 ];
subplot(1,2,1),bar(avg_matrix);
xlabel('Urban Factors');
ylabel('Correlation Coefficients');
set(gca, 'XTick', 1:5);
axis([0,6,-1,1]);
set(gca,'XTickLabel',{'Area','Pop','Density','GDP','GDPPC'})
subplot(1,2,2),bar(hour_matrix);
xlabel('Urban Factors');
ylabel('Correlation Coefficients');
axis([0,6,-1,1]);
set(gca, 'XTick', 1:5);
set(gca,'XTickLabel',{'Area','Pop','Density','GDP','GDPPC'})
end

