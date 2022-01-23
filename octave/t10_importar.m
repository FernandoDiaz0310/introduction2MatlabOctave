%% Importación de información - MATLAB
% En muchas ocasiones habrá la necesidad de importar información a MATLAB, trabajarla 
% aquí­ y luego exportarla. Pues bien, para ello MATLAB provee de varias funciones 
% y una herramienta para este fin.
% 
% Nota: En el repositorio de ese taller está un libro de cálculo Excel (lo 
% más común para guardar datos) con la cual se trabajará a continuación.
% ** El libro posee dos hojas.
% ** La hoja soloNumeros tiene únicamente las calificaciones de algunos estudiantes.
% ** La hoja textoNumeros tiene las calificaciones con encabezados y nombres 
%    de los estudiantes.

% Por otra parte, se destaca que las funciones xlsread o semejantes ya no 
% son recomendadas. Las funciones que se detallarán a continuación son más fáciles 
% de usar e intuitivas, y son las que recomienda MATLAB.

%% Importación de información
% Las funciones read* permiten la lectura e importación de información en 
% diferentes tipos de contenedores.
% ** Contenedor: elemento que permite guardar datos.

% Existen diferentes tipos de contenedores con sus respectivas caracterí­sticas. 
% Las matrices son un tipo especial de contenedores, las cuales contienen únicamente 
% datos del mismo tipo como números, caracteres, cadenas, etc.
% 
% La función que permite importar información como matriz es readmatrix. Una 
% matriz es un contenedor homogéneo, es decir, únicamente se importará información 
% del mismo tipo (números, texto, lógicos, etc.).

clear
califNumeros = readmatrix("calificaciones.xlsx", "Sheet", "soloNumeros")

%% 
% Como se mencionó al inicio, la función readmatrix importa los elementos 
% leí­dos como matriz. ¿Qué pasarí­a si se intenta importar datos varios (texto 
% y números, por ejemplo)?

clear
califNumText = readmatrix("calificaciones.xlsx", "Sheet", "textoNumeros")

%%
califNumeros = califNumeros.*10;
califNumeros = [califNumeros mean(califNumeros, 2)]

%% 
% Entonces surge la necesidad de importar datos varios debido a que en Excel 
% generalmente se guarda información tabular, es decir, se guarda información 
% en forma de tabla. Éstas obviamente tienen encabezados que son texto y a veces 
% observaciones, que correspondan a las filas. Por tanto, ¿qué se puede hacer?
% 
% La función readtable permite importar este tipo de datos tabulares y los 
% convierte en una tabla dentro de MALTAB.
%% 
% ** Las tablas son otro tipo de contenedor dentro de MATLAB que tiene la capacidad 
% de guardar datos de varios tipos, por tanto, es un contenedor heterogéneo.

calificaciones = readtable("calificaciones.xlsx", "Sheet", "textoNumeros", "TextType","string")

%% 
% Así­ hemos importado una tabla completa dentro de MATLAB. Se puede guardar 
% los nombres y las calificaciones en vectores y/o matrices debido a que en este 
% tipo de datos hemos estado trabajando.

nombres = calificaciones.Nombres
prueba1 = calificaciones.Prueba1

%% Exportación de información
% Una vez tratada la información se la puede exportar de nuevo a distintos formatos, 
% pero el más común es Excel. Para esto se utilizan las funciones write*.
% 
% Nota: Al igual que pasaba con las funciones de importación, las xlsread 
% y semejantes, existen también funciones xlswrite y semejantes. No obstante, 
% MATLAB tampoco las recomienda y en su lugar recomienda utilizar las funciones 
% write*.

% La función writematrix exporta matrices.
% * En los nombres de exportación siempre se escribe la extensión del archivo 
% al final.
writematrix(califNumeros, "calificacionesM100.xlsx")

% La función writetable exporta tablas.
writetable(calificaciones, "calificacionesT100.xlsx")

%% Herramienta de importación
% Si el libro de Excel se encuentra en la misma carpeta del directorio actual, 
% entonces basta con darle doble clic para que se ejecuta la herramienta de importación.
% 
% En esta podemos seleccionar la información a importar, con qué tipo de contenedor 
% se importará e incluso generar el código de importación, entre otras caracterí­sticas.

%% Importación de información - Octave
% En Octave son diferentes las herramientas de importación de datos, además 
% que no son tan flexibles y fáciles de utilizar como en MATLAB. No obstante, 
% también dispone de herramientas de importación.

%% Importación de información
% Para importar información se utiliza el paquete io. Antes de importar información 
% se debe cargar el paquete: 

pkg load io

% Y una vez cargado el paquete se pueden utilizar todas sus funciones. Para 
% acceder a la información del paquete se puede consultar su documentación:
% <https://octave.sourceforge.io/io/overview.html#Spreadsheet_I_O_user_functions_for_MS_Excel>.

% Las función que nos permite importar información dentro de Octave es xlsread 
% si el archivo es una hoja de cálculo de Excel (.xls o .xlsx).

clear
calif = xlsread("calificaciones.xlsx");
disp(calif)

%% Exportación de información
% Dentro del paquete io también se dispone de la función xlswrite que permite 
% exportar archivos en forma de hoja de cálculo de Excel (.xls o .xlsx).

xlswrite("datosNuevos.xlsx")

%% Aclaración con documentos de texto (.txt)
% Pero si se quiere importar información de documento de texto (.txt) se utiliza 
% la siguiente serie de pasos:
% 1. Se guarda el nombre de archivo con su extensión en una variable.
% 2. Se abre el documento de texto con la función fopen y se guardar en una 
%    variable.
% 3. Se extraen los datos que se necesiten con la función fscanf.
% 4. Se cierra el archivo con la función fclose.

clear
nombretxt = 'datos.txt';
fid = fopen(nombretxt);
datosImp = fscanf(fid, '%i', [3 3]);
fclose(fid);

disp(datosImp)

%% 
% Para la exportación de datos se se puede utilizar la función save pero el 
% archivo generado debe guardarse con la extensión .txt
% 
% Si lo que se desea guardar son números, debe especificarse previamente. Pero 
% si se desea guardar números y texto, se recomienda utilizar la condificación 
% -ascii

save("-double", "datosNuevos.txt", "datosImp")

%% Nota: Si alguien desea trabajar con tablas dentro de Octave, pues de manera
% direcnta no existen funciones para ello. Sin embargo, mediante la instalación
% del paquete tablicious se puede hacerlo.
% Se deja el enlace del foro donde explican cómo instalarlo y utilizarlo:
%
% <https://octave.discourse.group/t/what-is-alternative-code-for-table-function/221>
