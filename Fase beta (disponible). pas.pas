program Fase_beta_del_juego;

uses crt;



type
Sudoki = array [1..9,1..9] of integer;
// Uso una Etiqueta para que se haga mas Facil llamar a una funcion //

Var
sudoku, sudoka: Sudoki; // De la funcion Gener//
juego_iniciado, fin_de_juego, pista: boolean;
revelador: array [1..9,1..9] of boolean;
i,j,o: integer;
f,k,n: integer;
npista: integer;
opcion,error: integer;
usuario: string;




Begin

// Este va a ser el algoritmo para la fase beta //

writeln (' Bienvenidos a limalaya ');
writeln ('  ');
writeln (' ingresa tu nombre y empieza a jugar ');
readln(usuario);


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
		
		
		revelador[8,4]:= true;
		revelador[8,5]:= true;
		revelador[8,6]:= true;
		revelador[8,9]:= true;
		
		
		revelador[9,5]:= true;
		revelador[9,8]:= true;
		revelador[9,9]:= true;

	repeat

		Clrscr;
		for i :=1 to 9 do
		begin

			for j := 1 to 9 do
			begin
				
				if not revelador[i,j] = true then
				begin
				revelador[i,j]:= false
				end;	
			end;
		end;

		for i:= 1 to 9 do
		begin
			writeln('');
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

		writeln(' ');
		writeln(' ');
		repeat // selector de fila con control //
			writeln('Dame el numero de fila');
			readln(f);
			writeln(' ');
			writeln(' ');
			writeln('El numero escogido es "',f,'" Presiona 1 si no 2');
			readln(n);
			writeln(' ');
			writeln(' ');
		until (n=1);
		repeat // selector de fila con control //
			writeln('Dame el numero de columna');
			readln(k);
			writeln(' ');
			writeln(' ');
			writeln('El numero escogido es "',k,'" Presiona 1 si no 2');
			readln(n)
		until (n=1);

		repeat // selector de fila con control //
			writeln('Dame el numero que deseas ingresar');
			readln(o);
			writeln(' ');
			writeln(' ');
			writeln('El numero escogido es "',o,'" Presiona 1 si no 2');
			readln(n)
		until (n=1);

		

	    repeat

	    	writeln(' ');
	    	writeln(' ');
		    writeln('Dime el numero de opcion de juego: ');
			writeln('1: para nuevo dato');
			writeln(' ');
			writeln('2: para borrar estatus');
			writeln(' ');
			writeln('3: para para modo pista');
			writeln(' ');
			writeln('4: para para salir');
			writeln(' ');
		    readln(opcion);

		    if opcion = 1 then
		    begin
		    writeln(' ');
		    write('has escogido la opcion 1');

		    if o = sudoka[f,k] then
			begin
			revelador[f,k]:= true;

			juego_iniciado := true;	
			end
			else
			error:= error + 1;
			begin
			
			writeln(' el valor no coincide ');
			juego_iniciado := true;
			error:= error + 1;
			readln();

			end;
		    end
		    else begin
			    if opcion = 2 then
			    begin
				    Clrscr;
				    write('has escogido la opcion 2');
				    writeln ('  ');
				    writeln ('nombre:',usuario);
				    writeln ('  ');
				    writeln ('Numero de pistas usados: ',npista,' /17');
				    writeln ('  ');
				    writeln ('Numero de errores: ',error);
				    readln();


				    juego_iniciado := true;	
			    end
			    else begin
				    if opcion = 3 then
				    begin
				    write('has escogido la opcion 3');
				    juego_iniciado := true;	
				    npista:= npista + 1;

				   	if npista < 17 then
				   	begin
					   	repeat
						    f:= random(8)+1;
						    k:= random(8)+1;

						    if revelador[f,k] = false then
						    begin
							pista:= true;
							
						    end;
					    until (pista = true);
					    revelador[f,k]:= true;

				   	end else
				   	begin
				   		writeln(' ');
				   		writeln(' ');
						writeln('has ecedido el numero de pistas');
						writeln(' ');
						writeln(' ');
						writeln('consulta status para estar al tanto');
						writeln(' ');
				   	end;

				    readln();
				    end
				    else begin
					    if opcion = 4 then
					    begin
					    write('has escogido la opcion 4');
					    juego_iniciado := true;	
					    fin_de_juego:= true;
					    end
					    else begin
					    write('has escogido la opcion no has escogido ninguna opcion');
					    juego_iniciado := false;
					    end;

				    end;
			    end;

		    end;

	    until ( juego_iniciado = true );

	until( fin_de_juego = true);


	
	
	readln()
End.
