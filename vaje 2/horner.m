function y = horner(x, a)

% x ... točka v kateri računamo vrednost
% a ... seznam koeficientov
% p ... baza v kateri so zapisani koeficienti
% t ... dolžina mantise

%   pretvorimo vse koeficiente iz seznama a v desetiško bazo
%   d = a;
%   for j = 1:length(a)
%       d(j) = pretvori_v_desetisko_bazo(a(j), p);
%   end

% hornerjev algoritem za računanje polinoma
b(1) = a(length(a));
for i = 1 : length(a) - 1
    b(i + 1) = b(i) * x + a(length(a) - i);
end
y = b(length(b));



