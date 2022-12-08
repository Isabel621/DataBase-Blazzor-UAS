create table author 
(
	authorid serial primary key,
	nama varchar (100) not null,
	email varchar (50) not null
);

create table mtrtable
(
	kontenid serial primary key,
	authorid int not null,
	kelas varchar (50) not null ,
	materi varchar (250) not null,
	penjelasan text not null
	
);

ALTER TABLE mtrtable 
	ADD CONSTRAINT mtrtable_author_fk FOREIGN KEY (authorid)
	REFERENCES author (authorid);
select * from mtrtable