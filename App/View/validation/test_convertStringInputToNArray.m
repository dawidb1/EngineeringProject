input = '10, 12, 20, 30';
expected = [10 12 20 30 0]; % N element array

result = convertStringInputToNArray(input, 5);

if isequal(result, expected)
    disp('convertStringInputToNArray correct!'); 
else
    disp('convertStringInputToNArray failed!'); 
end