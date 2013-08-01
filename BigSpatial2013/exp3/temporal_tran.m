function [  ] = temporal_tran( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

 load temporal_test
 load temporal_train
 
 first_test=temporal_test(:,1);
 first_train=temporal_train(:,1);
 
 tran_test=temporal_test(:,2:5);
  tran_train=temporal_train(:,2:5);

  [tran_testPN]=mapminmax(tran_test',0,1);
  [tran_trainPN]=mapminmax(tran_train',0,1);
  
  final_test=[first_test tran_testPN']
  final_train=[first_train tran_trainPN']
  
  fid = fopen('temporal_tran_test_65611','w');
  for i=1:size(final_test,1)
      for j=1:size(final_test,2)
          fprintf(fid,' %2.8f', final_test(i,j));  
      end
      fprintf(fid,'\n');
  end
  fclose(fid);
  
   fid = fopen('temporal_tran_train_65611','w');
  for i=1:size(final_train,1)
      for j=1:size(final_train,2)
          fprintf(fid,' %2.8f', final_train(i,j));  
      end
      fprintf(fid,'\n');
  end
  fclose(fid);
  
  
  
  
end

