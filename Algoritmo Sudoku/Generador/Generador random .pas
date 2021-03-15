Program Generador_Randon;

Function Gener(Sudoki:array of integer ):integer;

Var

Fila: integer;
columna: integer;
	
begin

	for Fila :=1 to 9 do
	begin

		writeln(' ');

		for columna := 1 to 9 do
		begin
			Sudoki[Fila,columna]:= random(8)+1;
			write(arreglo[Fila,columna]);
			if columna = 3 then
			begin
				write(' ');
			end;

			if columna = 6 then
			begin
				write(' ');
			end;
		end;

		if Fila = 3 then
		begin
			writeln(' ');
		end;

		if Fila = 6 then
		begin
			writeln(' ');
		end;
	end;

end;



Var
Sudoki: array [1..9,1..9] of integer;
Begin




	Gener(Sudoki[9,9]);
	readln()


End.





