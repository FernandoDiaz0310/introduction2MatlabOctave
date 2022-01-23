%% Importaci�n de informaci�n - MATLAB
% En muchas ocasiones habr� la necesidad de importar informaci�n a MATLAB, trabajarla 
% aqu� y luego exportarla. Pues bien, para ello MATLAB provee de varias funciones 
% y una herramienta para este fin.
% 
% Nota: En el repositorio de ese taller est� un libro de c�lculo Excel (lo 
% m�s com�n para guardar datos) con la cual se trabajar� a continuaci�n.
% ** El libro posee dos hojas.
% ** La hoja soloNumeros tiene �nicamente las calificaciones de algunos estudiantes.
% ** La hoja textoNumeros tiene las calificaciones con encabezados y nombres 
%    de los estudiantes.

% Por otra parte, se destaca que las funciones xlsread o semejantes ya no 
% son recomendadas. Las funciones que se detallar�n a continuaci�n son m�s f�ciles 
% de usar e intuitivas, y son las que recomienda MATLAB.

%% Importaci�n de informaci�n
% Las funciones read* permiten la lectura e importaci�n de informaci�n en 
% diferentes tipos de contenedores.
% ** Contenedor: elemento que permite guardar datos.

% Existen diferentes tipos de contenedores con sus respectivas caracter�sticas. 
% Las matrices son un tipo especial de contenedores, las cuales contienen �nicamente 
% datos del mismo tipo como n�meros, caracteres, cadenas, etc.
% 
% La funci�n que permite importar informaci�n como matriz es readmatrix. Una 
% matriz es un contenedor homog�neo, es decir, �nicamente se importar� informaci�n 
% del mismo tipo (n�meros, texto, l�gicos, etc.).

clear
califNumeros = readmatrix("calificaciones.xlsx", "Sheet", "soloNumeros")

%% 
% Como se mencion� al inicio, la funci�n readmatrix importa los elementos 
% le�dos como matriz. �Qu� pasar�a si se intenta importar datos varios (texto 
% y n�meros, por ejemplo)?

clear
califNumText = readmatrix("calificaciones.xlsx", "Sheet", "textoNumeros")

%%
califNumeros = califNumeros.*10;
califNumeros = [califNumeros mean(califNumeros, 2)]

%% 
% Entonces surge la necesidad de importar datos varios debido a que en Excel 
% generalmente se guarda informaci�n tabular, es decir, se guarda informaci�n 
% en forma de tabla. �stas obviamente tienen encabezados que son texto y a veces 
% observaciones, que correspondan a las filas. Por tanto, �qu� se puede hacer?
% 
% La funci�n readtable permite importar este tipo de datos tabulares y los 
% convierte en una tabla dentro de MALTAB.
%% 
% ** Las tablas son otro tipo de contenedor dentro de MATLAB que tiene la capacidad 
% de guardar datos de varios tipos, por tanto, es un contenedor heterog�neo.

calificaciones = readtable("calificaciones.xlsx", "Sheet", "textoNumeros", "TextType","string")

%% 
% As� hemos importado una tabla completa dentro de MATLAB. Se puede guardar 
% los nombres y las calificaciones en vectores y/o matrices debido a que en este 
% tipo de datos hemos estado trabajando.

nombres = calificaciones.Nombres
prueba1 = calificaciones.Prueba1

%% Exportaci�n de informaci�n
% Una vez tratada la informaci�n se la puede exportar de nuevo a distintos formatos, 
% pero el m�s com�n es Excel. Para esto se utilizan las funciones write*.
% 
% Nota: Al igual que pasaba con las funciones de importaci�n, las xlsread 
% y semejantes, existen tambi�n funciones xlswrite y semejantes. No obstante, 
% MATLAB tampoco las recomienda y en su lugar recomienda utilizar las funciones 
% write*.

% La funci�n writematrix exporta matrices.
% * En los nombres de exportaci�n siempre se escribe la extensi�n del archivo 
% al final.
writematrix(califNumeros, "calificacionesM100.xlsx")

% La funci�n writetable exporta tablas.
writetable(calificaciones, "calificacionesT100.xlsx")

%% Herramienta de importaci�n
% Si el libro de Excel se encuentra en la misma carpeta del directorio actual, 
% entonces basta con darle doble clic para que se ejecuta la herramienta de importaci�n.
% 
% En esta podemos seleccionar la informaci�n a importar, con qu� tipo de contenedor 
% se importar� e incluso generar el c�digo de importaci�n, entre otras caracter�sticas.

%% Importaci�n de informaci�n - Octave
% En Octave son diferentes las herramientas de importaci�n de datos, adem�s 
% que no son tan flexibles y f�ciles de utilizar como en MATLAB. No obstante, 
% tambi�n dispone de herramientas de importaci�n.

%% Importaci�n de informaci�n
% Para importar informaci�n se utiliza el paquete io. Antes de importar informaci�n 
% se debe cargar el paquete: 

pkg load io

% Y una vez cargado el paquete se pueden utilizar todas sus funciones. Para 
% acceder a la informaci�n del paquete se puede consultar su documentaci�n:
% <https://octave.sourceforge.io/io/overview.html#Spreadsheet_I_O_user_functions_for_MS_Excel>.

% Las funci�n que nos permite importar informaci�n dentro de Octave es xlsread 
% si el archivo es una hoja de c�lculo de Excel (.xls o .xlsx).

clear
calif = xlsread("calificaciones.xlsx");
disp(calif)

%% Exportaci�n de informaci�n
% Dentro del paquete io tambi�n se dispone de la funci�n xlswrite que permite 
% exportar archivos en forma de hoja de c�lculo de Excel (.xls o .xlsx).

xlswrite("datosNuevos.xlsx")

%% Aclaraci�n con documentos de texto (.txt)
% Pero si se quiere importar informaci�n de documento de texto (.txt) se utiliza 
% la siguiente serie de pasos:
% 1. Se guarda el nombre de archivo con su extensi�n en una variable.
% 2. Se abre el documento de texto con la funci�n fopen y se guardar en una 
%    variable.
% 3. Se extraen los datos que se necesiten con la funci�n fscanf.
% 4. Se cierra el archivo con la funci�n fclose.

clear
nombretxt = 'datos.txt';
fid = fopen(nombretxt);
datosImp = fscanf(fid, '%i', [3 3]);
fclose(fid);

disp(datosImp)

%% 
% Para la exportaci�n de datos se se puede utilizar la funci�n save pero el 
% archivo generado debe guardarse con la extensi�n .txt
% 
% Si lo que se desea guardar son n�meros, debe especificarse previamente. Pero 
% si se desea guardar n�meros y texto, se recomienda utilizar la condificaci�n 
% -ascii

save("-double", "datosNuevos.txt", "datosImp")

%% Nota: Si alguien desea trabajar con tablas dentro de Octave, pues de manera
% direcnta no existen funciones para ello. Sin embargo, mediante la instalaci�n
% del paquete tablicious se puede hacerlo.
% Se deja el enlace del foro donde explican c�mo instalarlo y utilizarlo:
%
% <https://octave.discourse.group/t/what-is-alternative-code-for-table-function/221>
