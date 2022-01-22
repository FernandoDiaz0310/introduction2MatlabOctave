%% Indexaci�n y modificaci�n de arreglos
%% Indexar arreglos
% Indexar un arreglo no es m�s que extraer elementos de este mediante �ndices.
% 
% Existen dos formas m�s comunes:
% ** Indexaci�n simple
% ** Indexaci�n por �ndices

% ** Indexaci�n simple
% Se utiliza principalmente cuando se trabaja con vectores.

clear
v = randi(10, 1, 5);
disp(v)

v(2)
v(5)

% ** Indexaci�n por �ndices
% Se utilizan los �ndices del arreglo, n�mero de fila y n�mero de columna, para 
% extraer los elementos.

clear
M = randi(100, 4);
disp(M)

M(1,3)
M(4,3)

%% Extraer m�ltiples elementos
% Para extraer m�ltiples elementos basta con indicar sus �ndices.

M([1 4], 1)
M(2, [2 3])
M(2:3, 1:2)
M(1,:)

%% Cambiar valores en arreglos
% Dado que se pueden extrar elementos de un arreglo, �stos se los puede reemplazar 
% en el arreglo original.

disp(M)
M(1,1) = 0;
M(:, 2) = [0 0 0 0]';

disp(M)
