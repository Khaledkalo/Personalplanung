USE master;
GO

IF DB_ID('PersonalPlanung') IS NULL
  CREATE DATABASE PersonalPlanung;
GO

USE PersonalPlanung;
GO 


IF OBJECT_ID('BenutzerKonto') IS NOT NULL
  DROP TABLE BenutzerKonto;
GO


IF OBJECT_ID('MitarbeiterPlan') IS NOT NULL
  DROP TABLE MitarbeiterPlan;
GO

IF OBJECT_ID('Mitarbeiter') IS NOT NULL
  DROP TABLE Mitarbeiter;
GO

IF OBJECT_ID('Plann') IS NOT NULL
  DROP TABLE Plann;
GO


CREATE TABLE Mitarbeiter (
  ID_Mitarbeiter int IDENTITY NOT NULL PRIMARY KEY, 
  Vorname nvarchar(100),
  Nachname nvarchar(100),
  Geburtsdatum date,
  Einstellungsdatum date,
  Stellenbezeichnung nvarchar(100),
  Email nvarchar(200)
);

CREATE TABLE BenutzerKonto (
  ID_Account int NOT NULL IDENTITY PRIMARY KEY, 
  Benutzername nvarchar(50),
  Passwort nvarchar(50),
  IstAdmin bit,
  Angestellter int
  CONSTRAINT fk_Angestellter  FOREIGN KEY (Angestellter)  REFERENCES Mitarbeiter(ID_Mitarbeiter)
);

CREATE TABLE Plann (
  ID_Plan int NOT NULL IDENTITY PRIMARY KEY, 
  Jahr nvarchar(50),
  Kalenderwoche nvarchar(50),
  Wochentag nvarchar(50),
  Termin datetime
);

CREATE TABLE MitarbeiterPlan ( 
  ID_Mitarbeiter int,
  ID_Plan int,
  CONSTRAINT pk_MitarbeiterPlan PRIMARY KEY (ID_Mitarbeiter, ID_Plan),
  CONSTRAINT fk_Mitarbeiter  FOREIGN KEY (ID_Mitarbeiter) REFERENCES Mitarbeiter(ID_Mitarbeiter),
  CONSTRAINT fk_plann  FOREIGN KEY (ID_Plan) REFERENCES Plann(ID_Plan)
);

INSERT INTO Mitarbeiter(Vorname, Nachname, Geburtsdatum, Einstellungsdatum, Stellenbezeichnung, Email) VALUES
  ('Jamie ','Oliver ','19750110','20020112','Koch','Jamie@Oliver.de'),
  ('Rafael','Nadal ','19800110','20000112','Koch','Rafael@Nadal.de'),
  ('Novak','Djokovic  ','19820110','20050512','Koch','Novak@Djokovic.de'),
   ('Roger','Federer ','19840110','20040512','Servicekraft','Roger@Federer.de'),
  ('Jimmy','Connors','19860110','20030712','Koch','Jimmy@Connors.de')
;

INSERT INTO BenutzerKonto (Benutzername, Passwort, IstAdmin, Angestellter) VALUES
  ('Jamieoliver', 'oliver', 1, 1),
  ('RafaelNadal', 'Nadal', 1, 2),
  ('NovakDjokovic', 'Djokovic', 0, 3),
  ('RogerFederer', 'Federer', 0, 4),
  ('JimmyConnors', 'Connors', 0, 5)
  ;

INSERT INTO Plann(Jahr, Kalenderwoche, Wochentag, Termin) VALUES
  ('2022', '08', 'Montag', '2022-02-01 08:00:00'),
  ('2022', '08', 'Dienstag', '20220202 08:00:00'),
  ('2022', '08', 'Mittwoch', '20220203 08:00:00'),
  ('2022', '08', 'Donnerstag','20220204 08:00:00'),
  ('2022', '08', 'Freitag', '20220205 08:00:00'),
  ('2022', '08', 'Samstag', '20220206 08:00:00'),
  ('2022', '08', 'Sonntag', '20220207 08:00:00')
;

INSERT INTO MitarbeiterPlan(ID_Mitarbeiter, ID_Plan) VALUES
  (1,1),  (2,1),  (3,2),  (4,2),  (5,7),
  (1,3),  (2,3),  (3,4),  (4,4),  (5,5),
  (1,5),  (2,5),  (3,6),  (4,6),
  (1,7)

;
