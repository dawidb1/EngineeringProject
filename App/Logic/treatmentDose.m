function s = treatmentDose(DOSE, DAYS, t)
%TREATMENTDOSE calculate s(t) function - treatment dose over time

% DOSE and DAYS are vectors n = 5;
    MMI_BIO_AVAILABILITY = 0.93;
    AVG_MAN_VOLUME = 59.71;
    
    for i=1:length(DOSE)
        currentDose = DOSE(i);
        currendDays = DAYS(i);
        
        if i == 1

            days_down_limit = 0;
            days_up_limit = DAYS(i);
        else

            days_up_limit = DAYS(1:i);
            days_up_limit = sum(days_up_limit);
            days_down_limit = days_up_limit - DAYS(i);
        end

        if (days_down_limit <= t) && (t <= days_up_limit)
            s = MMI_BIO_AVAILABILITY * currentDose * currendDays / AVG_MAN_VOLUME;
        else
%             s = 0;
        end
    end
end

