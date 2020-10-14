Algoritmo proyecto_agenda
	Definir num, menu, i, buscanum Como Entero;
	Definir nombre, buscar Como Caracter;
	
	Repetir
		Escribir " ";
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
				Escribir "Acaba de añadir el siguiente contacto " ,nombre " " ,num;
			2:
				Escribir "Dime el número del contacto que desea buscar";
				Leer buscanum;
				Si buscanum==num Entonces
					Escribir "El contacto es " ,num " como número y " ,nombre " como nombre";
				SiNo
					Escribir "El número que busca no existe";
				Fin Si
			3:
				Escribir "Dime el número del contacto que desea borrar";
				Leer buscanum;
				Si buscanum==num Entonces
					num=0;
					nombre="";
				SiNo
					Escribir "El número que busca no existe";
				Fin Si
				
				Escribir "El contacto se ha borrado, ahora es " ,num " como número y " ,nombre " como nombre";
			4:
				Escribir "Dime el número de contacto que desea editar";
				Leer buscanum;
				Si buscanum==num Entonces
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
		Fin Segun
	Hasta Que menu=6
	
FinAlgoritmo
