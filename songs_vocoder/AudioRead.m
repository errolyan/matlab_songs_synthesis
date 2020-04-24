function [x, fs] = AudioRead(fname)
% wrapper function of audioread for Octave compatibiliyty
%
% [x, fs] = AudioRead(fname)
%

narginchk(1, 1);
[x, fs] = audioread(fname)
end
