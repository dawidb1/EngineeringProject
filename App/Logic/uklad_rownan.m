function rownania = uklad_rownan(t, ukladVector)

    InitialValuesVector =  ukladVector(1:4);
    PatientVector =  ukladVector(5:16);
    DoseVector = ukladVector(17:26);
   
    %Pobranie z wektora x parametrów i warunków początkowych
    x = InitialValuesVector(1);  %ammount of MMI mg/L of blood serum at time t
    y = InitialValuesVector(2);   %amount of FT4 pg/mL of blood serum at time t
    z = InitialValuesVector(3);   %functional size of thyroid gland (mL) or the volume of proportion of active cells at time t
    w = InitialValuesVector(4);   %the amount of TRAb (U) per milliliter of blood serum at time t
%     s = state.MMI_Orally;   %the amount of MMI orally taken per day per liter of body volume (mg/L/day)

    k1 = PatientVector(1);
    k2 = PatientVector(2);
    ka = PatientVector(3);
    k3 = PatientVector(4);
    kd = PatientVector(5);
    k4 = PatientVector(6);
    k5 = PatientVector(7);
    N = PatientVector(8);
    k6 = PatientVector(9);
    k7 = PatientVector(10);
    kb= PatientVector(11);
    k8 = PatientVector(12);

    % make s(t)
    DOSE = DoseVector(1:5);
    DAYS = DoseVector(6:10);
    s = treatmentDose(DOSE,DAYS, t);
 
    % rownania rozniczkowe
    dx_dt = s - (k1*z*x)/(ka+x) - k2*x;
    dy_dt = (k3*z)*w/(kd+w) - k4*y;
    dz_dt = k5*(w/z - N) - k6*z*x;
    dw_dt = k7 - k7*x/(kb+x) - k8*w;
    
    %return
    fewZeroes = [0;0;0;0;0;0;0;0;0;0;0;0];
    doseArrayZeroes = [0;0;0;0;0;0;0;0;0;0];
    rownania = [
        dx_dt; 
        dy_dt;
        dz_dt;
        dw_dt;
        fewZeroes;
        doseArrayZeroes;
    ];
end

 