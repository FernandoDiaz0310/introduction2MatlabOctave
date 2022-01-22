%% Obtener ayuda
% Nadie sabe todo de MATLAB/Octave. Nadie. Quien te lo diga miente. Amiga/o date cuenta.
% 
% MATLAB/Octave es un lenguaje tan abundante que aprender de memoria todas su funciones, 
% argumentos, entradas, excepciones, limitaciones, etc.; es pr�cticamente imposible. 
% Para esto MATLAB/Octave posee dos funciones bastante �tiles para acceder a la documentaci�n, 
% o directamente pone a nuestra disposici�n un cat�logo inmenso de documentaci�n 
% para consultar.

%% Funciones de ayuda dentro de MATLAB
% Funci�n help
% La funci�n help permite acceder desde el ditor a la documentaci�n de MATLAB, 
% siempre y cuando se ingrese correctamente el nombre de la funci�n buscada.

help mean

%% 
% La salida es la documentaci�n que MATLAB pone a nuestra disposici�n de la 
% funci�n buscada. Est� su descripci�n, sintaxis y las diferentes formas de utilizar 
% la funci�n.

%% 
% Pero si se busca una funci�n que no existe la funci�n entonces MATLAB indicar� 
% que no encuentra lo que se busca.

help elT�xico

%%
% Funci�n doc
% La funci�n doc viene a ser una mejor alternativa que la funci�n help, 
% puesto que permite realizar b�squedas dentro de la documentaci�n, adem�s que 
% la abrir� en una ventana aparte.

doc min

%% 
% Como se mencion�, tambi�n se pueden realizar b�squedas (en ingl�s, es el �nico 
% pero).

doc("optimization function")

%% Utilizar la documentaci�n
% Sin embargo, se puede acceder directamente a la documentaci�n de MATLAB y 
% buscar lo que se necesite (en ingl�s, de nuevo). Esto se lo puede hacer desde 
% su p�gina <https://la.mathworks.com/help/Centro de ayuda>, o desde MATLAB en 
% la barra de b�squeda superior.

% Nota: En Octave se tiene una pesta�a de Documentaci�n en la parte inferior,
% junto con la Ventana de comandos, Editor de variables y el Editor.
% 
% �nicamente se escribe lo que se busca, o alguna palabra clave, y MATLAB proveer� 
% de sugerencias. Al seleccionar alguna de ellas se abrir� la documentaci�n.

%% Nota importante
% Lo importante no es memorizar las funciones. Lo 
% importante es saber que existen funciones para tareas en espec�fico, y sabiendo 
% que existen basta hacer una peque�a b�squeda para encontrarlas.
% 
% Por ejemplo, existen funciones para:
% ** Obtener el m�ximo de una matriz por fila, por columna o de toda la matriz. 
%    Tambi�n aplica para el m�nimo y la media aritm�tica.
% ** Optimizar un proceso mediante programaci�n lineal.
% ** Buscar m�ximos y m�nimos dentro de una funci�n (c�lculo vectorial).
% ** Buscar ra�ces de una funci�n.
% ** Resolver sistemas lineales y no lineales.
% ** Etc.

%% 
% Las posibilidades son casi infinitas. Sin contar con las cajas de herramientas 
% de MATLAB que proveen de m�s todav�a m�s utilidades.

% Nota: En Octave se cuentan con paquetes que se deben cargar previamente.
