Create Table game_copy(
    id INT NOT NULL,
    gameID INT NOT NULL,
    copyID INT NOT NULL,
    starttime TIMESTAMP,
    endtime TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (gameID) references game(id),
    FOREIGN KEY (copyID) references copy(id)
);