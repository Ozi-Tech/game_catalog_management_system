CREATE OR REPLACE VIEW game_view AS
SELECT game.id AS ID, game.title AS Game, copy.type AS Copy, platform.name AS Platform, publisher.name AS Publisher, game.Status AS Status, 
game_platform.starttime AS StartTime, game_publisher.endtime AS EndTime
FROM game
    LEFT JOIN game_copy
    ON game.id = game_copy.gameID
    LEFT JOIN copy
    ON game_copy.copyID = copy.id
    LEFT JOIN game_platform
    ON game.id = game_platform.gameID
    LEFT JOIN platform
    ON game_platform.platformID = platform.id
    LEFT JOIN game_publisher
    ON game.id = game_publisher.gameID
    LEFT JOIN publisher
    ON game_publisher.publisherID = publisher.id
WHERE game_platform.endtime IS NULL AND game_publisher.endtime IS NULL;
