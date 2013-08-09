function [] = scaleup()
%SCALEUP Summary of this function goes here
%   Detailed explanation goes here
d1=[0.75
2.25
3
4.5
6
7.5
9
10.5
12
15
30
];
t1=[76
151
178
245
312
368
439
518
599
719
1462
];
m1=ones(size(d1,1)-1,1);
v1 = ones(size(t1,1)-1,1);
for i=1:1:size(t1,1)-1
    v1(i) = t1(i+1)/t1(1);
end
for i=1:1:size(d1,1)-1
    m1(i) = d1(i+1)/d1(1);
end

d2=[1
2
4
7.3
10.5
11.5
12.6
15.7
20
27.1
];

t2=[241
425
774
1371
1870
2148
2384
2878
3592
4963
];
m2=ones(size(d2,1)-1,1);
v2 = ones(size(t2,1)-1,1);
for i=1:1:size(t2,1)-1
    v2(i) = t2(i+1)/t2(1);
end
for i=1:1:size(d2,1)-1
    m2(i) = d2(i+1)/d2(1);
end

plot(m1,v1,'*-',m2,v2,'+-',1:40,1:40,'-.');
legend('Scaleup of Alg 1','Scaleup of Alg 3','y=x');
axis([0,40,0,40]);
xlabel('Data Increment (m)');
ylabel('Processing Time Increment');
end

