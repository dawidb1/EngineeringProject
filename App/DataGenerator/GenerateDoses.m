function Doses = GenerateDoses()

    dose1 = Dose;
    dose1.grams = 30;
    dose1.days = 10;
    
    dose2 = Dose;
    dose2.grams = 10;
    dose2.days = 30;
    
    dose3 = Dose;
    dose3.grams = 30;
    dose3.days = 30;

    Doses = [dose1, dose2, dose3];
    save Doses.mat Doses
end