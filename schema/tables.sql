CREATE TABLE publisher(
    id INT NOT NULL,
    name varchar2(200) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE platform (
    id INT NOT NULL,
    name VARCHAR2(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE game (
    id INT NOT NULL,
    title VARCHAR2(255) NOT NULL,
    Status VARCHAR2(20) DEFAULT 'Ongoing' NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE copy (
    id INT NOT NULL,
    type varchar2(200) NOT NULL,
    PRIMARY KEY (id)
);

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
