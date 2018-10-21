function rownania = uklad_rownan(t, data)
    
    stateVector = data(1:5,1);
    stateVector = transpose(stateVector);
    
    patientVector = data(6:17,1);
    patientVector = transpose(patientVector);
    
    patient = Patient(patientVector);
    state = State(stateVector);

    T_MIN = 0;
    T_MAKS = 10;

    %Pobranie z wektora x parametrów i warunków początkowych
    x = state.MMI;   %ammount of MMI mg/L of blood serum at time t
    y = state.FT4;   %amount of FT4 pg/mL of blood serum at time t
    z = state.Thyroid_Size;   %functional size of thyroid gland (mL) or the volume of proportion of active cells at time t
    w = state.TRAb;   %the amount of TRAb (U) per milliliter of blood serum at time t
%     s = state.MMI_Orally;   %the amount of MMI orally taken per day per liter of body volume (mg/L/day)

    k1 = patient.k1;
    ka = patient.ka;
    k2 = patient.k2;
    k3 = patient.k3;
    kd = patient.kd;
    k4 = patient.k4;
    k5 = patient.k5;
    N = patient.N;
    k6 = patient.k6;
    k7 = patient.k7;
    kb= patient.kb;
    k8 = patient.k8;

    % make s(t)
    MMI_BIO_AVAILABILITY = 0.93;
    DAYS = 45;
    AVG_MAN_VOLUME = 59.71;

    if (T_MIN <= t) && (t >= T_MAKS)
        s = MMI_BIO_AVAILABILITY * x * DAYS / AVG_MAN_VOLUME;
    else
        s = 0;
    end
    
    % rownania rozniczkowe
    dx_dt = s - (k1*z*x)/(ka+x) - k2*x;
    dy_dt = (k3*z)*w/(kd+w) - k4*y;
    dz_dt = k5*(w/z - N) - k6*z*x;
    dw_dt = k7 - k7*x/(kb+x) - k8*w;
    
    %return
    trzynascieZer = [0;0;0;0;0;0;0;0;0;0;0;0;0];
    rownania = [
        dx_dt; 
        dy_dt;
        dz_dt;
        dw_dt;
        trzynascieZer
    ];
end

 