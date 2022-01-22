%% Indexación y modificación de arreglos
%% Indexar arreglos
% Indexar un arreglo no es más que extraer elementos de este mediante í­ndices.
% 
% Existen dos formas más comunes:
% ** Indexación simple
% ** Indexación por í­ndices

% ** Indexación simple
% Se utiliza principalmente cuando se trabaja con vectores.

clear
v = randi(10, 1, 5);
disp(v)

v(2)
v(5)

% ** Indexación por í­ndices
% Se utilizan los í­ndices del arreglo, número de fila y número de columna, para 
% extraer los elementos.

clear
M = randi(100, 4);
disp(M)

M(1,3)
M(4,3)

%% Extraer múltiples elementos
% Para extraer múltiples elementos basta con indicar sus í­ndices.

M([1 4], 1)
M(2, [2 3])
M(2:3, 1:2)
M(1,:)

%% Cambiar valores en arreglos
% Dado que se pueden extrar elementos de un arreglo, éstos se los puede reemplazar 
% en el arreglo original.

disp(M)
M(1,1) = 0;
M(:, 2) = [0 0 0 0]';

disp(M)
