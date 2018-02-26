create table Kategorie (
	id int identity(1,1)  primary key,
	beschreibung varchar(50) not null
);

create table Vokabel (
	id int identity(1,1) primary key,
	kategorie int references Kategorie(id)
);

create table Sprache(
	id int identity(1,1) primary key,
	beschreibung varchar(50) not null
);

drop table Uebersetzung;
create table Uebersetzung(
	vokabel int references Vokabel,
	sprache int references sprache,
	bezeichnung varchar(50),
	primary key (vokabel, sprache)
);
