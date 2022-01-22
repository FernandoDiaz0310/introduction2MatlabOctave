%% Cálculos de arreglos
%% Suma y resta
% Las operaciones de suma y resta de un vector o matriz con un escalar se realizan 
% elemento a elemento, caso contrario debe existir una relación de dimensión o 
% ser arreglos con las mismas dimensiones.

clear
v1 = 1:5;

disp(v1)
disp(v1 + 1)
disp(v1 - 1)

%% 
% Mientras que con la relación de dimensión se tiene:

v2 = (1:5)';
disp(v1 + v2)

%% 
% Y para operaciones con arreglos con las mismas dimensiones:

v3 = 6:10;
disp(v3)
disp(v1 + v3)

%% Multiplicación y división
% Aquí­ ya se puede diferenciar entre operaciones dentro de MATLAB, puesto que 
% existen dos tipos de operaciones: matricial y elemento a elemento.
% 
% Las operaciones elemento a elemento operan entre los correspondientes elementos 
% de un arreglo, mientras que las operaciones matriciales siguen las reglas del 
% álgebra lineal.
% 
% Para utilizar una operación matricial, basta con usar el operador (* / ^ 
% etc.) mientras que para utilizar una operación elemento a elemento se escribe 
% un junto antes del operador (.* ./ .^ etc.).

disp(v1)
disp(v3)
disp(v1 .* v3)
disp(v3 ./ v1)
