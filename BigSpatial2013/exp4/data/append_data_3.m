function [  ] = append_data_3(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for  add_time=1:2000
    fprintf('%d',add_time);
fid_a=fopen('PM2p5-3data1-2000.txt','a');
fid=fopen('PM2p5-3data.txt');
tline = fgets(fid);
while ischar(tline)
    fprintf(fid_a,'%d%s',add_time,tline);
    tline = fgets(fid);
end
fclose(fid);
fclose(fid_a);
end
end


