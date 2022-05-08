SELECT * from addressbooks inner join addressbooks_name where city = 'Pune' OR state = 'MP';

SELECT  city, state, COUNT(*) from addressbooks  where city = 'Pune' AND state = 'Maharashtra';

SELECT * FROM addressbooks WHERE state = 'Maharashtra' ORDER BY firstname ASC;

SELECT type, count(*) FROM addressbooks join addressbooks_type group by type;

select * from addressbooks inner join addressbooks_type ON addressbooks.id = 1 and addressbooks_type.id IN(1,2);

select * from addressbooks inner join addressbooks_name inner join addressbooks_type ON addressbooks.id = 1 and addressbooks_name.id= '1' and addressbooks_type.id IN (1);