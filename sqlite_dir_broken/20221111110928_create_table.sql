-- create "albums" table
CREATE TABLE `albums` (`Title` nvarchar NOT NULL, `ArtistId` integer NOT NULL, `AlbumId` integer NOT NULL, PRIMARY KEY (`AlbumId`), CONSTRAINT `0` FOREIGN KEY (`ArtistId`) REFERENCES `artists` (`ArtistId`) ON UPDATE NO ACTION ON DELETE NO ACTION);
