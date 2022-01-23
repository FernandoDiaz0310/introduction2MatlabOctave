%% Arreglos l�gicos
%% C�mo crear valores l�gicos
% Hasta el momento hemos venido trabajando con arreglos num�ricos (matrices). 
% No obstante, tambi�n existen los arreglos l�gicos.
% 
% Estos arreglos se caracterizan por tener valores booleanos o l�gicos, es decir, 
% verdadero o falso. Sin embargo, dentro de MATLAB los valores booleanos se 
% representan mediante 0 y 1 l�gicos.

% ** 0 l�gico para falso.
% ** 1 l�gico para verdadero.

%% 
% Ahora bien, los valores l�gicos se pueden obtener de diferentes maneras. Una 
% de ellas es utilizar la funci�n true o false que crear�n un valor l�gico.

true
false

%% 
% O tambi�n se pueden generar valores l�gicos a partir de comparaciones l�gicas.

a1 = 5 == 1
a2 = 10 < 0

%% Arreglos l�gicos
% Ahora bien, tambi�n es posible comparar una matriz con un escalar para obtener 
% una matriz l�gica.

M = randi(10, 5)
M > 8

%% Indexaci�n l�gica
% Entonces, cuando se tiene un arreglo l�gico se lo puede utilizar para indexar 
% otro arreglo. Esto es incre�blemente �til para evitar el uso de estructuras 
% de repetici�n (o bucles para los panas) y vectorizar el c�digo, es decir, 
% para optimizarlo.

M
M > 8
M(M > 8)

%% 
% Quiz� se vea m�s f�cil con un ejemplo.
% 
% Dada una matriz 10x10 de n�meros enteros aleatorios uniformes entre el 1 
% y el 100, determinar los elementos que son divisibles para 7.
% 
% Nota: Se podr�a hacer con estructuras de repetici�n, pero hasta este momento 
% no se las ha estudiado y tampoco es necesario. 

clear
num1to100 = randi(100, 10)
idx = rem(num1to100, 7) == 0
multiplos7 = num1to100(idx)
