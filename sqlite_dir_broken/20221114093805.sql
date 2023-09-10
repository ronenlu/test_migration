-- create "playlist_track" table
CREATE TABLE `playlist_track` (`PlaylistId` integer NOT NULL, `TrackId` integer NOT NULL, PRIMARY KEY (`PlaylistId`, `TrackId`), CONSTRAINT `0` FOREIGN KEY (`TrackId`) REFERENCES `tracks` (`TrackId`) ON UPDATE NO ACTION ON DELETE NO ACTION, CONSTRAINT `1` FOREIGN KEY (`PlaylistId`) REFERENCES `playlists` (`PlaylistId`) ON UPDATE NO ACTION ON DELETE NO ACTION);
