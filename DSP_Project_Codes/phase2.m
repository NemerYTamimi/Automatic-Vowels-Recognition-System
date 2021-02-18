clc
clear
%written by NemerTamimi-1170025, Dana Ayoub-1170501 and Amal Aburaad 1170747
training_files_had = dir('C:\DSP_Project_Data\had\*.wav');
training_files_hade = dir('C:\DSP_Project_Data\hade\*.wav');
training_files_hard = dir('C:\DSP_Project_Data\hard\*.wav');
training_files_head = dir('C:\DSP_Project_Data\head\*.wav');
training_files_heard = dir('C:\DSP_Project_Data\heard\*.wav');
training_files_heed = dir('C:\DSP_Project_Data\heed\*.wav');
training_files_hid = dir('C:\DSP_Project_Data\hid\*.wav');
training_files_hide = dir('C:\DSP_Project_Data\hide\*.wav');
training_files_hoard = dir('C:\DSP_Project_Data\hoard\*.wav');
training_files_hod = dir('C:\DSP_Project_Data\hod\*.wav');
training_files_hood = dir('C:\DSP_Project_Data\hood\*.wav');
training_files_hudd = dir('C:\DSP_Project_Data\hudd\*.wav');
training_files_whod = dir('C:\DSP_Project_Data\whod\*.wav');
testing_files = dir('C:\DSP_Project_Data\testing\*.wav');
had_sig=files2fft(training_files_had);
hade_sig= files2fft(training_files_hade);
hard_sig= files2fft(training_files_hard);
head_sig= files2fft(training_files_head);
heard_sig= files2fft(training_files_heard);
heed_sig= files2fft(training_files_heed);
hid_sig= files2fft(training_files_hid);
hide_sig= files2fft(training_files_hide);
hoard_sig= files2fft(training_files_hoard);
hod_sig= files2fft(training_files_hod);
hood_sig= files2fft(training_files_hood);
hudd_sig= files2fft(training_files_hudd);
whod_sig= files2fft(training_files_whod);
success=0;

for i = 1:length(testing_files)
file_path = strcat(testing_files(i).folder,'\',testing_files(i).name);% get the file path with name
    in=audioread(file_path);
    in=in(2000:6000);
    t=abs(fft(in,5000));
    t=t(1:2500);

d1  = dist3(t, had_sig);
  d2  = dist3(t, hade_sig);
  d3  = dist3(t, hard_sig);
  d4  = dist3(t, head_sig);
  d5  = dist3(t, heard_sig);
  d6  = dist3(t, heed_sig);
  d7  = dist3(t, hid_sig);
  d8  = dist3(t, hide_sig);
  d9  = dist3(t, hoard_sig);
  d10 = dist3(t, hod_sig);
  d11 = dist3(t, hood_sig);
  d12 = dist3(t, hudd_sig);
  d13 = dist3(t, whod_sig);
  
  had_score  = mean(min(d1,[],2));
  hade_score = mean(min(d2,[],2));
  hard_score = mean(min(d3,[],2));
  head_score = mean(min(d4,[],2));
  heard_score= mean(min(d5,[],2));
  heed_score = mean(min(d6,[],2));
  hid_score  = mean(min(d7,[],2));
  hide_score = mean(min(d8,[],2));
  hoard_score= mean(min(d9,[],2));
  hod_score  = mean(min(d10,[],2));
  hood_score = mean(min(d11,[],2));
  hudd_score = mean(min(d12,[],2));
  whod_score = mean(min(d13,[],2));
  
 find_min_array=[had_score hade_score hard_score head_score heard_score heed_score hid_score hide_score hoard_score hod_score hood_score hudd_score whod_score];
[M,I]=min(find_min_array);


if(ceil(i/3) == 1)
    
    fprintf(' Expected: had \t');
 elseif(ceil(i/3) == 2)
     
    fprintf(' Expected: hade \t');
 elseif(ceil(i/3) == 3)
      
    fprintf(' Expected: hard \t');
 elseif(ceil(i/3) == 4)
      
    fprintf(' Expected: head \t');
 elseif(ceil(i/3) == 5)
      
    fprintf(' Expected: heard \t');
 elseif(ceil(i/3) == 6)
      
    fprintf(' Expected: heed \t');
 elseif(ceil(i/3) == 7)
      
    fprintf(' Expected: hid \t');
 elseif(ceil(i/3) == 8)
     
    fprintf(' Expected: hide \t');
 elseif(ceil(i/3) == 9)
     
    fprintf(' Expected: hoard \t');
 elseif(ceil(i/3) == 10)
      
    fprintf(' Expected: hod \t');
 elseif(ceil(i/3) == 11)
     
    fprintf(' Expected: hood \t');
 elseif(ceil(i/3) == 12)
     
    fprintf(' Expected: hudd \t');
 elseif(ceil(i/3) == 13)
      
    fprintf(' Expected: whod \t');
end

if(I == 1)
    fprintf(' Result: had \n');
 elseif(I == 2)

    fprintf(' Result: hade \n');
 elseif(I == 3)
      
    fprintf(' Result: hard \n');
 elseif(I == 4)
      
    fprintf(' Result: head \n');
 elseif(I == 5)
      
    fprintf(' Result: heard \n');
 elseif(I == 6)
      
    fprintf(' Result: heed \n');
 elseif(I == 7)
      
    fprintf(' Result: hid \n');
 elseif(I == 8)
     
    fprintf(' Result: hide \n');
 elseif(I == 9)
     
    fprintf(' Result: hoard \n');
 elseif(I == 10)
      
    fprintf(' Result: hod \n');
 elseif(I == 11)
     
    fprintf(' Result: hood \n');
 elseif(I == 12)
     
    fprintf(' Result: hudd \n');
 elseif(I == 13)
      
    fprintf(' Result: whod \n');
end

if(ceil(i/3)==I)
    success=success+1;
end

end
fprintf('\nsuccess rate =%0.2f',(100.*success)./39);
