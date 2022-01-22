%% Obtener ayuda
% Nadie sabe todo de MATLAB/Octave. Nadie. Quien te lo diga miente. Amiga/o date cuenta.
% 
% MATLAB/Octave es un lenguaje tan abundante que aprender de memoria todas su funciones, 
% argumentos, entradas, excepciones, limitaciones, etc.; es prácticamente imposible. 
% Para esto MATLAB/Octave posee dos funciones bastante útiles para acceder a la documentación, 
% o directamente pone a nuestra disposición un catálogo inmenso de documentación 
% para consultar.

%% Funciones de ayuda dentro de MATLAB
% Función help
% La función help permite acceder desde el ditor a la documentación de MATLAB, 
% siempre y cuando se ingrese correctamente el nombre de la función buscada.

help mean

%% 
% La salida es la documentación que MATLAB pone a nuestra disposición de la 
% función buscada. Está su descripción, sintaxis y las diferentes formas de utilizar 
% la función.

%% 
% Pero si se busca una función que no existe la función entonces MATLAB indicará 
% que no encuentra lo que se busca.

help elTóxico

%%
% Función doc
% La función doc viene a ser una mejor alternativa que la función help, 
% puesto que permite realizar búsquedas dentro de la documentación, además que 
% la abrirá en una ventana aparte.

doc min

%% 
% Como se mencionó, también se pueden realizar búsquedas (en inglés, es el único 
% pero).

doc("optimization function")

%% Utilizar la documentación
% Sin embargo, se puede acceder directamente a la documentación de MATLAB y 
% buscar lo que se necesite (en inglés, de nuevo). Esto se lo puede hacer desde 
% su página <https://la.mathworks.com/help/Centro de ayuda>, o desde MATLAB en 
% la barra de búsqueda superior.

% Nota: En Octave se tiene una pestaña de Documentación en la parte inferior,
% junto con la Ventana de comandos, Editor de variables y el Editor.
% 
% Únicamente se escribe lo que se busca, o alguna palabra clave, y MATLAB proveerá 
% de sugerencias. Al seleccionar alguna de ellas se abrirá la documentación.

%% Nota importante
% Lo importante no es memorizar las funciones. Lo 
% importante es saber que existen funciones para tareas en especí­fico, y sabiendo 
% que existen basta hacer una pequeí±a búsqueda para encontrarlas.
% 
% Por ejemplo, existen funciones para:
% ** Obtener el máximo de una matriz por fila, por columna o de toda la matriz. 
%    También aplica para el mí­nimo y la media aritmética.
% ** Optimizar un proceso mediante programación lineal.
% ** Buscar máximos y mí­nimos dentro de una función (cálculo vectorial).
% ** Buscar raí­ces de una función.
% ** Resolver sistemas lineales y no lineales.
% ** Etc.

%% 
% Las posibilidades son casi infinitas. Sin contar con las cajas de herramientas 
% de MATLAB que proveen de más todaví­a más utilidades.

% Nota: En Octave se cuentan con paquetes que se deben cargar previamente.
