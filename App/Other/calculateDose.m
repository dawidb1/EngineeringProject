function dose = calculateDose(c, days)
%CALCULATE-C Summary of this function goes here
%   Detailed explanation goes here

MMI_BIO_AVAILABILITY = 0.93;
AVG_MAN_VOLUME = 59.71;

dose = c * AVG_MAN_VOLUME / (MMI_BIO_AVAILABILITY * days)

end

