
program DiasDeLaSemana2;



function las_opciones(opcion:integer):integer;

begin
    
    case opcion of

    	1: write('has escogido la opcion 1');
		2: write('has escogido la opcion 1');
		3: write('has escogido la opcion 1');

    else 
        writeln('Dia no valido');
    end;
end;
var
    opcion: integer;
begin
	write('Dime el numero de opcion de juego: ');
    readln(opcion);
    las_opciones(opcion);
    readln() 
end.
