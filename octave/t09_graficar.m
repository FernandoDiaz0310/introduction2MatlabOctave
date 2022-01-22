%% Gr�ficos
% Dentro de MATLAB existen muchas funciones para hacer diversos tipos de gr�ficos, 
% tanto bidimensionales como tridimensionales. No obstante, las funciones m�s 
% usadas para este fin son las funciones plot y sus variantes.

%% Gr�ficos bidimensionales
% La funci�n plot permite realizar gr�ficos bidimensionales.
% ** Si se ingresa un �nico vector de datos, lo asumir� como datos para el eje 
%    y. Para el eje x tomar� sus �ndices.
% ** Si se ingresan dos vectores, el primero ser� para el eje x y el segundo 
%    para el eje y. Ambos vectores deben ser del mismo tama�o.

clear
x = linspace(0, pi);
y = exp(cos(x));
plot(y)

%% 
% Otra funci�n bastante �til es la funci�n fplot que lleg� como reemplazo 
% de la funci�n ezplot en una actualizaci�n.
% 
% La funci�n fplot permite graficar directamente funciones en lugar de vectores.
% 
% Nota: Las funciones an�nimas son "minifunciones", sin embargo, es necesario 
% el concepto de creaci�n de una funci�n, por ende, se omitir� su explicaci�n 
% en este taller. 

clear
f = @(x) exp(x) + 3*log(x)./(x.^2 + 1);
fplot(f)

%% Gr�ficas de dispersi�n
% La funci�n scatter permite crear una gr�fica de dispersi�n. Este tipo de 
% gr�ficas son muy �tiles para visualizar la correlaci�n entre 2 variables.

a = randn(1, 1000);
b = randn(1, 1000);
scatter(a, b)

%% Gr�ficas tridimensionales
% Las gr�ficas tridimensionales se crean con la funci�n plot3 y necesita 3 
% vectores.

clear
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)

%% Anotacions y presentaci�n de una gr�fica
% Para mejorar la presentaci�n de una gr�fica se pueden a�adir t�tulos a los 
% ejes, a la gr�fica, a�adir la leyenda, mostrar la cuadr�cula, cambiar de color 
% de l�nea, etc. Estas y m�s caracter�sticas se encuentran detalladas en
% <https://la.mathworks.com/help/matlab/formatting-and-annotation.html?lang=enFormato y anotaciones>,
% dentro de la documentaci�n de MALTAB.

% Entre las caracter�sticas m�s usuales se tienen:
% ** grid: permite a�adir una cuadr�cula
% ** xlabel, ylabel, zlabel: permite a�adir un t�tulo al eje respectivo
% ** tittle: permite a�adir un t�tulo al gr�fico
% ** legend: permite a�adir una leyenda

%% 
% Por otra parte, los par�metros de color, estilo de l�nea, etc.; se encuentran 
% bastante detallados en la documentaci�n de cada gr�fico (doc plot), por tanto, 
% aqu� se mencionar�n algunas de las m�s comunes.

%% 
% * Colores: g, r, b, y, w, k, m
% * Tipo de l�nea: -, --, :
% * Tipo de marcador: o, *, +, s

%% 
% Finalmente, para dibujar un gr�fico encima de otro, se utiliza el comando 
% hold on. �nicamente se debe recordar apagarlo (hold off), de lo contrario 
% todos los gr�ficos se ir�n dibujando encima. Quiz� no sea lo deseado.
% 
% Todas estas caracter�sticas se pueden aplicar a casi cualquier gr�fico de 
% MATLAB, sin importar el tipo de gr�fico, si es bidimensional o tridimensional, 
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
title("Preciosa gr�fica en 3D")
grid on