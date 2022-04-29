DECLARE val venky.c1 % type;
CURSOR cur IS (SELECT * FROM venky);
dup exception;
pragma exception_init(dup, -11111);
BEGIN 
val:= &VALUE;
FOR i IN cur 
loop 
if val = i.c1 THEN 
    raise dup;
    goto sett;
END if;
END loop;
INSERT INTO venky VALUES(val);
COMMIT;
<<sett>> 
exception
    WHEN dup THEN 
        dbms_output.put_line('Exception-- Code: ' | | sqlcode | | ' Info: Venky does not hav dup values...noob');
END;
/