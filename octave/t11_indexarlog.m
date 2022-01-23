%% Arreglos lógicos
%% Cómo crear valores lógicos
% Hasta el momento hemos venido trabajando con arreglos numéricos (matrices). 
% No obstante, también existen los arreglos lógicos.
% 
% Estos arreglos se caracterizan por tener valores booleanos o lógicos, es decir, 
% verdadero o falso. Sin embargo, dentro de MATLAB los valores booleanos se 
% representan mediante 0 y 1 lógicos.

% ** 0 lógico para falso.
% ** 1 lógico para verdadero.

%% 
% Ahora bien, los valores lógicos se pueden obtener de diferentes maneras. Una 
% de ellas es utilizar la función true o false que crearán un valor lógico.

true
false

%% 
% O también se pueden generar valores lógicos a partir de comparaciones lógicas.

a1 = 5 == 1
a2 = 10 < 0

%% Arreglos lógicos
% Ahora bien, también es posible comparar una matriz con un escalar para obtener 
% una matriz lógica.

M = randi(10, 5)
M > 8

%% Indexación lógica
% Entonces, cuando se tiene un arreglo lógico se lo puede utilizar para indexar 
% otro arreglo. Esto es increí­blemente útil para evitar el uso de estructuras 
% de repetición (o bucles para los panas) y vectorizar el código, es decir, 
% para optimizarlo.

M
M > 8
M(M > 8)

%% 
% Quizá se vea más fácil con un ejemplo.
% 
% Dada una matriz 10x10 de números enteros aleatorios uniformes entre el 1 
% y el 100, determinar los elementos que son divisibles para 7.
% 
% Nota: Se podrí­a hacer con estructuras de repetición, pero hasta este momento 
% no se las ha estudiado y tampoco es necesario. 

clear
num1to100 = randi(100, 10)
idx = rem(num1to100, 7) == 0
multiplos7 = num1to100(idx)
