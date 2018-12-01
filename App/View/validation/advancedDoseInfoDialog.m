function advancedDoseInfoDialog(axis)
%ADVANCEDDOSEINFODIALOG advanced dose info dialog
%   Detailed explanation goes here
    title = "Advanced treatment info";

    message = ['To use advanced treatment, please provide dose and days as multiple number devided by comma.' newline newline  ...
    'For example: DAYS: 30, 5  DOSE: 20, 20.' newline newline ...
    'Max provided number is 5.'];
    uialert(axis, message, title,'Icon', 'info');
end

