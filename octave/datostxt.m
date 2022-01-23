nombretxt = 'datos.txt'
fid = fopen(nombretxt);
datosImp = fscanf(fid, '%i', [3 3])
fclose(fid);

save("-double", "datosNuevos.txt", "datosImp")