function [  ] = append_data_1(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for  add_time=1:10000
    fprintf('%d',add_time);
fid_a=fopen('PM2p5-1data1-10000.txt','a');
fid=fopen('PM2p5-1data.txt');
tline = fgets(fid);
while ischar(tline)

    fprintf(fid_a,'%d%s',add_time,tline);

    tline = fgets(fid);
end

fclose(fid);
fclose(fid_a);
end
end


