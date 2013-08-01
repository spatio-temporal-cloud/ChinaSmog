function [] = plot_corr2()
%PLOT_CORR_AIR2 Summary of this function goes here
%   Detailed explanation goes here
%CO SO2 NO2 O3 PM10
%Temperature, humidity, barometric pressure, wind speed
%beijing tianjing xian shenyang wuhan chongqing nanjing shanghai hangzhou xiamen
%guangzhou kunming haikou wulumuqi lasa 

matrix_air=[
0.9386851753616189 0.258969860791704 0.6581570683704053 -0.6635269314557718 -0.2977764048768346;
0.2970151730349192 -0.16850873086653623 -0.026044544347534202 -0.02117785491228566 0.8185927043807736;
0.2986362731490203 0.6343849529640924 0.16211000940220266 0.010503059008651422 0.7082407905284146;
-0.22439585481827892 0.7451477615814248 0.6315436799893476 -0.4581777004574942 0.8666273010400635;
0.3123713747600385 -0.013354235782942774 0.7075072956787276 -0.4034868510682738 0.8692662073809835;
-0.11292670141202547 0.8390622144185877 0.5214842068989374 0.7769172807173164 0.9198664009212294;
0.07377788824490299 0.6811835242721188 0.14513234555854404 -0.2604366604678699 0.9357889308526842;
0.563018660508155 -0.5401866524019254 0.372485801969262 0.775843257208883 0.7682180724839671;
0.58396714256749 0.22193222960558825 0.37849829543115926 0.3402777448299055 0.6024947912953795;
0.7126157357741357 0.33463312692567815 0.553892198701271 -0.4698124208731544 0.9244870571418045;
0.3567886930023228 0.48890845422695933 0.21933711907859263 0.17361596961926382 0.8457571976029713;
0.6529495748109188 0.3156602985718347 0.6766649524509585 0.2276900062306776 0.3406992551357994;
-0.05812292509171005 0.05010449332191698 -0.15483677624379355 0.06768958480178659 -0.2954076429291729;
-0.2591339024790996 0.2189240050357496 0.490207111903481 -0.4903353758928199 0.6227624354261166;
0.4289949635852619 0.6345504909496118 0.6276355213818325 -0.5999190939930763 0.8547516006560512;
];
matrix_weather=[
-0.48672293064809197 0.5017199472145376 0.3899595135419343 -0.487845183547441;
-0.03451255045022823 0.38575211697050515 0.10032577813659313 0.4060150840811186;
-0.38336088858459194 0.6741219075332741 0.5920673083609594 0.4260331993940553;
0.6700388325806517 -0.7073976945404608 0.6413062483853513 -0.6535675543866827;
-0.2368622580893463 0.10490187578152815 -0.22664456340662492 -0.2660235922389258;
0.8414627844000605 -0.6903681015935125 -0.2035376875264276 -0.16913337459434938;
-0.15287964766076512 0.19406370662993827 0.1963908961463598 0.1989727425761564;
0.6674996938132969 -0.699127202027389 -0.7277220534198087 -0.04987397424646002;
0.26216802258765 -0.3239706569894847 -0.24158032533655396 0.02941871126668481;
0.5557563915934265 -0.29512938195262175 0.36091671685381715 -0.07025356344817332;
-0.10910994650144137 0.15417335899171478 -0.37255186432668314 -0.6686170453102589;
0.2666703158114223 0.2564613647281571 0.40625947773506976 -0.3122244511691584
-0.2163886712388679 0.2564613647281571 0.2273558201029094 -0.0531472491302192;
-0.5584802107193515 0.43329398447151113 0.5393450727693191 0.07782967076253158;
-0.025716988066013764 -0.23516038323406924 -0.2715944739803451 0.14968924105206885;
];

    subplot(2,1,1)
    bar(matrix_air);
    legend('CO','SO2','NO2','O3','PM10');
    xlabel('Cities');
    ylabel('Correlation Coefficient');
    title('Air Pollutants');
    set(gca, 'XTick', 1:15);
    set(gca,'XTickLabel',{'Beijing','Tianjing','Xian','Shenyang','Wuhan','Chongqing','Nanjing','Shanghai','Hangzhou','Xiamen','Guangzhou','Kunming','Haikou','Wulumuqi','Lasa'});

    subplot(2,1,2);
    bar(matrix_weather);
    legend('Temperature','Humidity','Pressure','Wind Speed');
    xlabel('Cities');
    ylabel('Correlation Coefficient');
    title('Weather Conditions');
    set(gca, 'XTick', 1:15);
    set(gca,'XTickLabel',{'Beijing','Tianjing','Xian','Shenyang','Wuhan','Chongqing','Nanjing','Shanghai','Hangzhou','Xiamen','Guangzhou','Kunming','Haikou','Wulumuqi','Lasa'});

end 



