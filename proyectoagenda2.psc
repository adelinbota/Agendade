Algoritmo proyecto_agenda2
	Definir num, menu, i, buscanum Como Entero;
	Definir nombre, buscar Como Caracter;
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
	Mientras menu<>6 Hacer
		Segun menu Hacer
			1:
				Escribir "Dime el número del contacto que quiere añadir";
				Leer num;
				Escribir "Dime el nombre del contacto que quiere añadir";
				Leer nombre;
				Leer menu;
			2:
				Escribir "Dime el número del contacto que desea buscar";
				Leer buscanum;
				Si buscanum==num Entonces
					Escribir "El contacto que busca es " ,nombre " " ,num;
				SiNo
					Escribir "El contacto que busca no existe";
				Fin Si
				Leer menu;
			3:
				Escribir "Dime el número del contacto que desea borrar";
				Leer buscanum;
				Si buscanum=num Entonces
					Escribir "El contacto que busca ha sido borrado " ,nombre, " " ,num;
				SiNo
					Escribir "El contacto que busca no existe";
				Fin Si
				Leer menu;
			4:
				Escribir "Dime el número del contacto que desea editar";
				Leer buscanum;
				Escribir "Dime el nuevo número";
				Leer num;
				Escribir "Dime el nuevo nombre";
				Leer nombre;
				Escribir "El nuevo contacto es " ,nombre " " ,num;
				Leer menu;
			5:
				Escribir "Esta es la lista de contactos que hay: " ,nombre " " ,num;
				Leer menu;
		Fin Segun
	Fin Mientras
FinAlgoritmo
