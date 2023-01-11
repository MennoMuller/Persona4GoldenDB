DROP TABLE IF EXISTS persona_fusion;

DROP TABLE IF EXISTS dungeon_persona;

DROP TABLE IF EXISTS persona;

DROP TABLE IF EXISTS dungeon;

DROP TABLE IF EXISTS arcana;

DROP TABLE IF EXISTS skillcard;

CREATE TABLE persona(
    personaname varchar(20) PRIMARY KEY,
    baselevel integer NOT NULL,
    arcananame varchar(10) NOT NULL,
    phys_affinity elemental_affinity,
    fire_affinity elemental_affinity,
    ice_affinity elemental_affinity,
    elec_affinity elemental_affinity,
    wind_affinity elemental_affinity,
    dark_affinity elemental_affinity,
    light_affinity elemental_affinity,
    almighty_affinity elemental_affinity,
    skillcardname varchar(20)
);

CREATE TABLE arcana(
    arcananame varchar(10) PRIMARY KEY,
    arcananumber integer
);

CREATE TABLE skillcard(
    skillname varchar(20) PRIMARY KEY,
    swordsrank integer,
    effect varchar(255) NOT NULL
);

CREATE TABLE dungeon(
    dungeonname varchar(20) PRIMARY KEY,
    unlocked date,
    min_swords integer,
    max_swords integer
);

CREATE TABLE persona_fusion(
    fusion_id serial PRIMARY KEY,
    ingredient1 varchar(20) NOT NULL REFERENCES persona(personaname),
    ingredient2 varchar(20) NOT NULL REFERENCES persona(personaname),
    ingredient3 varchar(20) REFERENCES persona(personaname),
    ingredient4 varchar(20) REFERENCES persona(personaname),
    ingredient5 varchar(20) REFERENCES persona(personaname),
    ingredient6 varchar(20) REFERENCES persona(personaname),
    ingredient7 varchar(20) REFERENCES persona(personaname),
    ingredient8 varchar(20) REFERENCES persona(personaname),
    ingredient9 varchar(20) REFERENCES persona(personaname),
    ingredient10 varchar(20) REFERENCES persona(personaname),
    ingredient11 varchar(20) REFERENCES persona(personaname),
    ingredient12 varchar(20) REFERENCES persona(personaname),
    fusion_result varchar(20) NOT NULL REFERENCES persona(personaname)
);

CREATE TABLE dungeon_persona(
    personaname varchar(20),
    dungeonname varchar(20),
    PRIMARY KEY (personaname, dungeonname)
);

ALTER TABLE
    persona
ADD
    CONSTRAINT persona_arcana_fk FOREIGN KEY (arcananame) REFERENCES arcana(arcananame);

ALTER TABLE
    persona
ADD
    CONSTRAINT persona_skillcard_fk FOREIGN KEY (skillcardname) REFERENCES skillcard(skillname);

ALTER TABLE
    dungeon_persona
ADD
    CONSTRAINT dp_persona_fk FOREIGN KEY (personaname) REFERENCES persona(personaname);

ALTER TABLE
    dungeon_persona
ADD
    CONSTRAINT dp_dungeon_fk FOREIGN KEY (dungeonname) REFERENCES dungeon(dungeonname);