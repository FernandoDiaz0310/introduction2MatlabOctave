%% Estructuras de control
%% Introducci�n
% Las estructuras de control permiten controlar (de ah� su nombre) el flujo 
% de programaci�n. Hasta ahora ha sido un flujo unidireccional: el c�digo empieza 
% y termina en l�nea recta, desde arriba hacia abajo.

clear
a = randi(100)
b = a.^2
disp(b)
disp("Eso todo amigos.")

%% 
% Pero, �es la �nica forma de programar? Pues no, existen muchas formas de programar 
% y controlar el flujo de programaci�n. En este caso, podemos hacer que el programa 
% tome una decisi�n entre varias opciones o podemos hacer que repita una serie 
% de instrucciones.
% 
% Es as� que tenemos dos tipos de estructuras de control: las de selecci�n y 
% las de repetici�n.

%% Estructuras de selecci�n
% Tal como indica su nombre, permite que el programa elija o seleccione qu� 
% hacer en funci�n de una condici�n. Si la condici�n es verdadera (true o 1 
% l�gico), realizar� las instrucciones indicadas, caso contrario las omitir� 
% y seguir� entre las opciones hasta que alguna cumpla la condici�n. Si ninguna 
% cumple, sencillamente omitir� toda la estructura.
% 
% Existen dos estructuras de selecci�n: la estructura if y la estructura switch.
% 
% Nota: Dado que es m�s com�n utilizar la estructura if, se explicar� �nicamente 
% esta. No obstante, si se entiende esta estructura tambi�n se estar� entendiendo 
% la estructura switch puesto que son bastante parecidas.

numero = randi([-2 2])

% **Generar sentencia if**

%% Estructuras de repetici�n
% Por otra parte, las estructuras de repetici�n permiten repetir instrucciones. 
% Existen dos tipos de estructuras de este tipo:
% ** for: cuando se conoce el n�mero de repeticiones a realizarse.
% ** while: cuando no se conoce el n�mero de repeticiones a realizarse.

%% 
% Cabe destacar que, en la mayor�a de los casos, se puede usar una estructura 
% u otra. Es decir, con ambas estructuras se puede crear el mismo bucle.

%% Entrada definida por el usuario
% Antes de continuar se introducir� el concepto de entrada definida por el usuario. 
% Hasta este momento hemos sido nosotros quienes hemos dado valores a las variables 
% y definido todo. Sin embargo, si es otra persona quien va a manejar nuestro 
% c�digo (con o sin conocimiento de programaci�n) es importante que sea ella quien 
% ingrese la informaci�n que se le solicite.
% 
% Para este fin existe la funci�n input que solicita al usuario un valor o 
% entrada (input en espa�ol significa entrada).

clear
n = input("Ingresar un n�mero: ")
M = randi(10, n)

%% 
% Ahora que tenemos el concepto de entrada definida por el usuario, podemos 
% dar el siguiente ejemplo.
% 
% Un profesor crea un programa para que ellos ingresen sus calificaciones y 
% el programa devolver� el promedio obtenido.

%% 
% 1. Crear un primer programa preguntando primero al estudiante la cantidad de 
% notas a ingresar, y luego solicitando que ingrese esa cantidad de calificaciones.
% 2. Replicar el anterior programa, pero esta vez no le va a preguntar la cantidad 
% de notas. En lugar de ello le debe mostrar un aviso: "Debe ingresar sus calificaciones, 
% pero si ingresa una calificaci�n negativa el programa asumir� que ya ingres� 
% todas las calificaciones y no le pedir� m�s".

%% 
% Al final el programa devolver� el promedio del estudiante.

% 1er programa: estructura for
clear
%%
%2do programa: estructura while
clear