function parsingErrorDialog(axis)
%PARSINGERRORDIALOG Show parsing error dialog
%   Detailed explanation goes here
    title = "Parsing error";
    message = ["Dose and days must be number or number array." ...
    "Pattern is '30' or '4, 50, 20, 10'." newline  ...
    "Maximum size of array is 5."];
    uialert(axis, message, title);
end

