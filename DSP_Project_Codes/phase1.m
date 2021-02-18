clear
clc
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
%---------------------------------------------------------------------------------------------------
success=0;

for k=1:length(testing_files)

[y1,fs] = audioread(strcat(testing_files(k).folder,'\',testing_files(k).name));
y1=y1';
y1=y1(1,:);
y1=y1';

%---------------------------------------------------------------------------------------------------
max_v=0;
for i = 1:length(training_files_had)
file_path = strcat(training_files_had(i).folder,'\',training_files_had(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1);
	index=1;
end
end

% read the 'hade' training files and calculate the energy of them.
for i = 1:length(training_files_hade)
file_path = strcat(training_files_hade(i).folder,'\',training_files_hade(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=2;
end
end

% read the 'hard' training files and calculate the energy of them.
for i = 1:length(training_files_hard)
file_path = strcat(training_files_hard(i).folder,'\',training_files_hard(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=3;
end
end

% read the 'head' training files and calculate the energy of them.
for i = 1:length(training_files_head)
file_path = strcat(training_files_head(i).folder,'\',training_files_head(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=4;
end
end

% read the 'heard' training files and calculate the energy of them.
for i = 1:length(training_files_heard)
file_path = strcat(training_files_heard(i).folder,'\',training_files_heard(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=5;
end
end

% read the 'heed' training files and calculate the energy of them.
for i = 1:length(training_files_heed)
file_path = strcat(training_files_heed(i).folder,'\',training_files_heed(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=6;
end
end

% read the 'hid' training files and calculate the energy of them.
for i = 1:length(training_files_hid)
file_path = strcat(training_files_hid(i).folder,'\',training_files_hid(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=7;
end
end

% read the 'hide' training files and calculate the energy of them.
for i = 1:length(training_files_hide)
file_path = strcat(training_files_hide(i).folder,'\',training_files_hide(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=8;
end
end

% read the 'hoard' training files and calculate the energy of them.
for i = 1:length(training_files_hoard)
file_path = strcat(training_files_hoard(i).folder,'\',training_files_hoard(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=9;
end
end

% read the 'hod' training files and calculate the energy of them.
for i = 1:length(training_files_hod)
file_path = strcat(training_files_hod(i).folder,'\',training_files_hod(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=10;
end
end

% read the 'hood' training files and calculate the energy of them.
for i = 1:length(training_files_hood)
file_path = strcat(training_files_hood(i).folder,'\',training_files_hood(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=11;
end
end

% read the 'hudd' training files and calculate the energy of them.
for i = 1:length(training_files_hudd)
file_path = strcat(training_files_hudd(i).folder,'\',training_files_hudd(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=12;
end
end

% read the 'whod' training files and calculate the energy of them.
for i = 1:length(training_files_whod)
file_path = strcat(training_files_whod(i).folder,'\',training_files_whod(i).name);% get the file path with name
[y,fs] = audioread(file_path); % read the audio file
y=y';
y=y(1,:);
y=y';
[F1,N1] =   xcorr(y1,y);
if(max(abs(F1))>max_v)
	max_v=max(F1); 
	index=13;
end
end
%------------------------------------------------------
if(ceil(k/3) == 1)
    
    fprintf(' Expected: had \t');
 elseif(ceil(k/3) == 2)
     
    fprintf(' Expected: hade \t');
 elseif(ceil(k/3) == 3)
      
    fprintf(' Expected: hard \t');
 elseif(ceil(k/3) == 4)
      
    fprintf(' Expected: head \t');
 elseif(ceil(k/3) == 5)
      
    fprintf(' Expected: heard \t');
 elseif(ceil(k/3) == 6)
      
    fprintf(' Expected: heed \t');
 elseif(ceil(k/3) == 7)
      
    fprintf(' Expected: hid \t');
 elseif(ceil(k/3) == 8)
     
    fprintf(' Expected: hide \t');
 elseif(ceil(k/3) == 9)
     
    fprintf(' Expected: hoard \t');
 elseif(ceil(k/3) == 10)
      
    fprintf(' Expected: hod \t');
 elseif(ceil(k/3) == 11)
     
    fprintf(' Expected: hood \t');
 elseif(ceil(k/3) == 12)
     
    fprintf(' Expected: hudd \t');
 elseif(ceil(k/3) == 13)
      
    fprintf(' Expected: whod \t');
end

if(index == 1)
    fprintf(' Result: had \n');
 elseif(index == 2)

    fprintf(' Result: hade \n');
 elseif(index == 3)
      
    fprintf(' Result: hard \n');
 elseif(index == 4)
      
    fprintf(' Result: head \n');
 elseif(index == 5)
      
    fprintf(' Result: heard \n');
 elseif(index == 6)
      
    fprintf(' Result: heed \n');
 elseif(index == 7)
      
    fprintf(' Result: hid \n');
 elseif(index == 8)
     
    fprintf(' Result: hide \n');
 elseif(index == 9)
     
    fprintf(' Result: hoard \n');
 elseif(index == 10)
      
    fprintf(' Result: hod \n');
 elseif(index == 11)
     
    fprintf(' Result: hood \n');
 elseif(index == 12)
     
    fprintf(' Result: hudd \n');
 elseif(index == 13)
      
    fprintf(' Result: whod \n');
end

if(ceil(k/3)==index)
    success=success+1;
end

end
success_rate=success/39*100;
fprintf('Success rate=%.2f\n',success_rate);