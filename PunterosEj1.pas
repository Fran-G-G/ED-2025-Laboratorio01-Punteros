{ 
    Programa que demuestra el uso de punteros en Pascal 
}

program PunterosEj1;

uses
    ctr;

var
    x: integer; { Declara variable entera (x) }
    p_ent: ^integer; { Declara una variable de tipo puntero a entero (p_ent) }

begin

    x:= 100; { Da el valor 100 a x }

    { Crea un entero dinámicamente con p_ent y dale el valor que tiene actualmente x }
    New(p_ent);
    p_ent^:= x;

    { Imprime por pantalla el valor contenido en el entero al que apunta p_ent }
    writeln('Valor de p_ent^: ', p_ent^);

    { Crea con new un nuevo entero dinámicamente }
    New(p_ent);

    { Imprime por pantalla el valor contenido en el entero al que apunta p_ent }
    writeln('Valor de p_ent^ después del New: ', p_ent^);

    { Pon el puntero p_ent a apuntar a x }
    p_ent := @x;

    { Súmale 100 al entero apuntado por el puntero p_ent }
    p_ent^ := p_ent^ + 100;

    { Imprime por pantalla el valor de x y también del entero al que apunta p_ent }
    writeln('Valor de x después de sumar 100: ', x, '. Valor de p_ent^ volviendo a apuntar a x: ', p_ent^);

    { Pon el puntero p_ent a NIL }
    p_ent := nil;

    { Libera la memoria asociada al nuevo entero }

    { Suma 100 a x pero sin usar x en la operación de suma (solo usando p_ent) }

    { Muestra por pantalla que son iguales }

    { Libera toda la memoria asociada a p_ent y termina }

end.
