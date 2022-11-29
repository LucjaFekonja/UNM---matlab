function w = pretvori_v_desetisko_bazo(v, p)
% pretvori število v iz zapisa v bazi p v desetiško bazo.

decimalni_ostanek = double(mod(v, 1));
celi_del = floor(v);


index_celega_dela = 0;
resitev = 0;
while celi_del > 0
    ostanek = mod(celi_del, 10);
    resitev = resitev + ostanek * power(p, index_celega_dela);
    celi_del = floor(celi_del / 10);
    index_celega_dela = index_celega_dela + 1;
end

index_decimalnega_dela = -1;
while decimalni_ostanek > 1e-5
    trenutna_stevka = floor(int16(decimalni_ostanek * 10));
    potenca_baze = power(p, index_decimalnega_dela);
    resitev = double(resitev) + double(trenutna_stevka) * potenca_baze;
    decimalni_ostanek = (decimalni_ostanek * 10) - double(trenutna_stevka);
    index_decimalnega_dela = index_decimalnega_dela - 1;
end

w = resitev;