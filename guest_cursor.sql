create or replace procedure guest_cursor
IS
     vsabun guest.sabun%type;
     vname guest.name%type;
     vtitle guest.title%type;
     vpay guest.pay%type;
     vemail guest.email%type;
     cursor cs1
IS
     SELECT sabun, name, title, pay, email
     FROM guest;
BEGIN
OPEN cs1;
LOOP
	FETCH cs1 INTO vsabun, vname, vtitle, vpay, vemail;
	EXIT WHEN cs1%notfound;
	dbms_output.put_line(vsabun || '\t' || vname || '\t' || vtitle || '\t' || vpay || '\t' || vemail);
 	END LOOP;
CLOSE cs1;
END;
/

SELECT * FROM guest;


