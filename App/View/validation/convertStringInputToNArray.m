function [arrayOutput] = convertStringInputToNArray(textInput, N)
%VALIDATEDOSE convert string to number array 5x1
%input must be string divided by comma like '1,2,3,4';

%             convert string inputs

arrayOutput = str2double(strsplit(textInput,','));

zeroo = zeros(1,N);
arrayOutput = [arrayOutput zeroo];
arrayOutput = arrayOutput(1:N);
end

