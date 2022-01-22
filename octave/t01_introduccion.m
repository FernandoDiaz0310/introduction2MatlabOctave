%% Introducci�n al cuso
%% Ideas previas
% Pregunta previa, �por qu� es necesario saber programar?
% 
% Empecemos por un ejemplo: resolver el siguiente sistema de ecuaciones.
% 
%   7x + 3y = 2
%   2x -2 y = 1
% 
% Se podr�a despejar una variable de una ecuaci�n y reemplazar en la otra, o 
% se podr�an igualar dos variables, o se podr�a utilizar la regla de Crammer, 
% etc. Pero, �qu� tal utilizar �lgebra lineal?
% 
% Es decir, convertir el sistema anterior en una expresi�n matricial de la 
% forma Ax=b, donde A es la matriz de coeficientes, b es la matriz de t�rminos 
% independientes y x es la matriz de soluciones.
% 
% Resolviendo el sistema de esta forma, esta ser�a la soluci�n:

A = [
    7  3
    2 -2
    ];
b = [2 1]';

x1 = A\b
%% 
% Aunque claro, un sistema de dos ecuaciones y dos inc�gnitas tampoco es un 
% gran desaf�o. �Qu� tal el siguiente sistema?
% 
%   2x +  y +  z +  t = 8
%    x - 2y + 6z - 2t = 2
%   3x - 3y + 4z - 4t =-4
%    x - 4y + 2z - 3t =-3
% 
% El sistema sigue siendo lineal, �pero sigue siendo igual de sencillo? Manualmente 
% ser�a un poco largo, pero de cualquier manera se podr�a llegar a la soluci�n. 
% Sin embargo, en MATLAB s� es igual de sencillo.

A = [
    2  1  1  1
    1 -2  6 -2
    3 -3  4 -4
    1 -4  2 -3
    ];
b = [8 2 -4 -3]';

x2 = A\b

%% 
% �Y si se tuviera un sistema lineal de diez ecuaciones con diez inc�gnitas? 
% �O de veinte? Bueno, creo que la idea es clara. Si bien manualmente esto ser�a 
% realmente tedioso, mediante la programaci�n es realmente sencillo, siempre 
% y cuando se sepa y entienda qu� es lo que se est� haciendo.
% 
% Esto es s�lo una peque�a muestra del potencial que tiene MATLAB cuando se 
% trata de trabajar con matrices, adem�s de otras funcionalidades.

%% �Por qu� programar en MATLAB/Octave?
% MATLAB proviene de dos palabras: MATrix LABoratory, es decir, laboratorio 
% de matrices. Es decir, MATLAB/Octave est� dise�ado para trabajar con matrices. Es 
% m�s, su unidad fundamental es la matriz.
% 
% Nota: T�cnicamente su unidad fundamental es el arreglo, pero una matriz 
% es un arreglo num�rico ordenado de filas y columnas, pero para simplificar se 
% puede decir que arreglo y matriz son lo mismo, aunque en realidad una matriz 
% sea un tipo particular de arreglo.
% 
% Como ingenieros y/o cient�ficos hemos aprendido �lgebral lineal, estad�stica, 
% c�lculo en una y varias variables, entre otras; por mencionar algunas materias 
% universales. Luego en cada ingenier�a/ciencia se estudia materias especializadas 
% a cada campo utilizando como base las materias universales. Entonces, �no ser�a 
% ideal un lenguaje que ya conozca nuestra idioma?
% 
% Exactamente esto es MATLAB/Octave, un lenguaje de programaci�n especializado para 
% ingenieros y/o cient�ficos. 

%%
% 
% Esto ya es una opini�n personal y por experiencia lo puedo decir: 
% MATLAB es ideal para quienes no tienen ni idea de programar. MATLAB tiene integrado 
% todo, tanto el lenguaje como el editor, adem�s de los paquetes y librer�as que 
% utiliza. Esto es extremadamente �til para alguien que no tiene idea de todo 
% esto porque no tiene que concentrarse en aprender sobre ello, s�lo tiene que 
% enfocarse en aprender la l�gica de programar.
% 
% Una vez dentro del mundo de la programaci�n, al cual MATLAB es el mejor para 
% dar la bienvenida, es sencillo ir a otros lenguajes y ya con conocimientos, 
% adem�s de confianza, emprender la ruta del aprendizaje de librer�as, editores, 
% lenguajes, etc.
