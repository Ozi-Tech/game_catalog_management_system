Create Table game_publisher(
    id INT NOT NULL,
    gameID INT NOT NULL,
    publisherID INT NOT NULL,
    starttime TIMESTAMP,
    endtime TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (gameID) references game(id),
    FOREIGN KEY (publisherID) references publisher(id)
);