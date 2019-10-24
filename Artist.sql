USE MUSIC;


CREATE TABLE ARTIST (
ArtistID       Integer     NOT NULL,
ArtistName    varchar(15)     NOT NULL,
Rating        Integer     NULL,
PhoneNumber   Integer     Not Null,
CONSTRAINT              ARTIST_PK       PRIMARY KEY(ArtistID)
);

ALTER TABLE ARTIST
DROP
ArtistName;

ALTER TABLE ARTIST
ADD 
ArtistName varchar(35) NOT NULL;

SELECT *
FROM Artist;

CREATE TABLE ALBUM (
ArtistID    integer     NOT NULL,
TrackName   varchar(15)  NOT NULL,
Genre       varchar(15)  NOT NULL,
ReleasedYear Integer     NOT NULL,
Amount_Album_released Integer NOT NULL,
CONSTRAINT              ALBUM_PK       PRIMARY KEY(Amount_Album_released),
CONSTRAINT              ALBUM_FK       FOREIGN KEY(ArtistID)
				          REFERENCES    ARTIST(ArtistID)
              );            

INSERT INTO ARTIST VALUES (
'1','SHINA PETERS', 5, '102323');
INSERT INTO ARTIST VALUES (
'2','TY BELLO',5,'293887');
INSERT INTO ARTIST VALUES (
'3','DADDY SHOWKEY',4,'45432');
INSERT INTO ARTIST VALUES (
'4','CELO GREEN','6','209393');
INSERT INTO ARTIST VALUES (
'5','LOONEY TUNES','5','46464');

INSERT INTO ALBUM VALUES (
'1','Seven seven','FUJI','1994','5');
INSERT INTO ALBUM VALUES (
'2','GREEN LAND ', 'POP','2007','2');
INSERT INTO ALBUM VALUES (
'3', 'BILL JEAN','POP','2006','10');
INSERT INTO ALBUM VALUES (
'4', 'THIS CHRISMAS','POP','2010','3');
INSERT INTO ALBUM VALUES (
'5','BATMAN','RAP','2015','6');


Select DISTINCT Artist.ArtistID, ArtistName, Amount_Album_released, ReleasedYear
from Album, Artist;

