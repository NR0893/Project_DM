INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2100','Sovereignty','Defensive','AURA - Allied gods within 70 units have their physical protection increased by 15 and their hp5 bij 35.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES ((SELECT id FROM Item WHERE itemName='Sovereignty'),(SELECT id FROM Stat WHERE statName='Health'),250),
((SELECT id FROM Item WHERE itemName='Sovereignty'),(SELECT id FROM Stat WHERE statName='Physical Defense'),45);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2450','Mystical Mail','Defensive','AURA - All enemies within 25 units are dealt 30 (+1 per level) magical damage per second');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES ((SELECT id FROM Item WHERE itemName='Mystical Mail'),(SELECT id FROM Stat WHERE statName='Health'),200),
((SELECT id FROM Item WHERE itemName='Mystical Mail'),(SELECT id FROM Stat WHERE statName='Physical Defense'),35),
((SELECT id FROM Item WHERE itemName='Mystical Mail'),(SELECT id FROM Stat WHERE statName='CCR'),0.2);

INSERT INTO Item (tier,cost,itemName,itemType)
VALUES ('3','2300','Breastplate of Valor','Defensive');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES ((SELECT id FROM Item WHERE itemName='Breastplate of Valor'),(SELECT id FROM Stat WHERE statName='Mana'),300),
((SELECT id FROM Item WHERE itemName='Breastplate of Valor'),(SELECT id FROM Stat WHERE statName='Physical Defense'),65),
((SELECT id FROM Item WHERE itemName='Breastplate of Valor'),(SELECT id FROM Stat WHERE statName='MP5'),10),
((SELECT id FROM Item WHERE itemName='Breastplate of Valor'),(SELECT id FROM Stat WHERE statName='Cooldown %'),0.2);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2450','Hide of the Urchin','Defensive','PASSIVE - You gain +3 Magical Protection and +3 Physical Protection for each god kill or assist. At 7 stacks this item Evolves, providing a Health Shield that gains stacks every 2s. Shield only stacks if you have not taken or dealt damage in the last 5s. Each stack provides 10% of 100 Health +5 Per Level.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES ((SELECT id FROM Item WHERE itemName='Hide of the Urchin'),(SELECT id FROM Stat WHERE statName='Mana'),250),
((SELECT id FROM Item WHERE itemName='Hide of the Urchin'),(SELECT id FROM Stat WHERE statName='Physical Defense'),30),
((SELECT id FROM Item WHERE itemName='Hide of the Urchin'),(SELECT id FROM Stat WHERE statName='Health'),250),
((SELECT id FROM Item WHERE itemName='Hide of the Urchin'),(SELECT id FROM Stat WHERE statName='Magical Defense'),30);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2900','Mantle of Discord','Defensive','PASSIVE - If you take damage below 30% health you unleash a shockwave that stuns all enemies within a range of 20 units for 1s and become immune to Crowd Control for 1s. This effect cannot trigger more than once every 90s.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Mantle of Discord'),(SELECT id FROM Stat WHERE statName='Cooldown %'),0.1),
((SELECT id FROM Item WHERE itemName='Mantle of Discord'),(SELECT id FROM Stat WHERE statName='Physical Defense'),60),
((SELECT id FROM Item WHERE itemName='Mantle of Discord'),(SELECT id FROM Stat WHERE statName='Magical Defense'),60);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2300','Bulwark of Hope','Defensive','PASSIVE - When you take damage and are below 40% Health, you gain a Shield with health equal to 15% of your Maximum Health for 20s. Can only occur once every 60s.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Bulwark of Hope'),(SELECT id FROM Stat WHERE statName='Health'),250),
((SELECT id FROM Item WHERE itemName='Bulwark of Hope'),(SELECT id FROM Stat WHERE statName='CCR'),0.2),
((SELECT id FROM Item WHERE itemName='Bulwark of Hope'),(SELECT id FROM Stat WHERE statName='Magical Defense'),80);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2250','Pestilence','Defensive','AURA - Enemy gods within 55 units have their healing reduced by 25%. This does not stack with similar Auras.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Pestilence'),(SELECT id FROM Stat WHERE statName='Health'),250),
((SELECT id FROM Item WHERE itemName='Pestilence'),(SELECT id FROM Stat WHERE statName='Magical Defense'),80);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2100','Heartward Amulet','Defensive','AURA - Allied gods within 70 units have their Magical Protections increased by 20 and their MP5 increased by 30.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Heartward Amulet'),(SELECT id FROM Stat WHERE statName='Health'),250),
((SELECT id FROM Item WHERE itemName='Heartward Amulet'),(SELECT id FROM Stat WHERE statName='Magical Defense'),55)

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2250','Void Stone','Defensive','AURA - Enemy gods within 55 units have their Magical Protection reduced by 10%.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Void Stone'),(SELECT id FROM Stat WHERE statName='Health'),150),
((SELECT id FROM Item WHERE itemName='Void Stone'),(SELECT id FROM Stat WHERE statName='Magical Defense'),40),
((SELECT id FROM Item WHERE itemName='Void Stone'),(SELECT id FROM Stat WHERE statName='Magical Power'),60);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','1850','Winged Blade','Defensive','PASSIVE - When hit by a Slow, you are immune to Slows and your movement speed is increased by 20% for 4s. Only occurs once every 30 seconds.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Winged Blade'),(SELECT id FROM Stat WHERE statName='Health'),150),
((SELECT id FROM Item WHERE itemName='Winged Blade'),(SELECT id FROM Stat WHERE statName='Magical Defense'),40),
((SELECT id FROM Item WHERE itemName='Winged Blade'),(SELECT id FROM Stat WHERE statName='CCR'),0.1),
((SELECT id FROM Item WHERE itemName='Winged Blade'),(SELECT id FROM Stat WHERE statName='Movement Speed'),0.7);

INSERT INTO Item (tier,cost,itemName,itemType)
VALUES ('3','1850','Jotunn''s Wrath','Offensive');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Jotunn''s Wrath'),(SELECT id FROM Stat WHERE statName='Physical Power'),45),
((SELECT id FROM Item WHERE itemName='Jotunn''s Wrath'),(SELECT id FROM Stat WHERE statName='Mana'),150),
((SELECT id FROM Item WHERE itemName='Jotunn''s Wrath'),(SELECT id FROM Stat WHERE statName='Penetration'),10),
((SELECT id FROM Item WHERE itemName='Jotunn''s Wrath'),(SELECT id FROM Stat WHERE statName='Cooldown %'),0.2);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2200','The Executioner','Offensive','PASSIVE - Basic Attacks against an enemy reduce your target''s Physical Protection by 7% for 3 seconds (max. 4 Stacks).');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='The Executioner'),(SELECT id FROM Stat WHERE statName='Physical Power'),40),
((SELECT id FROM Item WHERE itemName='The Executioner'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.2);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2700','Qin''s Sais','Offensive','PASSIVE - On Basic Attack hits, deal Physical Damage equal to 3% of the target''s maximum Health. If the target has over 2000 Health, the bonus damage scales up. This effect reaches a maximum of 5% of the targets Maximum Health at 2750 Health.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Qin''s Sais'),(SELECT id FROM Stat WHERE statName='Physical Power'),40),
((SELECT id FROM Item WHERE itemName='Qin''s Sais'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.2);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2600','Transcendence','Offensive','PASSIVE - You permanently gain 15 Mana per Stack, and receive 5 Stacks for a god kill, and 1 Stack for a minion kill (max. 50 stacks). 3% of your Mana is converted to Physical Power. At 50 stacks this item Evolves, gaining 10% Cooldown Reduction.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Transcendence'),(SELECT id FROM Stat WHERE statName='Physical Power'),40),
((SELECT id FROM Item WHERE itemName='Transcendence'),(SELECT id FROM Stat WHERE statName='Mana'),300),
((SELECT id FROM Item WHERE itemName='Transcendence'),(SELECT id FROM Stat WHERE statName='MP5'),10);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2300','Frostbound Hammer','Offensive','PASSIVE - Enemies hit by your Basic Attacks have their Movement Speed reduced by 25% (15% for Ranged Basic Attacks) and have their Attack Speed reduced 20% for 1.25 seconds.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Frostbound Hammer'),(SELECT id FROM Stat WHERE statName='Physical Power'),35),
((SELECT id FROM Item WHERE itemName='Frostbound Hammer'),(SELECT id FROM Stat WHERE statName='Health'),250);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2300','Wind Demon','Offensive','PASSIVE - Your Critical Hits provide you with 10% Physical Penetration and increase your Attack Speed by 10% and Movement Speed by 10% for 5s.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Wind Demon'),(SELECT id FROM Stat WHERE statName='Physical Power'),25),
((SELECT id FROM Item WHERE itemName='Wind Demon'),(SELECT id FROM Stat WHERE statName='Attack Speed'),0.15),
((SELECT id FROM Item WHERE itemName='Wind Demon'),(SELECT id FROM Stat WHERE statName='Crit Chance'),0.2);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2500','Rage','Offensive','PASSIVE - Killing or getting an assist on an enemy god gives you 1 stack. Each stack provides 3% Critical Strike Chance. Stacks are permanent and stack up to 5 times.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Rage'),(SELECT id FROM Stat WHERE statName='Physical Power'),30),
((SELECT id FROM Item WHERE itemName='Rage'),(SELECT id FROM Stat WHERE statName='Crit Chance'),0.3);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2600','Spear of Desolation','Offensive','PASSIVE - If you receive a kill or assist on an Enemy God all of you non-ultimate cooldowns are reduced by 2 seconds and your ultimate cooldown is reduced by 6s.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Spear of Desolation'),(SELECT id FROM Stat WHERE statName='Magical Power'),120),
((SELECT id FROM Item WHERE itemName='Spear of Desolation'),(SELECT id FROM Stat WHERE statName='Penetration'),10),
((SELECT id FROM Item WHERE itemName='Spear of Desolation'),(SELECT id FROM Stat WHERE statName='Cooldown %'),0.1);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2550','Spear of the Magus','Offensive','PASSIVE - Whenever you damage an enemy god with an ability you mark them to take 7.5% increased damage from all sources. This effect lasts for 7s and can only occur once every 15s.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Spear of the Magus'),(SELECT id FROM Stat WHERE statName='Magical Power'),110),
((SELECT id FROM Item WHERE itemName='Spear of the Magus'),(SELECT id FROM Stat WHERE statName='Penetration'),10),
((SELECT id FROM Item WHERE itemName='Spear of the Magus'),(SELECT id FROM Stat WHERE statName='Lifesteal'),12);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2500','Book of Thoth','Offensive','PASSIVE - You permanently gain 10 Mana per Stack, and receive 5 Stacks for a god kill and 1 Stack for a minion kill (max. 75 Stacks). 7% of your Mana from items is converted to Magical Power. At 75 stacks this item Evolves, gaining 3% extra Mana to Power conversion.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Book of Thoth'),(SELECT id FROM Stat WHERE statName='Magical Power'),80),
((SELECT id FROM Item WHERE itemName='Book of Thoth'),(SELECT id FROM Stat WHERE statName='Mana'),250),
((SELECT id FROM Item WHERE itemName='Book of Thoth'),(SELECT id FROM Stat WHERE statName='MP5'),20);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','2650','Soul Reaver','Offensive','PASSIVE - Your abilities deal an additional 2% of the target''s maximum Health as Magical Damage. If the target has over 2000 Health, your ability bonus damage scales up. This effect reaches a maximum of 9% Maximum Health damage at 2750 Health. Subsequent hits on the same target do half the bonus damage for the next 3s.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Soul Reaver'),(SELECT id FROM Stat WHERE statName='Magical Power'),95),
((SELECT id FROM Item WHERE itemName='Soul Reaver'),(SELECT id FROM Stat WHERE statName='Mana'),300);

INSERT INTO Item (tier,cost,itemName,itemType,passive)
VALUES ('3','3000','Rod of Tahuti','Offensive','PASSIVE - Basic Attacks and Abilities gain 25% additional Magical Power against targets below 50% Health.');

INSERT INTO ItemStat(itemId,statId,statValue)
VALUES((SELECT id FROM Item WHERE itemName='Rod of Tahuti'),(SELECT id FROM Stat WHERE statName='Magical Power'),140),
((SELECT id FROM Item WHERE itemName='Rod of Tahuti'),(SELECT id FROM Stat WHERE statName='Penetration'),0.1),
((SELECT id FROM Item WHERE itemName='Rod of Tahuti'),(SELECT id FROM Stat WHERE statName='MP5'),30);