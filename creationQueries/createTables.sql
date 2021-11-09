CREATE TABLE Agent (
    AgentName NVARCHAR(24) PRIMARY KEY NOT NULL,
    AgentRole NVARCHAR(24) NOT NULL
);

CREATE TABLE Player (
    PlayerID INTEGER PRIMARY KEY AUTOINCREMENT,
    PlayerRegion NVARCHAR(24) NOT NULL,
    PlayerAlias NVARCHAR(24) NOT NULL
);

CREATE TABLE Team (
    TeamID INTEGER PRIMARY KEY AUTOINCREMENT,
    TeamName NVARCHAR(24) NOT NULL,
    TeamRegion NVARCHAR(24) NOT NULL
);

CREATE TABLE Event (
    EventID INTEGER PRIMARY KEY AUTOINCREMENT,
    EventName NVARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,                       --date = YYYY-MM-DD
    EndDate DATE NOT NULL
);

CREATE TABLE Selects (
    PlayerID INTEGER NOT NULL,
    AgentName NVARCHAR(24) NOT NULL,
    CONSTRAINT fk_player_selects FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    CONSTRAINT fk_agent_selects FOREIGN KEY (AgentName) REFERENCES Agent(AgentName)
);

CREATE TABLE Plays_For (
    SignDate DATE,
    PlayerID INTEGER NOT NULL,
    TeamID INTEGER NOT NULL,
    CONSTRAINT fk_player_plays_for FOREIGN KEY (PlayerID) REFERENCES Player(PLayerID),
    CONSTRAINT fk_team_plays_for FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);

CREATE TABLE Attends (
    Result INTEGER NOT NULL,
    TeamID INTEGER NOT NULL,
    EventID INTEGER NOT NULL,
    CONSTRAINT fk_team_attends FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
    CONSTRAINT fk_event_attends FOREIGN KEY (EventID) REFERENCES Event(EventID)
);