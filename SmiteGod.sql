INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Amaterasu','The Shining Light','Japanese','Warrior','Melee','Physical','2016/01/12');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='Physical Power'),39),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='Health'),480),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='Mana'),220),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='Movement Speed'),375),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='Physical Defense'),18),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Amaterasu'),(SELECT id FROM Stat WHERE statName='MP5'),4.8);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Bellona','The Godess of War','Roman','Warrior','Melee','Physical','2015/02/15');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='Physical Power'),36),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='Health'),490),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='Mana'),220),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='Movement Speed'),375),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='Physical Defense'),18),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Bellona'),(SELECT id FROM Stat WHERE statName='MP5'),4.8);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Odin','The Allfather','Norse','Warrior','Melee','Physical','2012/05/31');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='Physical Power'),38),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='Health'),470),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='Mana'),200),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='Movement Speed'),370),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='Physical Defense'),16),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='HP5'),9),
((SELECT id FROM God WHERE godName='Odin'),(SELECT id FROM Stat WHERE statName='MP5'),4.1);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Gilgamesh','King of Uruk','Babylonian','Warrior','Melee','Physical','2021/04/20');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='Physical Power'),34),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='Health'),480),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='Mana'),210),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='Movement Speed'),375),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='Physical Defense'),18),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='HP5'),10),
((SELECT id FROM God WHERE godName='Gilgamesh'),(SELECT id FROM Stat WHERE statName='MP5'),4.3);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Sun Wukong','The Monkey King','Chinese','Warrior','Melee','Physical','2013/10/23');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='Physical Power'),39),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='Health'),480),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='Mana'),205),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='Movement Speed'),370),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='Physical Defense'),18),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Sun Wukong'),(SELECT id FROM Stat WHERE statName='MP5'),4.3);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Kali','Godess of Destruction','Hindu','Assassin','Melee','Physical','2012/05/31');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='Physical Power'),37),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='Health'),470),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='Mana'),225),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='Movement Speed'),375),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='Physical Defense'),15),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='HP5'),9),
((SELECT id FROM God WHERE godName='Kali'),(SELECT id FROM Stat WHERE statName='MP5'),4.3);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Loki','The Trickster God','Norse','Assassin','Melee','Physical','2012/11/02');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='Physical Power'),38),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='Health'),395),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='Mana'),225),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='Movement Speed'),375),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='Physical Defense'),11),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Loki'),(SELECT id FROM Stat WHERE statName='MP5'),4.2);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Thor','God of Thunder','Norse','Assassin','Melee','Physical','2012/09/06');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='Physical Power'),39),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='Health'),475),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='Mana'),240),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='Movement Speed'),370),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='Physical Defense'),14),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='HP5'),9),
((SELECT id FROM God WHERE godName='Thor'),(SELECT id FROM Stat WHERE statName='MP5'),4.4);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Thanatos','Hand of Death','Greek','Assassin','Melee','Physical','2013/06/18');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='Physical Power'),39),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='Health'),390),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='Mana'),240),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='Movement Speed'),370),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='Physical Defense'),14),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Thanatos'),(SELECT id FROM Stat WHERE statName='MP5'),4.4);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Susano','God of the Summer Storm','Japanese','Assassin','Melee','Physical','2016/05/10');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='Physical Power'),38),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='Health'),435),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='Mana'),225),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='Movement Speed'),370),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='Physical Defense'),14),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='HP5'),9),
((SELECT id FROM God WHERE godName='Susano'),(SELECT id FROM Stat WHERE statName='MP5'),4.2);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Athena','Goddess of Wisdom','Greek','Guardian','Melee','Magical','2013/06/05');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='Magical Power'),35),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='Health'),500),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='Mana'),190),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='Physical Defense'),20),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Athena'),(SELECT id FROM Stat WHERE statName='MP5'),4.6);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Bacchus','God of Wine','Roman','Guardian','Melee','Magical','2012/11/19');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='Magical Power'),37),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='Health'),495),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='Mana'),200),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='Physical Defense'),19),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Bacchus'),(SELECT id FROM Stat WHERE statName='MP5'),4.8);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Cabrakan','Destroyer of Mountains','Maya','Guardian','Melee','Magical','2014/08/19');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='Magical Power'),38),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='Health'),490),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='Mana'),200),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='Physical Defense'),20),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Cabrakan'),(SELECT id FROM Stat WHERE statName='MP5'),4.6);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Khepri','The Dawn Bringer','Egyptian','Guardian','Melee','Magical','2015/08/04');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='Magical Power'),38),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='Health'),490),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='Mana'),190),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='Physical Defense'),19),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Khepri'),(SELECT id FROM Stat WHERE statName='MP5'),4.6);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Ymir','Father of the Frost Giants','Norse','Guardian','Melee','Magical','2012/05/31');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='Magical Power'),38),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='Health'),510),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='Mana'),200),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='Movement Speed'),370),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.85),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='Physical Defense'),23),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Ymir'),(SELECT id FROM Stat WHERE statName='MP5'),4.5);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Agni','God of Fire','Hindu','Mage','Ranged','Magical','2012/05/31');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='Magical Power'),34),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='Health'),360),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='Mana'),255),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='Movement Speed'),355),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='Physical Defense'),11),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='HP5'),7),
((SELECT id FROM God WHERE godName='Agni'),(SELECT id FROM Stat WHERE statName='MP5'),4.7);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Anubis','God of the Dead','Egyptian','Mage','Ranged','Magical','2012/05/31');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='Magical Power'),35),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='Health'),380),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='Mana'),280),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='Movement Speed'),360),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.86),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='Physical Defense'),10),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='HP5'),7),
((SELECT id FROM God WHERE godName='Anubis'),(SELECT id FROM Stat WHERE statName='MP5'),4.8);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Kukulkan','Serpent of the Nine Winds','Maya','Mage','Ranged','Magical','2012/05/31');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='Magical Power'),34),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='Health'),380),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='Mana'),265),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='Movement Speed'),360),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.87),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='Physical Defense'),13),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='HP5'),7),
((SELECT id FROM God WHERE godName='Kukulkan'),(SELECT id FROM Stat WHERE statName='MP5'),5);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Scylla','Horror of the Sea','Greek','Mage','Ranged','Magical','2014/03/05');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='Magical Power'),34),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='Health'),365),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='Mana'),298),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='Movement Speed'),355),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='Physical Defense'),9),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='HP5'),6),
((SELECT id FROM God WHERE godName='Scylla'),(SELECT id FROM Stat WHERE statName='MP5'),4.9);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Ra','Sun God','Egyptian','Mage','Ranged','Magical','2012/05/31');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='Magical Power'),34),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='Health'),385),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='Mana'),255),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='Movement Speed'),360),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.88),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='Physical Defense'),10),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='HP5'),7),
((SELECT id FROM God WHERE godName='Ra'),(SELECT id FROM Stat WHERE statName='MP5'),4.8);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Apollo','God of Music','Greek','Hunter','Ranged','Physical','2013/03/28');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='Physical Power'),40),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='Health'),450),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='Mana'),225),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.95),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='Physical Defense'),12),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Apollo'),(SELECT id FROM Stat WHERE statName='MP5'),4.6);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Anhur','Slayer of Enemies','Egyptian','Hunter','Ranged','Physical','2012/08/03');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='Physical Power'),40),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='Health'),460),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='Mana'),220),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.9),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='Physical Defense'),11),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Anhur'),(SELECT id FROM Stat WHERE statName='MP5'),4.5);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Hou Yi','Defender of the Earth','Chinese','Hunter','Ranged','Physical','2015/01/14');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='Physical Power'),40),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='Health'),480),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='Mana'),240),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='Movement Speed'),370),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.95),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='Physical Defense'),13),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Hou Yi'),(SELECT id FROM Stat WHERE statName='MP5'),5);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Medusa','The Gorgon','Greek','Hunter','Ranged','Physical','2015/04/01');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='Physical Power'),38),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='Health'),470),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='Mana'),220),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.95),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='Physical Defense'),12),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='HP5'),8),
((SELECT id FROM God WHERE godName='Medusa'),(SELECT id FROM Stat WHERE statName='MP5'),4.4);

INSERT INTO God (godName,title,pantheon,godRole,attackType,powerType,releaseDate)
VALUES ('Neith','Weaver of Fate','Egyptian','Hunter','Ranged','Physical','2013/02/13');

INSERT INTO GodStat(godId,statId,statValue)
VALUES((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='Physical Power'),38),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='Health'),435),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='Mana'),230),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='Movement Speed'),365),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='Attack Speed'),1),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='Physical Defense'),12),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='HP5'),6),
((SELECT id FROM God WHERE godName='Neith'),(SELECT id FROM Stat WHERE statName='MP5'),4.4);

