%% Gráficos
% Dentro de MATLAB existen muchas funciones para hacer diversos tipos de gráficos, 
% tanto bidimensionales como tridimensionales. No obstante, las funciones más 
% usadas para este fin son las funciones plot y sus variantes.

%% Gráficos bidimensionales
% La función plot permite realizar gráficos bidimensionales.
% ** Si se ingresa un único vector de datos, lo asumirá como datos para el eje 
%    y. Para el eje x tomará sus índices.
% ** Si se ingresan dos vectores, el primero será para el eje x y el segundo 
%    para el eje y. Ambos vectores deben ser del mismo tamaño.

clear
x = linspace(0, pi);
y = exp(cos(x));
plot(y)

%% 
% Otra función bastante útil es la función fplot que llegó como reemplazo 
% de la función ezplot en una actualización.
% 
% La función fplot permite graficar directamente funciones en lugar de vectores.
% 
% Nota: Las funciones anónimas son "minifunciones", sin embargo, es necesario 
% el concepto de creación de una función, por ende, se omitirá su explicación 
% en este taller. 

clear
f = @(x) exp(x) + 3*log(x)./(x.^2 + 1);
fplot(f)

%% Gráficas de dispersión
% La función scatter permite crear una gráfica de dispersión. Este tipo de 
% gráficas son muy útiles para visualizar la correlación entre 2 variables.

a = randn(1, 1000);
b = randn(1, 1000);
scatter(a, b)

%% Gráficas tridimensionales
% Las gráficas tridimensionales se crean con la función plot3 y necesita 3 
% vectores.

clear
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)

%% Anotacions y presentación de una gráfica
% Para mejorar la presentación de una gráfica se pueden añadir títulos a los 
% ejes, a la gráfica, añadir la leyenda, mostrar la cuadrícula, cambiar de color 
% de línea, etc. Estas y más características se encuentran detalladas en
% <https://la.mathworks.com/help/matlab/formatting-and-annotation.html?lang=enFormato y anotaciones>,
% dentro de la documentación de MALTAB.

% Entre las características más usuales se tienen:
% ** grid: permite añadir una cuadrícula
% ** xlabel, ylabel, zlabel: permite añadir un título al eje respectivo
% ** tittle: permite añadir un título al gráfico
% ** legend: permite añadir una leyenda

%% 
% Por otra parte, los parámetros de color, estilo de línea, etc.; se encuentran 
% bastante detallados en la documentación de cada gráfico (doc plot), por tanto, 
% aquí se mencionarán algunas de las más comunes.

%% 
% * Colores: g, r, b, y, w, k, m
% * Tipo de línea: -, --, :
% * Tipo de marcador: o, *, +, s

%% 
% Finalmente, para dibujar un gráfico encima de otro, se utiliza el comando 
% hold on. Únicamente se debe recordar apagarlo (hold off), de lo contrario 
% todos los gráficos se irán dibujando encima. Quizá no sea lo deseado.
% 
% Todas estas características se pueden aplicar a casi cualquier gráfico de 
% MATLAB, sin importar el tipo de gráfico, si es bidimensional o tridimensional, 
% etc.

t = 0:pi/500:pi;
xt1 = sin(t).*cos(10*t);
yt1 = sin(t).*sin(10*t);
zt1 = cos(t);

xt2 = sin(t).*cos(12*t);
yt2 = sin(t).*sin(12*t);
zt2 = cos(t);

plot3(xt1, yt1, zt1, 'r--')
hold on
plot3(xt2, yt2, zt2, 'b:')
hold off

legend("Curva 1", "Curva 2")
xlabel("x")
ylabel("y")
zlabel("z")
title("Preciosa gráfica en 3D")
grid on