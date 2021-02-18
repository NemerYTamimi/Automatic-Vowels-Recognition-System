function [ means ] = mean_function( x )
ans_features=[];

for i = 1:length(x)
file_path = strcat(x(i).folder,'\',x(i).name);% get the file path with name
[samples,fs] = audioread(file_path); % read the audio file

y = buffer(samples, 440, 220);
[m,N] = size(y);
H=hamming(440);
yh=y.*H;
yhf=abs(fft(yh,265));%it may be 512
yps = yhf(1:256,:);
Triangles = fft2melmx(256, 22050,32,1.0, 23, 11025);
ymel = Triangles * yps;
ymel= ymel+ mean(ymel(:)); 
ymel = log(ymel); 
ydct = dct(ymel, 14);
ydct = bsxfun(@minus, ydct, mean(ydct)); 

ydct = bsxfun(@rdivide, ydct, std(ydct)); 
ans_features=[ans_features ydct];
end

ans_features = bsxfun(@minus, ans_features, mean(ans_features)); 
ans_features = bsxfun(@rdivide, ans_features, std(ans_features));
ans_features=ans_features.';
[idex, means] = kmeans(ans_features, 19);

end

