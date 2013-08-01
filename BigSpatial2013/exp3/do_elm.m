function [Accuracy,TAccuracy] = do_elm(  )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


min=100000;
Accuracy= zeros(1,12);
TAccuracy=zeros(1,12);
for i=1:10
    [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy] = elm('temporal_tran_train_720727', 'temporal_tran_test_720727', 0, 20, 'sig');
    Accuracy(1,i)=TrainingAccuracy;
    TAccuracy(1,i)=TestingAccuracy;
end
Accuracy(1,11)=mean(Accuracy(1,1:10));
Accuracy(1,12)=std(Accuracy(1,1:10));
TAccuracy(1,11)=mean(TAccuracy(1,1:10));
TAccuracy(1,12)=std(TAccuracy(1,1:10));
end

