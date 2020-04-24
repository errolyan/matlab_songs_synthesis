function AudioWrite(fname, y, fs)
% wrapper function of audiowrite for Octave compatibiliyty
%
% AudioWrite(fname, y, fs)
%

narginchk(3, 3);
audiowrite(fname, y, fs);
end