Program Generador_Randon;

Function Gener(Sudoki:array of integer ):integer;

Var
	Fila: integer;
	columna: integer;
Begin

	for Fila:= 1 to 9 do
	Begin
		writeln();
		for columna:=1 to 9 do
		Begin
			Sudoki[Fila,columna]:= Random(8)+1;
			write(Sudoki[Fila,columna]);

		End;
	End;

	End;


Var
Sudoki: array [1..9,1..9] of integer;
Begin




	Gener(Sudoki[9,9]);
	readln()


End.





