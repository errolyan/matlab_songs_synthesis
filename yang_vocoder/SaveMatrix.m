function SaveMatrix(data, name)
% SaveMatrix -- save MATLAB matrix to general binary file

fid = fopen(name, 'w');
[n_row, n_column] = size(data);
magic = uint8('YANGVOCO');
fwrite(fid, magic, 'uint8');
fwrite(fid, n_column, 'int32');
fwrite(fid, n_row, 'int32');
for ii = 1:n_column
  fwrite(fid, data(:, ii), 'float32');
end;
fclose(fid);
end
