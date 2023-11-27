select upper("muhammad ALi"); -- convert to big letter
select lower("MUHAMMAD ALI"); -- convert to small letter
select character_length("MUHAMMAD ALI"); -- count all letters in a string
select char_length("MUHAMMAD ALI"); -- count all letters in a string
select length("MUHAMMAD ALI"); -- count all bytes in a string
select concat("MUHAMMAD ALI ",23); -- concatination of str and other strS
select concat_ws(" - ","MUHAMMAD ALI",23); -- concatination of str and other str but you can also add sperator
select trim("	   MUHAMMAD ALI	   ");-- remove all the spaces in the sides
select position("ali" in "Hello my name is ali samtia but I am very happy to be a programmer");-- find a specific string in a long string
select locate("ali","Hello my name is ali samtia but I am very happy to be a programmer",19);-- find a specific string in a long string we can also use where from to start search

