%% Llamar funciones
% La programación con la que generalemente se empieza cualquier curso de programación 
% es la programación funcional. Es decir, se enfonca en la creación y manipulación 
% de funciones. Es bastante sencilla y a la vez bastante útil. Una vez entendida 
% a cabalidad se recomienda aprender otros paradigmas de programación como la 
% programación orientada a objetos, por ejemplo.
% 
% Ahora analizaremos la naturaleza de las funciones internas de MATLAB en cuanto 
% a sus entradas y salidas. 
% **Entrada: Valores que ingresan a la función.
% **Salida: Valores que devuelve la función.

%% Múltiples entradas
% Una función puede tener múltiples entradas, algunas veces de manera obligatoria, 
% otras de manera opcional.

clear
v1 = randi([-5 5], 1, 5);
v2 = randi([-5 5], 1, 5);

maxv1 = max(v1);
disp(maxv1)

maxv1v2 = max(v1, v2);
disp(maxv1v2)
% minv1v2 = min(v1,v2,"omitnan","ComparisonMethod","abs")

%% Múltiples salidas
% Al igual que puede tener múltiples entradas, una función también puede tener 
% múltiples salidas.

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
% Si no se solicita más de una salida, la función únicamente devolverá la salida 
% principal (la primera salida que tenga definida la función).

B = [
    1 1 3
    2 0 1
    1 0 0
    ];

k2 = eig(B);
disp(B)
disp(k2)

%% ¿Cómo saber cuántas entradas o salidas tiene una función?
% Esa es una excelente pregunta. Las funciones que permiten conocer el número 
% de entradas y salidas son nargin y nargout, respectivamente.

nargin("eig")
nargout("eig")

%% 
% Sin embargo, en ocasiones estas funciones devuelven un valor sin sentido.

nargin("fplot")

%% 
% ¿Qué quiere decir -1 entradas? ¿La función me debe una entrada? ¿A la entrada 
% la multiplico por -1? Bueno, lo que sigfinica es que la función acepta una cantidad 
% variable de entradas.
% 
% Se aplica el mismo criterio si sucede lo mismo con la función nargout.

% fplot(@(x)sin(x))
%%
% fplot(@(x)cos(x), [-2*pi 2*pi], "--g", "LineWidth", 2)