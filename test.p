VAR j : INTEGER;
     E : CHAR;
    i, div : DOUBLE.

i:=0.0;
j:=10;
div:=10.0;
E:='d';

(* Boucle WHILE *)
DISPLAY 'W'; DISPLAY 'H'; DISPLAY 'I'; DISPLAY 'L'; DISPLAY 'E';
DISPLAY '\n';
WHILE i < 5.0 DO
BEGIN
    DISPLAY E;
    DISPLAY '=';
    DISPLAY div;
    DISPLAY '\n';
    DISPLAY 'i';
    DISPLAY '=';
    DISPLAY i;
    DISPLAY '\n';
    i:=i+1.0;
    div:=div/i
END;

(* Sauter une ligne *)
DISPLAY '\n';

(* Boucle FOR (incrémenté) *)
DISPLAY 'F'; DISPLAY 'O'; DISPLAY 'R'; DISPLAY ' '; DISPLAY '+';
DISPLAY '\n';
FOR j:= 1 TO 5 DO
BEGIN
    DISPLAY j;
    DISPLAY '\n'
END;

(* Sauter une ligne *)
DISPLAY '\n';

(* Boucle FOR (décrémenté) *)
DISPLAY 'F'; DISPLAY 'O'; DISPLAY 'R'; DISPLAY ' '; DISPLAY '-';
DISPLAY '\n';
FOR j:= 10 DOWNTO 6 DO
BEGIN
    DISPLAY j;
    DISPLAY '\n'
END;
DISPLAY '\n';


j:=j-2;

(* Le carré*)
DISPLAY 'C'; DISPLAY 'A'; DISPLAY 'R'; DISPLAY 'R'; DISPLAY 'E';
DISPLAY '\n';
CARRE j;
DISPLAY j; 
DISPLAY '\n';


(* Le Case*)
DISPLAY 'C'; DISPLAY 'A'; DISPLAY 'S'; DISPLAY 'E'; DISPLAY ' '; DISPLAY 'j';
DISPLAY '\n';
CASE j OF
   6 : BEGIN
            DISPLAY '\n';
            DISPLAY 'j';
            DISPLAY '=';
            DISPLAY '6'
        END;
   7 : BEGIN
            DISPLAY '\n';
            DISPLAY 'j';
            DISPLAY '=';
            DISPLAY '7'
        END
END;
DISPLAY '\n'
.
