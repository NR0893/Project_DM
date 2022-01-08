CREATE TABLE Users( 
			id		    int		    IDENTITY(1,1),
			username	varchar(20)	NOT NULL, 
			CONSTRAINT	PK_Users		PRIMARY KEY(id));

CREATE TABLE God(
            id          int         IDENTITY(1,1),
            godName     varchar(50)     NOT NULL,
            title       varchar(50)     NOT NULL,
            pantheon    varchar(50)     NOT NULL,
            godRole     varchar(20)     NOT NULL,
            attackType  varchar(20)     NOT NULL,
            powerType   varchar(20)     NOT NULL,
            releaseDate date        NOT NULL,
            CONSTRAINT  PK_God      PRIMARY KEY(id));

CREATE TABLE Ability(
		id	                int	        IDENTITY(1,1),
                abiltyName	        varchar(50)	NOT NULL,
	        abilityType	        varchar(20)     NOT NULL,			
                cooldown                float,
                godId                   int,
            CONSTRAINT PK_Ability     PRIMARY KEY(id),
            CONSTRAINT FK_Ability_God
                    FOREIGN KEY(godId)  
                    REFERENCES God(id) ON DELETE CASCADE);

CREATE TABLE Build(
			id	        int	        IDENTITY(1,1),
			godId	    int,
            userId      int,
            buildName   varchar(50) NOT NULL,
			gameMode	varchar(20)	NOT NULL,
            dateCreated date        NOT NULL,
            CONSTRAINT PK_Build     PRIMARY KEY(id),
            CONSTRAINT UK_Build_buildName   UNIQUE(buildName),
            CONSTRAINT FK_Build_God
                    FOREIGN KEY(godId)  
                    REFERENCES God(id) ON DELETE CASCADE,
            CONSTRAINT FK_Build_Users
                    FOREIGN KEY(userId)  
                    REFERENCES Users(id) ON DELETE CASCADE);

CREATE TABLE Item(
            id          int             IDENTITY(1,1),
            itemName    varchar(50)     NOT NULL,
            tier        varchar         NOT NULL,
            cost        int             NOT NULL,      
            itemType    varchar(50)     NOT NULL,
            passive     varchar(MAX)    NULL,
            CONSTRAINT  PK_Item         PRIMARY KEY(id));

CREATE TABLE BuildItem(
            id              int         IDENTITY(1,1),
            buildId         int,
            itemId          int,
            CONSTRAINT  PK_BuildItem    PRIMARY KEY(id),
            CONSTRAINT  FK_BuildItem_Build
                    FOREIGN KEY(buildId)
                    REFERENCES Build(id) ON DELETE CASCADE,
            CONSTRAINT  FK_BuildItem_Item
                    FOREIGN KEY(itemId)
                    REFERENCES Item(id) ON DELETE CASCADE);

CREATE TABLE Stat(
            id          int         IDENTITY(1,1),
            statName    varchar(20) NOT NULL,
            CONSTRAINT  PK_Stat     PRIMARY KEY(id));

CREATE TABLE ItemStat(
            id          int             IDENTITY(1,1),
            itemId      int,
            statId      int,
            statValue   float           NOT NULL,
            CONSTRAINT  PK_ItemStat     PRIMARY KEY(id),
            CONSTRAINT FK_ItemStat_Item
                    FOREIGN KEY(itemId)  
                    REFERENCES Item(id) ON DELETE CASCADE,
            CONSTRAINT FK_ItemStat_Stat
                    FOREIGN KEY(statId)  
                    REFERENCES Stat(id) ON DELETE CASCADE);

CREATE TABLE GodStat(
            id          int             IDENTITY(1,1),
            godId       int,
            statId      int,
            statValue   float           NOT NULL,
            CONSTRAINT  PK_GodStat     PRIMARY KEY(id),
            CONSTRAINT FK_GodStat_God
                    FOREIGN KEY(godId)  
                    REFERENCES God(id) ON DELETE CASCADE,
            CONSTRAINT FK_GodStat_Stat
                    FOREIGN KEY(statId)  
                    REFERENCES Stat(id) ON DELETE CASCADE);


