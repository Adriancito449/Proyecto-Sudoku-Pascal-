program Selector;

uses crt;



type
Sudoki = array [1..9,1..9] of integer;
// Uso una Etiqueta para que se haga mas Facil llamar a una funcion //

Var
sudoku: Sudoki; // De la funcion Gener//
juego_iniciado: boolean;

Function Gener(sudoku: Sudoki ): Sudoki; // uso la funcion para optimizar mas el programa //

Var
i,j: integer;
begin

	for i :=1 to 9 do
	begin

		writeln(''); // para darle espacio a los numeros//

		for j := 1 to 9 do // uso dos ciclos for para optimizar //
		begin
			sudoku[i,j]:= random(8)+1;
			write(' ');
			write(sudoku[i,j]);
			if j = 3 then
			begin
				write(' ');
			end;

			if j = 6 then
			begin
				write(' ');
			end;

			// aqui separo  las columnas //
		end;

		if i = 3 then
		begin
			writeln(' ');
		end;

		if i = 6 then
		begin
			writeln(' ');
		end;
		// aqui separo las filas //
	end;
end;



Function impresion(sudoku: Sudoki ): Sudoki;

// Esta funcion en la mismma que esta arriba logimente solo exitira esta la otra//
//es para ver los procesos a medida me que se desarrolla//
Var
i,j: integer;
begin
	for i :=1 to 9 do
	begin
		Clrscr;
		writeln(' ');

		for j := 1 to 9 do
		begin
			write('   ');
			write(sudoku[i,j]);
			if j = 3 then
			begin
				write(' ');
			end;

			if j = 6 then
			begin
				write(' ');
			end;
		end;
		if i = 3 then
		begin
			writeln(' ');
		end;

		if i = 6 then
		begin
			writeln(' ');
		end;
		
	end;
end;


procedure juego; // uso la sudproceso para la parte de interfaz //
	
Var
f,k,n: integer;

begin
	writeln(' ');
	writeln(' ');
	repeat // selector de fila con control //
		writeln('Dame el numero de fila');
		readln(f);
		writeln('El numero escogido es "',f,'" Presiona 1 si no 2');
		readln(n)
	until (n=1);
	repeat // selector de fila con control //
		writeln('Dame el numero de columna');
		readln(k);
		writeln('El numero escogido es "',f,'" Presiona 1 si no 2');
		readln(n)
	until (n=1);
end;


Begin
	juego_iniciado:= true;
	Gener(sudoku);
	juego();
	readln()
End.