function out = Signal_Energy(data)
    Energy_Sig = (data.*conj(data));
    Energy_Diff = sum(abs(energ(1:end-1) - energ(2:end)));
    out = Energy_Sig
end
