%% Vectores y matrices
% Los vectores son un arreglo de elementos, y las matrices son un arreglo de 
% vectores.
% 
% Existen diversas formas de crear vectores y matrices: 
% ** De forma explí­cita, es decir, manualmente.
% ** Mediante el operador dos puntos :
% ** Con funciones.
% ** A partir de otros vectores o matrices.
% ** Etc.

%% 
% Sin embargo, se explicarán dos temas a la vez: cuál es la diferencia entre 
% un escalar, un vector y una matriz, además de cómo crearlos.

%% Escalar
% Antes que nada, cabe destacar que todo en MATLAB/Octave es una arreglo, desde los 
% objetos más simples hasta lo más complejos. Dicho esto, las matrices son un 
% tipo de arreglo:
% ** Numérico.
% ** Ordenado
% ** Homogéneo.
%
% Ahora bien, un escalar es una matriz de dimensiones 1x1, es decir, una fila 
% y una columna.

clear
g = 9.81;
disp(g)
whos

%% Vector
% Un vector es una matriz donde una de sus dos dimensiones es 1: son de orden 
% 1xn o nx1, es decir, son matrices de 1 fila y n columnas, o matrices de 
% n filas y 1 columna.
% ** Cuando se trata de una matriz 1xn se le llama vector fila.
% ** Cuando se trata de una matriz nx1 se le llama vector columna.

clear
v1 = [1,2,3,4,5];
v2 = [1;2;3;4;5];

disp(v1)
disp(v2)
whos

%% Matriz
% Una matriz es un arreglo de dimensiones nxm.

clear
A = [1,2,3;4,5,6;7,8,9];

disp(A)
whos

%% Buenas prácticas para crear matrices
% Anteriormente se explicó cómo crear matrices de forma común dentro de MATLAB/Octave. 
% No obstante, existen diferentes formas de crearlas y depende del programador. 
% En especial, si el programador lo desea, se puede crear matrices de la siguiente 
% forma.

% ** Espacios en lugar de comas ,

a1 = [1,2,3,4,5];
a2 = [1 2 3 4 5];

% ** Transponer un vector en lugar de punto y coma ;

a3 = [6;7;8;9];
a4 = [6 7 8 9]';

% ** Utilizar intro y espacios en lugar de coma , y punto y coma ;

A1 = [1,2,3;4,5,6;7,8,9];
A2 = [
    1 2 3
    4 5 6
    7 8 9
    ];

%% Operador dos puntos :
% Para cear vectores linealmente espaciados se utiliza el operador dos puntos 
% :

clear
b1 = [1 2 3 4 5];
b2 = 1:5;

disp(b1)
disp(b2)

% MATLAB también reconoce b2 = [1:5], pero los corchetes son innecesarios
% al momento de utilizar el operador dos puntos.

% Por defecto el espaciamiento es 1, pero se puede establecer un espaciamiento 
% diferente.

b3 = [2 4 6 8];
b4 = 2:2:8;

disp(b3)
disp(b4)

%% Funciones de creación de arreglos
% Para crear vectores también se puede utilizar la función linspace. A diferencia 
% del operador dos puntos, donde se conoce el espaciamiento pero no la cantidad 
% de elementos, la función linspace permite conocer a priori la cantidad de 
% elementos pero no el espaciamiento.

d1 = linspace(0,3,5);
disp(d1)
