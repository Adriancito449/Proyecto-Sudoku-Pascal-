Program Generador_Randon;
uses crt;



type
Sudoki = array [1..9,1..9] of integer;

Var
sudoku: Sudoki;


Function Gener(sudoku: Sudoki ): Sudoki;

Var
i,j: integer;
begin

	for i :=1 to 9 do
	begin

		writeln(' ');

		for j := 1 to 9 do
		begin
			sudoku[i,j]:= random(8)+1;
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


Begin

	Gener(sudoku);
	readln()
End.





