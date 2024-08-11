echo "holaprintlibrary.o: holaprintlibrary.c"
echo "gcc -c holaprintlibrary.c -o holaprintlibrary.o"
	gcc -c holaprintlibrary.c -o holaprintlibrary.o
	
	
echo "libprintlibrary.so: holaprintlibrary.o"
echo "gcc -shared holaprintlibrary.o -o libholaprintlibrary.so" 
	gcc -shared holaprintlibrary.o -o libholaprintlibrary.so
	
echo "holaSOexe: holamainlibrary.o"

echo "gcc -L/home/skullkidms/Documentos/Code/ -Wall -o holaSOexe holamainlibrary.c -lholaprintlibrary" 
	gcc -L/home/skullkidms/Documentos/Code/ -Wall -o holaSOexe holamainlibrary.c -lholaprintlibrary
	
echo "to clean: rm holamainlibrary.o holaprintlibrary.o libholaprintlibrary.so holaSOexe"

echo "LD_LIBRARY_PATH=/home/skullkidms/Documentos/Code/:$LD_LIBRARY_PATH"
	export LD_LIBRARY_PATH=/home/skullkidms/Documentos/Code/:$LD_LIBRARY_PATH
	
echo "Ejecucion con carga de la shared object"
./holaSOexe
