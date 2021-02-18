function [p]=files2fft(filename)
p=[];
for i = 1:length(filename)
    file_path = strcat(filename(i).folder,'\',filename(i).name);% get the file path with name
    in=audioread(file_path);
    in=in(2000:6000);
    f=abs(fft(in,5000));
    f=f(1:2500);
    p=[p f];
end
p= mean(p,2);