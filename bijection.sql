SET SERVEROUTPUT ON

DROP TABLE alphabet;

create table alphabet(
	lettre VARCHAR(20),
	nombre NUMBER(20),
	PRIMARY KEY (lettre, nombre)
);

INSERT INTO alphabet VALUES ('a', 1);
INSERT INTO alphabet VALUES ('b', 2);
INSERT INTO alphabet VALUES ('c', 3);
INSERT INTO alphabet VALUES ('d', 4);
INSERT INTO alphabet VALUES ('e', 5);
INSERT INTO alphabet VALUES ('f', 6);
INSERT INTO alphabet VALUES ('g', 7);
INSERT INTO alphabet VALUES ('h', 8);
INSERT INTO alphabet VALUES ('i', 9);
INSERT INTO alphabet VALUES ('j', 10);
INSERT INTO alphabet VALUES ('k', 11);
INSERT INTO alphabet VALUES ('l', 12);
INSERT INTO alphabet VALUES ('m', 13);
INSERT INTO alphabet VALUES ('n', 14);
INSERT INTO alphabet VALUES ('o', 15);
INSERT INTO alphabet VALUES ('p', 16);
INSERT INTO alphabet VALUES ('q', 17);
INSERT INTO alphabet VALUES ('r', 18);
INSERT INTO alphabet VALUES ('s', 19);
INSERT INTO alphabet VALUES ('t', 20);
INSERT INTO alphabet VALUES ('u', 21);
INSERT INTO alphabet VALUES ('v', 22);
INSERT INTO alphabet VALUES ('w', 23);
INSERT INTO alphabet VALUES ('x', 24);
INSERT INTO alphabet VALUES ('y', 25);
INSERT INTO alphabet VALUES ('z', 26);
INSERT INTO alphabet VALUES ('A', 27);
INSERT INTO alphabet VALUES ('B', 28);
INSERT INTO alphabet VALUES ('C', 29);
INSERT INTO alphabet VALUES ('D', 30);
INSERT INTO alphabet VALUES ('E', 31);
INSERT INTO alphabet VALUES ('F', 32);
INSERT INTO alphabet VALUES ('G', 33);
INSERT INTO alphabet VALUES ('H', 34);
INSERT INTO alphabet VALUES ('I', 35);
INSERT INTO alphabet VALUES ('J', 36);
INSERT INTO alphabet VALUES ('K', 37);
INSERT INTO alphabet VALUES ('L', 38);
INSERT INTO alphabet VALUES ('M', 39);
INSERT INTO alphabet VALUES ('N', 40);
INSERT INTO alphabet VALUES ('O', 41);
INSERT INTO alphabet VALUES ('P', 42);
INSERT INTO alphabet VALUES ('Q', 43);
INSERT INTO alphabet VALUES ('R', 44);
INSERT INTO alphabet VALUES ('S', 45);
INSERT INTO alphabet VALUES ('T', 46);
INSERT INTO alphabet VALUES ('U', 47);
INSERT INTO alphabet VALUES ('V', 48);
INSERT INTO alphabet VALUES ('W', 49);
INSERT INTO alphabet VALUES ('X', 50);
INSERT INTO alphabet VALUES ('Y', 51);
INSERT INTO alphabet VALUES ('Z', 52);
INSERT INTO alphabet VALUES (' ', 53);



CREATE OR REPLACE FUNCTION getLettre(monNombre IN NUMBER)
RETURN VARCHAR
AS
  res VARCHAR(50) :=  '';
BEGIN
  SELECT lettre INTO res FROM ALPHABET WHERE nombre = monNombre;
  RETURN res;
END;
/

CREATE OR REPLACE FUNCTION getNombre(maLettre IN VARCHAR)
RETURN NUMBER
AS
  res NUMBER;
BEGIN
  SELECT nombre INTO res FROM ALPHABET WHERE lettre = maLettre;
  RETURN res;
END;
/

select getLettre(1) from dual;

select getNombre('a') from dual;