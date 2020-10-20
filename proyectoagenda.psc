Algoritmo proyecto_agenda
	Definir  menu, i, j, tam Como Entero;
	Definir  nombre, num, buscar, vnombres,telefono Como Caracter;
	tam=4;
	Dimension vnombres(tam);
	i=0;
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		vnombres[i]="";
	Fin Para
	Repetir
		Escribir "Si quiere añadir un contacto, pulse 1";
		Escribir "Si desea buscar un contacto, pulse 2";
		Escribir "Si quiere borrar un contacto, pulse 3";
		Escribir "Si lo que desea es editar un contacto, pulse 4";
		Escribir "Si quiere ver toda la lista de contactos, pulse 5";
		Escribir "Pulse 6 si desea salir";
		Escribir " ";
		Escribir "¿Ahora qué desea hacer?";
		Leer menu;
		Segun menu Hacer
			1:
				Escribir "Dime el nombre del contacto";
				Leer nombre;
				Escribir "Dime el número del contacto";
				Leer num;
				aux = nombre + "*" + num;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si vnombres[i]=="" Entonces
						vnombres[i]=aux;
						i=tam;
					FinSi
				Fin Para
				Escribir "Acaba de añadir el siguiente contacto " ,nombre "*" ,num;
			2:
				Escribir "Dime el nombre del contacto que desea buscar";
				Leer buscar;
				
				//Recorrer el vector
				Para i=0 Hasta tam Con Paso 1 Hacer
					aux=vnombres[i];
					
					//Comprobar si el nombre esta en aux
					//a- Trocear aux
					Para j=0 hasta Longitud(aux) Con Paso 1 Hacer
						Si (Subcadena(aux,j,j) == "*") Entonces
							nombre = Subcadena(aux,0,j-1);
							telefono = Subcadena(aux,j+1,Longitud(aux));
						FinSi
					FinPara
					
					//b- Comparar
					Si (buscar == nombre) Entonces
						Escribir nombre + " - " + telefono;
					FinSi
					
				Fin Para
			3:
				Escribir "Dime el nombre del contacto que desea borrar";
				Leer buscar;
				
				//Recorrer el vector
				
				Si buscar==nombre Entonces
					num="";
					nombre="";
				SiNo
					Escribir "El nombre que busca no existe";
				Fin Si
				
				Escribir "El contacto se ha borrado, ahora es " ,num " como número y " ,nombre " como nombre";
			4:
				Escribir "Dime el nombre de contacto que desea editar";
				Leer buscar;
				
				
				
				Si buscar==nombre Entonces
					Para i=0 Hasta Longitud(vnombres[i]) Con Paso 1 Hacer
						nombre=Subcadena(nombre, i, i);
					Fin Para
					Escribir "Dime un nuevo número";
					Leer num;
					Escribir "Dime un nuevo nombre";
					Leer nombre;
					Escribir "El contacto editado es el siguiente: " ,nombre " ",num;
				SiNo
					Escribir "El número que busca no existe";
				Fin Si
			5:
				Escribir "Estos son todos los contactos que tienes " ,nombre " ",num;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si  (Subcadena(aux,j,j) == "*") Entonces
						nombre = Subcadena(aux,0,j-1);
						telefono = Subcadena(aux,j+1,Longitud(aux));
						Escribir vnombres[i];
					Fin Si
					
				Fin Para
		Fin Segun
	Hasta Que menu=6
	
FinAlgoritmo
