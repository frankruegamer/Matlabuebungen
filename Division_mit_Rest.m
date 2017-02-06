function [ Ergebnis,Rest ] = Division_mit_Rest( Dividend,Divisor )
    if Dividend <= 0 || Divisor <= 0
        error('Bitte positiven Dividend und Divisor wählen');
    end
    
    Ergebnis=0;
    Rest=Dividend;
    
    while (Divisor > 0) && (Rest >= Divisor)
        Rest=Rest-Divisor;
        Ergebnis=Ergebnis+1;
    end
end

