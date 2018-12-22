function Doses = GenerateDoses()

    dose1 = Dose(30,10);
    dose2 = Dose(10,30);
    dose3 = Dose(30,30);
    
    Doses = [dose1, dose2, dose3];
    save Doses.mat Doses
end