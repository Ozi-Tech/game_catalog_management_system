Create Table game_platform(
    id INT NOT NULL,
    gameID INT NOT NULL,
    platformID INT NOT NULL,
    starttime TIMESTAMP,
    endtime TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (gameID) references game(id),
    FOREIGN KEY (platformID) references platform(id)
);