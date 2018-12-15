function c = calculateC(dose, days)
%CALCULATE-C Summary of this function goes here
%   Detailed explanation goes here

MMI_BIO_AVAILABILITY = 0.93;
AVG_MAN_VOLUME = 59.71;

c = MMI_BIO_AVAILABILITY * dose * days / AVG_MAN_VOLUME;

end

