program fase_prueva;
uses crt;
type
var
Sudoki: array [1..9,1..9] of integer;
i,j: integer;

begin

i:= 1;


sudoki[1,1]:= 5;
sudoki[1,2]:= 3;
sudoki[1,3]:= 4;
sudoki[1,4]:= 6;
sudoki[1,5]:= 7;
sudoki[1,6]:= 8;
sudoki[1,7]:= 9;
sudoki[1,8]:= 1;
sudoki[1,9]:= 2; 

sudoki[2,1]:= 6;
sudoki[2,2]:= 7;
sudoki[2,3]:= 2;
sudoki[2,4]:= 1;
sudoki[2,5]:= 9;
sudoki[2,6]:= 5;
sudoki[2,7]:= 3;
sudoki[2,8]:= 4;
sudoki[2,9]:= 8;

sudoki[3,1]:= 1;
sudoki[3,2]:= 9;
sudoki[3,3]:= 8;
sudoki[3,4]:= 3;
sudoki[3,5]:= 4;
sudoki[3,6]:= 2;
sudoki[3,7]:= 5;
sudoki[3,8]:= 6;
sudoki[3,9]:= 7;

sudoki[4,1]:= 8;
sudoki[4,2]:= 5;
sudoki[4,3]:= 9;
sudoki[4,4]:= 7;
sudoki[4,5]:= 6;
sudoki[4,6]:= 1;
sudoki[4,7]:= 4;
sudoki[4,8]:= 2;
sudoki[4,9]:= 3;

sudoki[5,1]:= 4;
sudoki[5,2]:= 2;
sudoki[5,3]:= 6;
sudoki[5,4]:= 8;
sudoki[5,5]:= 5;
sudoki[5,6]:= 3;
sudoki[5,7]:= 7;
sudoki[5,8]:= 9;
sudoki[5,9]:= 1;

sudoki[6,1]:= 7;
sudoki[6,2]:= 1;
sudoki[6,3]:= 3;
sudoki[6,4]:= 9;
sudoki[6,5]:= 2;
sudoki[6,6]:= 4;
sudoki[6,7]:= 8;
sudoki[6,8]:= 5;
sudoki[6,9]:= 6; 


sudoki[7,1]:= 9;
sudoki[7,2]:= 6;
sudoki[7,3]:= 1;
sudoki[7,4]:= 5;
sudoki[7,5]:= 3;
sudoki[7,6]:= 7;
sudoki[7,7]:= 2;
sudoki[7,8]:= 8;
sudoki[7,9]:= 4;

sudoki[8,1]:= 2;
sudoki[8,2]:= 8;
sudoki[8,3]:= 7;
sudoki[8,4]:= 4;
sudoki[8,5]:= 1;
sudoki[8,6]:= 9;
sudoki[8,7]:= 6;
sudoki[8,8]:= 3;
sudoki[8,9]:= 5;

sudoki[9,1]:= 3;
sudoki[9,2]:= 4;
sudoki[9,3]:= 5;
sudoki[9,4]:= 2;
sudoki[9,5]:= 8;
sudoki[9,6]:= 6;
sudoki[9,7]:= 1;
sudoki[9,8]:= 7;
sudoki[9,9]:= 9;







for i :=1 to 9 do
	begin

		writeln(''); // para darle espacio a los numeros//

		for j := 1 to 9 do // uso dos ciclos for para optimizar //
		begin
			
			write(' ');
			write(sudoki[i,j]);
			if j = 3 then
			begin
				write(' ');
			end;

			if j = 6 then
			begin
				write(' ');
			end;

			// aqui separo las columnas //
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



readln;
end

