program arreglitos;



var

revelador: array [1..9,1..9] of boolean;
i,j: integer;
sudoka: array [1..9,1..9] of integer;
begin
sudoka[1,1]:= 5;
sudoka[1,2]:= 3;
sudoka[1,3]:= 4;
sudoka[1,4]:= 6;
sudoka[1,5]:= 7;
sudoka[1,6]:= 8;
sudoka[1,7]:= 9;
sudoka[1,8]:= 1;
sudoka[1,9]:= 2;

sudoka[2,1]:= 6;
sudoka[2,2]:= 7;
sudoka[2,3]:= 2;
sudoka[2,4]:= 1;
sudoka[2,5]:= 9;
sudoka[2,6]:= 5;
sudoka[2,7]:= 3;
sudoka[2,8]:= 4;
sudoka[2,9]:= 8;

sudoka[3,1]:= 1;
sudoka[3,2]:= 9;
sudoka[3,3]:= 8;
sudoka[3,4]:= 3;
sudoka[3,5]:= 4;
sudoka[3,6]:= 2;
sudoka[3,7]:= 5;
sudoka[3,8]:= 6;
sudoka[3,9]:= 7;

sudoka[4,1]:= 8;
sudoka[4,2]:= 5;
sudoka[4,3]:= 9;
sudoka[4,4]:= 7;
sudoka[4,5]:= 6;
sudoka[4,6]:= 1;
sudoka[4,7]:= 4;
sudoka[4,8]:= 2;
sudoka[4,9]:= 3;

sudoka[5,1]:= 4;
sudoka[5,2]:= 2;
sudoka[5,3]:= 6;
sudoka[5,4]:= 8;
sudoka[5,5]:= 5;
sudoka[5,6]:= 3;
sudoka[5,7]:= 7;
sudoka[5,8]:= 9;
sudoka[5,9]:= 1;

sudoka[6,1]:= 7;
sudoka[6,2]:= 1;
sudoka[6,3]:= 3;
sudoka[6,4]:= 9;
sudoka[6,5]:= 2;
sudoka[6,6]:= 4;
sudoka[6,7]:= 8;
sudoka[6,8]:= 5;
sudoka[6,9]:= 6;


sudoka[7,1]:= 9;
sudoka[7,2]:= 6;
sudoka[7,3]:= 1;
sudoka[7,4]:= 5;
sudoka[7,5]:= 3;
sudoka[7,6]:= 7;
sudoka[7,7]:= 2;
sudoka[7,8]:= 8;
sudoka[7,9]:= 4;

sudoka[8,1]:= 2;
sudoka[8,2]:= 8;
sudoka[8,3]:= 7;
sudoka[8,4]:= 4;
sudoka[8,5]:= 1;
sudoka[8,6]:= 9;
sudoka[8,7]:= 6;
sudoka[8,8]:= 3;
sudoka[8,9]:= 5;

sudoka[9,1]:= 3;
sudoka[9,2]:= 4;
sudoka[9,3]:= 5;
sudoka[9,4]:= 2;
sudoka[9,5]:= 8;
sudoka[9,6]:= 6;
sudoka[9,7]:= 1;
sudoka[9,8]:= 7;
sudoka[9,9]:= 9;

		revelador[1,1]:= true;
		revelador[1,2]:= true;
		revelador[1,5]:= true;
		
		
		revelador[2,1]:= true;
		revelador[2,4]:= true;
		revelador[2,5]:= true;
		revelador[2,6]:= true;
		
		revelador[3,2]:= true;
		revelador[3,3]:= true;
		revelador[3,8]:= true;
		
		
		revelador[4,1]:= true;
		revelador[4,5]:= true;
		revelador[4,9]:= true;
		
		revelador[5,1]:= true;
		revelador[5,4]:= true;
		revelador[5,6]:= true;
		revelador[5,9]:= true;
		
		revelador[6,1]:= true;
		revelador[6,5]:= true;
		revelador[6,9]:= true;
		
		
		revelador[7,2]:= true;
		revelador[7,7]:= true;
		revelador[7,8]:= true;

	for i :=1 to 9 do
	begin

		writeln(' ');

		for j := 1 to 9 do
		begin
			
			write(revelador[i,j],' ');
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

	for i:= 1 to 9 do 
	begin 
		for j:= 1 to 9 do 
		begin

			if revelador[i,j] = true then
			begin 

			write (sudoka[i,j]);


			end;

			if not revelador[i,j] = true then

			begin 

			write (0);


			end;
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



	readln()
end.




