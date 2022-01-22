%% Comandos
% Nota: Los comandos se ingresan el la ventana de comandos, por ende, ese 
% tema se saltará y se seguirá con el siguiente.

%% Nombrar variables
% Existen ciertas reglas y sugerencias para nombrer variables, las cuales se 
% aplican también para nombrar funciones, scripts, etc.

% ** Los nombres deben empezar por letras, ya sean mayúsculas o minúsculas.
% ** Letras, números y guión bajo son los únicos caracteres permitidos.
% ** Los nombres son sensibles a mayúsculas y minúsculas (para MATLAB no es lo 
%    mismo "vector" que "Vector", por poner un ejemplo).
% ** Los nombres pueden tener cualquier longitud, pero se recomienda nombres 
%    cortos y autoexplicativos.
% ** Los nombres no pueden ser igual que las palabras reservadas de MATLAB (utiliza 
%    el comando iskeyword para revisar estas palabras).
% ** Si se redefinen funciones/constantes, para reestablecerlas se utiliza clear.

%% 
% Los estilos para nombrar variables son:

% ** Pascal Case: MiVariable
% ** Cammel Case: miVariable
% ** Snake Scase: mi_variable
% ** Etc.

% El estilo depende de cada persona, siempre y cuando se siga un mismo estilo 
% para facilitar la lectura del código.

%% Guardar y cargar variables
% Guardar variables (no el trabajo en general ni el script) es útil para retomar 
% el trabajo si se desea dar una pausa y se necesitarán las variables al regresar, 
% o para compartirlas con un compañero/a. El archivo que guardar las variables 
% tiene la extensión .mat
% 
% Las funciones para guardar y cargar variables es: save y load.

% Sistema para determinar raí­ces
f = @(x, y) sin(x).*cos(y) + 1;
g = @(x, y) x.^2 - exp(2*x);

miSist = @(w) [
    f(w(1), w(2))
    g(w(1), w(2))
    ];

save("misVariables.mat")
% save("misVariables_fg.mat", "f", "g")

%% 
% Una vez se tienen las variables guardadas, basta con cargarlas.

load("misVariables.mat")
% load("misVariables.mat", "f")

%% Usar funciones internas y constantes
% Existen muchí­simas funciones dentro de MATLAB, además de la constante pi. 
% El número de Euler e se determina con exp(1).

cos(pi)
% sqrt(4)
% log(exp(1))
% muestra = randn(1, 1000);
% mean(muestra)
