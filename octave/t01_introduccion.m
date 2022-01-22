%% Introducción al cuso
%% Ideas previas
% Pregunta previa, ¿por qué es necesario saber programar?
% 
% Empecemos por un ejemplo: resolver el siguiente sistema de ecuaciones.
% 
%   7x + 3y = 2
%   2x -2 y = 1
% 
% Se podría despejar una variable de una ecuación y reemplazar en la otra, o 
% se podrí­an igualar dos variables, o se podrí­a utilizar la regla de Crammer, 
% etc. Pero, ¿qué tal utilizar álgebra lineal?
% 
% Es decir, convertir el sistema anterior en una expresión matricial de la 
% forma Ax=b, donde A es la matriz de coeficientes, b es la matriz de términos 
% independientes y x es la matriz de soluciones.
% 
% Resolviendo el sistema de esta forma, esta sería la solución:

A = [
    7  3
    2 -2
    ];
b = [2 1]';

x1 = A\b
%% 
% Aunque claro, un sistema de dos ecuaciones y dos incógnitas tampoco es un 
% gran desafío. ¿Qué tal el siguiente sistema?
% 
%   2x +  y +  z +  t = 8
%    x - 2y + 6z - 2t = 2
%   3x - 3y + 4z - 4t =-4
%    x - 4y + 2z - 3t =-3
% 
% El sistema sigue siendo lineal, ¿pero sigue siendo igual de sencillo? Manualmente 
% sería un poco largo, pero de cualquier manera se podrí­a llegar a la solución. 
% Sin embargo, en MATLAB sí es igual de sencillo.

A = [
    2  1  1  1
    1 -2  6 -2
    3 -3  4 -4
    1 -4  2 -3
    ];
b = [8 2 -4 -3]';

x2 = A\b

%% 
% ¿Y si se tuviera un sistema lineal de diez ecuaciones con diez incógnitas? 
% ¿O de veinte? Bueno, creo que la idea es clara. Si bien manualmente esto serí­a 
% realmente tedioso, mediante la programación es realmente sencillo, siempre 
% y cuando se sepa y entienda qué es lo que se está haciendo.
% 
% Esto es sólo una pequeña muestra del potencial que tiene MATLAB cuando se 
% trata de trabajar con matrices, además de otras funcionalidades.

%% ¿Por qué programar en MATLAB/Octave?
% MATLAB proviene de dos palabras: MATrix LABoratory, es decir, laboratorio 
% de matrices. Es decir, MATLAB/Octave está diseñado para trabajar con matrices. Es 
% más, su unidad fundamental es la matriz.
% 
% Nota: Técnicamente su unidad fundamental es el arreglo, pero una matriz 
% es un arreglo numérico ordenado de filas y columnas, pero para simplificar se 
% puede decir que arreglo y matriz son lo mismo, aunque en realidad una matriz 
% sea un tipo particular de arreglo.
% 
% Como ingenieros y/o cientí­ficos hemos aprendido álgebral lineal, estadí­stica, 
% cálculo en una y varias variables, entre otras; por mencionar algunas materias 
% universales. Luego en cada ingenierí­a/ciencia se estudia materias especializadas 
% a cada campo utilizando como base las materias universales. Entonces, ¿no serí­a 
% ideal un lenguaje que ya conozca nuestra idioma?
% 
% Exactamente esto es MATLAB/Octave, un lenguaje de programación especializado para 
% ingenieros y/o cientí­ficos. 

%%
% 
% Esto ya es una opinión personal y por experiencia lo puedo decir: 
% MATLAB es ideal para quienes no tienen ni idea de programar. MATLAB tiene integrado 
% todo, tanto el lenguaje como el editor, además de los paquetes y librerí­as que 
% utiliza. Esto es extremadamente útil para alguien que no tiene idea de todo 
% esto porque no tiene que concentrarse en aprender sobre ello, sólo tiene que 
% enfocarse en aprender la lógica de programar.
% 
% Una vez dentro del mundo de la programación, al cual MATLAB es el mejor para 
% dar la bienvenida, es sencillo ir a otros lenguajes y ya con conocimientos, 
% además de confianza, emprender la ruta del aprendizaje de librerí­as, editores, 
% lenguajes, etc.
