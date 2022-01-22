%% Llamar funciones
% La programaci�n con la que generalemente se empieza cualquier curso de programaci�n 
% es la programaci�n funcional. Es decir, se enfonca en la creaci�n y manipulaci�n 
% de funciones. Es bastante sencilla y a la vez bastante �til. Una vez entendida 
% a cabalidad se recomienda aprender otros paradigmas de programaci�n como la 
% programaci�n orientada a objetos, por ejemplo.
% 
% Ahora analizaremos la naturaleza de las funciones internas de MATLAB en cuanto 
% a sus entradas y salidas. 
% **Entrada: Valores que ingresan a la funci�n.
% **Salida: Valores que devuelve la funci�n.

%% M�ltiples entradas
% Una funci�n puede tener m�ltiples entradas, algunas veces de manera obligatoria, 
% otras de manera opcional.

clear
v1 = randi([-5 5], 1, 5);
v2 = randi([-5 5], 1, 5);

maxv1 = max(v1);
disp(maxv1)

maxv1v2 = max(v1, v2);
disp(maxv1v2)
% minv1v2 = min(v1,v2,"omitnan","ComparisonMethod","abs")

%% M�ltiples salidas
% Al igual que puede tener m�ltiples entradas, una funci�n tambi�n puede tener 
% m�ltiples salidas.

A = [
    2 1 3
    3 0 1
    1 0 0
    ];

[v1, k1] = eig(A);
disp(A)
disp(v1)
disp(k1)

%% 
% Si no se solicita m�s de una salida, la funci�n �nicamente devolver� la salida 
% principal (la primera salida que tenga definida la funci�n).

B = [
    1 1 3
    2 0 1
    1 0 0
    ];

k2 = eig(B);
disp(B)
disp(k2)

%% �C�mo saber cu�ntas entradas o salidas tiene una funci�n?
% Esa es una excelente pregunta. Las funciones que permiten conocer el n�mero 
% de entradas y salidas son nargin y nargout, respectivamente.

nargin("eig")
nargout("eig")

%% 
% Sin embargo, en ocasiones estas funciones devuelven un valor sin sentido.

nargin("fplot")

%% 
% �Qu� quiere decir -1 entradas? �La funci�n me debe una entrada? �A la entrada 
% la multiplico por -1? Bueno, lo que sigfinica es que la funci�n acepta una cantidad 
% variable de entradas.
% 
% Se aplica el mismo criterio si sucede lo mismo con la funci�n nargout.

% fplot(@(x)sin(x))
%%
% fplot(@(x)cos(x), [-2*pi 2*pi], "--g", "LineWidth", 2)