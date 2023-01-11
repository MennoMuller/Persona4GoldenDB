delete from persona_fusion;

insert into persona_fusion(ingredient1, ingredient2, fusion_result)
values ('Yomotsu-Shikome', 'Obariyon', 'Izanagi'),
    ('Orobas', 'Jack Frost', 'Pixie'),
    ('Eligor', 'Nata Taishi', 'Slime'),
    ('Nebiros', 'Belial', 'Alice'),
    ('Lilim', 'Vetala', 'Ukobach'),
    ('Rangda', 'Barong', 'Shiva'),
    ('Parvati', 'Shiva', 'Ardha');

insert into persona_fusion(ingredient1, ingredient2, ingredient3, fusion_result)
values ('Atropos', 'Lachesis', 'Clotho', 'Norn');

insert into persona_fusion(ingredient1, ingredient2, ingredient3, ingredient4, fusion_result)
values ('Genbu', 'Seiryuu', 'Suzaku', 'Byakko','Kohryu'),
    ('Oni', 'Fuu-Ki', 'Kin-Ki', 'Sui-Ki','Ongyo-Ki'),
    ('Saki Mitama', 'Ara Mitama', 'Kusi Mitama', 'Nigi Mitama','Neko Shogun'),
    ('Feng Huang', 'Gdon', 'Yatagarasu', 'Narasimha', 'Tam Lin');

insert into persona_fusion(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, fusion_result)
values ('Jack Frost', 'Pyro Jack', 'King Frost', 'Pixie', 'Ghoul', 'Black Frost'),
    ('Ares', 'Triglav', 'Kin-Ki', 'Atavaka', 'Neko Shogun', 'Futsunushi'),
    ('Makami', 'Orthrus', 'Mothman', 'Thoth', 'Narasimha', 'Yatsufusa'),
    ('Masakado', 'Shiki-Ouji', 'Okuninushi', 'Hachiman', 'Hitokotonushi', 'Yoshitsune');

insert into persona_fusion(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, fusion_result)
values ('Matador', 'White Rider', 'Mother Harlot', 'Daisoujou', 'Hell Biker', 'Trumpeter', 'Mahakala'),
    ('Pazuzu', 'Belphegor', 'Belial', 'Mot', 'Seth', 'Baal Zebul', 'Beelzebub'),
    ('Matador', 'White Rider', 'Daisoujou', 'Tao Tie', 'Pabilsag', 'Taowu', 'Trumpeter'),
    ('Ananta', 'Anubis', 'Trumpeter', 'Michael', 'Satan', 'Metatron', 'Lucifer');

insert into persona_fusion(ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8, ingredient9, ingredient10, ingredient11, ingredient12, fusion_result)
values ('Izanagi', 'Sandman', 'Nata Taishi', 'Girimehkala', 'Norn', 'Okuninushi', 'Orthrus', 'Kartikeya', 'Mithra', 'Tzitzimitl', 'Cu Chulainn', 'Legion', 'Izanagi-no-Okami');

update persona_fusion
set special = true;

select * from persona_fusion;
