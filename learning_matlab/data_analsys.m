T = readtable('./datasets/price_pai_head.csv');
T(1:5,1:5)
img = imread('./datasets/1.png');
whos img
info = audioinfo('./datasets/008.wav')
[y,Fs] = audioread('./datasets/008.wav');

t = 0:seconds(1/Fs):seconds(info.Duration);
t = t(1:end-1);
plot(t,y)
xlabel('Time')
ylabel('Audio Signal')

