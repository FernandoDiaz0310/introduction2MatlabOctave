%% Estructuras de control
%% Introducción
% Las estructuras de control permiten controlar (de ahí­ su nombre) el flujo 
% de programación. Hasta ahora ha sido un flujo unidireccional: el código empieza 
% y termina en lí­nea recta, desde arriba hacia abajo.

clear
a = randi(100)
b = a.^2
disp(b)
disp("Eso todo amigos.")

%% 
% Pero, ¿es la única forma de programar? Pues no, existen muchas formas de programar 
% y controlar el flujo de programación. En este caso, podemos hacer que el programa 
% tome una decisión entre varias opciones o podemos hacer que repita una serie 
% de instrucciones.
% 
% Es así­ que tenemos dos tipos de estructuras de control: las de selección y 
% las de repetición.

%% Estructuras de selección
% Tal como indica su nombre, permite que el programa elija o seleccione qué 
% hacer en función de una condición. Si la condición es verdadera (true o 1 
% lógico), realizará las instrucciones indicadas, caso contrario las omitirá 
% y seguirá entre las opciones hasta que alguna cumpla la condición. Si ninguna 
% cumple, sencillamente omitirá toda la estructura.
% 
% Existen dos estructuras de selección: la estructura if y la estructura switch.
% 
% Nota: Dado que es más común utilizar la estructura if, se explicará únicamente 
% esta. No obstante, si se entiende esta estructura también se estará entendiendo 
% la estructura switch puesto que son bastante parecidas.

numero = randi([-2 2])

% **Generar sentencia if**

%% Estructuras de repetición
% Por otra parte, las estructuras de repetición permiten repetir instrucciones. 
% Existen dos tipos de estructuras de este tipo:
% ** for: cuando se conoce el número de repeticiones a realizarse.
% ** while: cuando no se conoce el número de repeticiones a realizarse.

%% 
% Cabe destacar que, en la mayorí­a de los casos, se puede usar una estructura 
% u otra. Es decir, con ambas estructuras se puede crear el mismo bucle.

%% Entrada definida por el usuario
% Antes de continuar se introducirá el concepto de entrada definida por el usuario. 
% Hasta este momento hemos sido nosotros quienes hemos dado valores a las variables 
% y definido todo. Sin embargo, si es otra persona quien va a manejar nuestro 
% código (con o sin conocimiento de programación) es importante que sea ella quien 
% ingrese la información que se le solicite.
% 
% Para este fin existe la función input que solicita al usuario un valor o 
% entrada (input en español significa entrada).

clear
n = input("Ingresar un número: ")
M = randi(10, n)

%% 
% Ahora que tenemos el concepto de entrada definida por el usuario, podemos 
% dar el siguiente ejemplo.
% 
% Un profesor crea un programa para que ellos ingresen sus calificaciones y 
% el programa devolverá el promedio obtenido.

%% 
% 1. Crear un primer programa preguntando primero al estudiante la cantidad de 
% notas a ingresar, y luego solicitando que ingrese esa cantidad de calificaciones.
% 2. Replicar el anterior programa, pero esta vez no le va a preguntar la cantidad 
% de notas. En lugar de ello le debe mostrar un aviso: "Debe ingresar sus calificaciones, 
% pero si ingresa una calificación negativa el programa asumirá que ya ingresó 
% todas las calificaciones y no le pedirá más".

%% 
% Al final el programa devolverá el promedio del estudiante.

% 1er programa: estructura for
clear
%%
%2do programa: estructura while
clear