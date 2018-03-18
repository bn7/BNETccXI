---------------------------------------------------------------------------------------------------
-- func: multi function shop
-- desc: shop with misc items for players
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:PrintToPlayer("Job Shop for BNET.cc Players.", 0xF);
    if(player:getMainJob() == 1) then -- WAR
        local stock =
        {
            -- AF1
            11988,35000, -- Fighter's Torque
            16678,35000, -- Razor Axe
            12511,45000, -- Fighter's Mask
            12638,45000, -- Fighter's Lorica
            13961,45000, -- Fighter's Mufflers
            14214,45000, -- Fighter's Cuisses
            14089,45000, -- Fighter's Calligae
            -- Relic
            15871,85000, -- Warrior's Stone
            15072,125000, -- Warrior's Mask
            15087,125000, -- Warrior's Lorica
            15102,125000, -- Warrior's Mufflers
            15117,125000, -- Warrior's Cuisses
            15132,125000, -- Warrior's Calligae
            -- Empyrean
            11591,125000, -- Ravager's Gorget
            19253,125000, -- Ravager's Orb
            11703,125000, -- Ravager's Earring
            12008,185000, -- Ravager's Mask
            12028,185000, -- Ravager's Lorica
            12048,185000, -- Ravager's Mufflers
            12068,185000, -- Ravager's Cuisses
            12088,185000, -- Ravager's Calligae
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 2) then -- MNK
        local stock =
        {
            -- AF1
            11989,35000, -- Temple Torque
            17478,35000, -- Beat Cesti
            12512,45000, -- Temple Crown
            12639,45000, -- Temple Cyclas
            13962,45000, -- Temple Gloves
            14215,45000, -- Temple Hose
            14090,45000, -- Temple Gaiters
            -- Relic
            15478,85000, -- Melee Cape
            15073,125000, -- Melee Crown
            15088,125000, -- Melee Cyclas
            15103,125000, -- Melee Gloves
            15118,125000, -- Melee Hose
            15133,125000, -- Melee Gaiters
            -- Empyrean
            11592,125000, -- Tantra Necklace
            19254,125000, -- Tantra Tathlum
            11704,125000, -- Tantra Earring
            12009,185000, -- Tantra Crown
            12029,185000, -- Tantra Cyclas
            12049,185000, -- Tantra Gloves
            12069,185000, -- Tantra Hose
            12089,185000, -- Tantra Gaiters
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 3) then -- WHM
        local stock =
        {
            -- AF1
            11990,35000, -- Healer's Torque
            17422,35000, -- Blessed Hammer
            13855,45000, -- Healer's Cap
            12640,45000, -- Healer's Briault
            13963,45000, -- Healer's Mitts
            14216,45000, -- Healer's Pantaloons
            14091,45000, -- Healer's Duckbills
            -- Relic
            15872,85000, -- Cleric's Belt
            15074,125000, -- Cleric's Cap
            15089,125000, -- Cleric's Briault
            15104,125000, -- Cleric's Mitts
            15119,125000, -- Cleric's Pantaloons
            15134,125000, -- Cleric's Duckbills
            -- Empyrean
            11554,125000, -- Orison Cape
            11615,125000, -- Orison Locket
            11705,125000, -- Orison Earring
            12010,185000, -- Orison Cap
            12030,185000, -- Orison Briault
            12050,185000, -- Orison Mitts
            12070,185000, -- Orison Pantaloons
            12090,185000, -- Orison Duckbills
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 4) then -- BLM
        local stock =
        {
            -- AF1
            11991,35000, -- Wizard's Torque
            17423,35000, -- Casting Wand
            13856,45000, -- Wizard's Petasos
            12641,45000, -- Wizard's Coat
            13964,45000, -- Wizard's Gloves
            14217,45000, -- Wizard's Tonban
            14092,45000, -- Wizard's Sabots
            -- Relic
            15874,85000, -- Sorcerer's Belt
            15075,125000, -- Sorcerer's Petasos
            15090,125000, -- Sorcerer's Coat
            15105,125000, -- Sorcerer's Gloves
            15120,125000, -- Sorcerer's Tonban
            15135,125000, -- Sorcerer's Sabots
            -- Empyrean
            11593,125000, -- Goetia Chain
            16203,125000, -- Goetia Mantle
            11706,125000, -- Goetia Earring
            12011,185000, -- Goetia Petasos
            12031,185000, -- Goetia Coat
            12051,185000, -- Goetia Gloves
            12071,185000, -- Goetia Tonban
            12091,185000, -- Goetia Sabots
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 5) then -- RDM
        local stock =
        {
            -- AF1
            11992,35000, -- Warlock Torque
            16829,35000, -- Fencing Degen
            12513,45000, -- Warlock Chapeau
            12642,45000, -- Warlock Tabard
            13965,45000, -- Warlock Gloves
            14218,45000, -- Warlock Tights
            14093,45000, -- Warlock Boots
            -- Relic
            15873,85000, -- Duelist's Belt
            15076,125000, -- Duelist's Chapeau
            15091,125000, -- Duelist's Tabard
            15106,125000, -- Duelist's Gloves
            15121,125000, -- Duelist's Tights
            15136,125000, -- Duelist's Boots
            -- Empyrean
            11594,125000, -- Estoqueur's Collar
            16204,125000, -- Estoqueur's Cape
            11707,125000, -- Estoqueur's Earring
            12012,185000, -- Estoqueur's Chappel
            12032,185000, -- Estoqueur's Sayon
            12052,185000, -- Estoqueur's Gantherots
            12072,185000, -- Estoqueur's Fuseau
            12092,185000, -- Estoqueur's Houseaux
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 6) then -- THF
        local stock =
        {
            -- AF1
            11993,35000, -- Rogue's Torque
            16764,35000, -- Marauder's Knife
            12514,45000, -- Rogue's Bonnet
            12643,45000, -- Rogue's Vest
            13966,45000, -- Rogue's Armlets
            14219,45000, -- Rogue's Culottes
            14094,45000, -- Rogue's Poulaines
            -- Relic
            15480,85000, -- Assassin's Cape
            15077,125000, -- Assassin's Bonnet
            15092,125000, -- Assassin's Vest
            15107,125000, -- Assassin's Armlets
            15122,125000, -- Assassin's Culottes
            15137,125000, -- Assassin's Poulaines
            -- Empyrean
            11736,125000, -- Raider's Belt
            19260,125000, -- Raider's Boomerang
            11708,125000, -- Raider's Earring
            12013,185000, -- Raider's Bonnet
            12033,185000, -- Raider's Vest
            12053,185000, -- Raider's Armlets
            12073,185000, -- Raider's Culottes
            12093,185000, -- Raider's Poulaines
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 7) then -- PLD
        local stock =
        {
            -- AF1
            11994,35000, -- Gallant Torque
            17643,35000, -- War Hoop
            12515,45000, -- Gallant Coronet
            12644,45000, -- Gallant Surcoat
            13967,45000, -- Gallant Gauntlets
            14220,45000, -- Gallant Breeches
            14095,45000, -- Gallant Leggings
            -- Relic
            15481,85000, -- Valor Cape
            15078,125000, -- Valor Coronet
            15093,125000, -- Valor Surcoat
            15108,125000, -- Valor Gauntlets
            15123,125000, -- Valor Breeches
            15138,125000, -- Valor Leggings
            -- Empyrean
            11595,125000, -- Creed Collar
            11750,125000, -- Creed Baudrier
            11709,125000, -- Creed Earring
            12014,185000, -- Creed Armet
            12034,185000, -- Creed Cuirass
            12054,185000, -- Creed Gauntlets
            12074,185000, -- Creed Cuisses
            12094,185000, -- Creed Sabatons
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 8) then -- DRK
        local stock =
        {
            -- AF1
            11995,35000, -- Chaos Torque
            16798,35000, -- Raven Scythe
            12516,45000, -- Chaos Burgeonet
            12645,45000, -- Chaos Cuirass
            13968,45000, -- Chaos Gauntlets
            14221,45000, -- Chaos Flanchard
            14096,45000, -- Chaos Sollerets
            -- Relic
            15479,85000, -- Abyss Cape
            15079,125000, -- Abyss Burgeonet
            15094,125000, -- Abyss Cuirass
            15109,125000, -- Abyss Gauntlets
            15124,125000, -- Abyss Flanchard
            15139,125000, -- Abyss Sollerets
            -- Empyrean
            11737,125000, -- Bale Belt
            11616,125000, -- Bale Choker
            11710,125000, -- Bale Earring
            12015,185000, -- Bale Burgeonet
            12035,185000, -- Bale Cuirass
            12055,185000, -- Bale Gauntlets
            12075,185000, -- Bale Flanchard
            12095,185000, -- Bale Sollerets
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 9) then -- BST
        local stock =
        {
            -- AF1
            11996,35000, -- Beast Torque
            16680,35000, -- Barbaroi Axe
            12517,45000, -- Beast Helm
            12646,45000, -- Beast Jackcoat
            14958,45000, -- Beast Gloves
            14222,45000, -- Beast Trousers
            14097,45000, -- Beast Gaiters
            -- Relic
            15875,85000, -- Monster Belt
            15080,125000, -- Monster Helm
            15095,125000, -- Monster Jackcoat
            15110,125000, -- Monster Gloves
            15125,125000, -- Monster Trousers
            15140,125000, -- Monster Gaiters
            -- Empyrean
            11555,125000, -- Ferine Mantle
            11617,125000, -- Ferine Necklace
            11711,125000, -- Ferine Earring
            12016,185000, -- Ferine Cabasset
            12036,185000, -- Ferine Gausape
            12056,185000, -- Ferine Manoplas
            12076,185000, -- Ferine Quijotes
            12096,185000, -- Ferine Ocreae
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 10) then -- BRD
        local stock =
        {
            -- AF1
            11997,35000, -- Choral Torque
            16766,35000, -- Paper Knife
            13857,45000, -- Choral Roundlet
            12647,45000, -- Choral Justaucorps
            13970,45000, -- Choral Cuffs
            14223,45000, -- Choral Cannions
            14098,45000, -- Choral Slippers
            -- Relic
            15482,85000, -- Bard's Cape
            15081,125000, -- Bard's Roundlet
            15096,125000, -- Bard's Justaucorps
            15111,125000, -- Bard's Cuffs
            15126,125000, -- Bard's Cannions
            15141,125000, -- Bard's Slippers
            -- Empyrean
            11738,125000, -- Aoidos' Belt
            11618,125000, -- Aoidos' Matinee
            11712,125000, -- Aoidos' Earring
            12017,185000, -- Aoidos' Calot
            12037,185000, -- Aoidos' Hongreline
            12057,185000, -- Aoidos' Manchettes
            12077,185000, -- Aoidos' Rhingrave
            12097,185000, -- Aoidos' Cothurnes
        }
        showShop(player, STATIC, stock);

        elseif(player:getMainJob() == 11) then -- RNG
        local stock =
        {
            -- AF1
            11998,35000, -- Hunter's Torque
            17188,35000, -- Sniping Bow
            12518,45000, -- Hunter's Beret
            12648,45000, -- Hunter's Jerkin
            13971,45000, -- Hunter's Bracers
            14224,45000, -- Hunter's Braccae
            14099,45000, -- Hunter's Socks
            -- Relic
            15876,85000, -- Scout's Belt
            15082,125000, -- Scout's Beret
            15097,125000, -- Scout's Jerkin
            15112,125000, -- Scout's Bracers
            15127,125000, -- Scout's Braccae
            15142,125000, -- Scout's Socks
            -- Empyrean
            11596,125000, -- Sylvan Scarf
            16205,125000, -- Sylvan Chlamys
            11713,125000, -- Sylvan Earring
            12018,185000, -- Sylvan Gapette
            12038,185000, -- Sylvan Caban
            12058,185000, -- Sylvan Glovelettes
            12078,185000, -- Sylvan Bragues
            12098,185000, -- Sylvan Bottillons
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 12) then -- SAM
        local stock =
        {
            11999,35000, -- Myochin Torque
            17812,35000, -- Magoroku
            13868,45000, -- Myochin Kabuto
            13781,45000, -- Myochin Domaru
            13972,45000, -- Myochin Kote
            14225,45000, -- Myochin Haidate
            14100,45000, -- Myochin Sune-Ate
            -- Relic
            15879,85000, -- Saotome Koshi-Ate
            15083,125000, -- Saotome Kabuto
            15098,125000, -- Saotome Domaru
            15113,125000, -- Saotome Kote
            15128,125000, -- Saotome Haidate
            15143,125000, -- Saotome Sune-Ate
            -- Empyrean
            11597,125000, -- Unkai Nodowa
            16206,125000, -- Unkai Sugemino
            11714,125000, -- Unkai Mimikazari
            12019,185000, -- Unkai Kabuto
            12039,185000, -- Unkai Domaru
            12059,185000, -- Unkai Kote
            12079,185000, -- Unkai Haidate
            12099,185000, -- Unkai Sune-Ate
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 13) then -- NIN
        local stock =
        {
            -- AF1
            12000,35000, -- Ninja Shusa
            17771,35000, -- Anju
            17772,35000, -- Zushio
            13869,45000, -- Ninja Hatsuburi
            13782,45000, -- Ninja Chainmail
            13973,45000, -- Ninja Tekko
            14226,45000, -- Ninja Hakama
            14101,45000, -- Ninja Kyahan
            -- Relic
            15877,85000, -- Koga Sarashi
            15084,125000, -- Koga Hatsuburi
            15099,125000, -- Koga Chainmail
            15114,125000, -- Koga Tekko
            15129,125000, -- Koga Hakama
            15144,125000, -- Koga Kyahan
            -- Empyrean
            11598,125000, -- Iga Erimaki
            16207,125000, -- Iga Dochugappa
            11715,125000, -- Iga Mimikazari
            12020,185000, -- Iga Zukin
            12040,185000, -- Iga Chainmail
            12060,185000, -- Iga Tekko
            12080,185000, -- Iga Hakama
            12100,185000, -- Iga Kyahan
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 14) then -- DRG
        local stock =
        {
            -- AF1
            12001,35000, -- Drachen Torque
            16887,35000, -- Peregrine
            12519,45000, -- Drachen Armet
            12649,45000, -- Drachen Mail
            13974,45000, -- Drachen Finger Gauntlets
            14227,45000, -- Drachen Brais
            14102,45000, -- Drachen Greaves
            -- Relic
            15878,85000, -- Wyrm Belt
            15085,125000, -- Wyrm Armet
            15100,125000, -- Wyrm Mail
            15115,125000, -- Wyrm Finger Gauntlets
            15130,125000, -- Wyrm Brais
            15145,125000, -- Wyrm Greaves
            -- Empyrean
            11599,125000, -- Lancer's Torque
            16208,125000, -- Lancer's Pelerine
            11716,125000, -- Lancer's Earring
            12021,185000, -- Lancer's Mezail
            12041,185000, -- Lancer's Plackart
            12061,185000, -- Lancer's Vambraces
            12081,185000, -- Lancer's Cuissots
            12101,185000, -- Lancer's Schynbalds
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 15) then -- SMN
        local stock =
        {
            -- AF1
            12002,35000, -- Evoker's Torque
            17532,35000, -- Kukulcan's Staff
            12520,45000, -- Evoker's Horn
            12650,45000, -- Evoker's Doublet
            13975,45000, -- Evoker's Bracers
            14228,45000, -- Evoker's Spats
            14103,45000, -- Evoker's Pigaches
            -- Relic
            15484,85000, -- Summoner's Cape
            15086,125000, -- Summoner's Horn
            15101,125000, -- Summoner's Doublet
            15116,125000, -- Summoner's Bracers
            15131,125000, -- Summoner's Spats
            15146,125000, -- Summoner's Pigaches
            -- Empyrean
            11739,125000, -- Caller's Sash
            11619,125000, -- Caller's Pendant
            11717,125000, -- Caller's Earring
            12022,185000, -- Caller's Horn
            12042,185000, -- Caller's Doublet
            12062,185000, -- Caller's Bracers
            12082,185000, -- Caller's Spats
            12102,185000, -- Caller's Pigaches
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 16) then -- BLU
        local stock =
        {
            -- AF1
            12003,35000, -- Magus Torque
            17717,35000, -- Immortal's Scimitar
            15265,45000, -- Magus Keffiyeh
            14521,45000, -- Magus Jubbah
            14928,45000, -- Magus Bazubands
            15600,45000, -- Magus Shalwar
            15684,45000, -- Magus Charuqs
            -- Relic
            16244,85000, -- Mirage Mantle
            11465,125000, -- Mirage Keffiyeh
            11292,125000, -- Mirage Jubbah
            15025,125000, -- Mirage Bazubands
            16346,125000, -- Mirage Shalwar
            11382,125000, -- Mirage Charuqs
            -- Empyrean
            11600,125000, -- Mavi Scarf
            19255,125000, -- Mavi Tathlum
            11718,125000, -- Mavi Earring
            12023,185000, -- Mavi Kavuk
            12043,185000, -- Mavi Mintan
            12063,185000, -- Mavi Bazubands
            12083,185000, -- Mavi Tayt
            12103,185000, -- Mavi Basmak
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 17) then -- COR
        local stock =
        {
            -- AF1
            12004,35000, -- Corsair's Torque
            18702,35000, -- Trump Gun
            15266,45000, -- Corsair's Tricorne
            14522,45000, -- Corsair's Frac
            14929,45000, -- Corsair's Gants
            15601,45000, -- Corsair's Culottes
            15685,45000, -- Corsair's Bottes
            -- Relic
            15920,85000, -- Commodore Belt
            11468,125000, -- Commodore Tricorne
            11295,125000, -- Commodore Frac
            15028,125000, -- Commodore Gants
            16349,125000, -- Commodore Culottes
            11385,125000, -- Commodore Bottes
            -- Empyrean
            11601,125000, -- Navarch's Choker
            16209,125000, -- Navarch's Mantle
            11719,125000, -- Navarch's Earring
            12024,185000, -- Navarch's Tricorne
            12044,185000, -- Navarch's Frac
            12064,185000, -- Navarch's Gants
            12084,185000, -- Navarch's Culottes
            12104,185000, -- Navarch's Bottes
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 18) then -- PUP
        local stock =
        {
        -- AF1
            12005,35000, -- Puppetry Torque
            17858,35000, -- Turbo Animator
            15267,45000, -- Puppetry Taj
            14523,45000, -- Puppetry Tobe
            14930,45000, -- Puppetry Dastanas
            15602,45000, -- Puppetry Churidars
            15686,45000, -- Puppetry Babouches
            -- Relic
            16245,85000, -- Pantin Cape
            11471,125000, -- Pantin Taj
            11298,125000, -- Pantin Tobe
            15031,125000, -- Pantin Dastanas
            16352,125000, -- Pantin Churidars
            11388,125000, -- Pantin Babouches
            -- Empyrean
            11602,125000, -- Cirque Necklace
            11751,125000, -- Cirque Sash
            11720,125000, -- Cirque Earring
            12025,185000, -- Cirque Cappello
            12045,185000, -- Cirque Farsetto
            12065,185000, -- Cirque Guanti
            12085,185000, -- Cirque Pantaloni
            12105,185000, -- Cirque Scarpe
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 19) then -- DNC
        local stock =
        {
            -- AF1 Male
            12006,35000, -- Dancer's Torque
            19203,35000, -- War Hoop
            16138,45000, -- Dancer's Tiara
            14578,45000, -- Dancer's Casaque
            15002,45000, -- Dancer's Bangles
            15659,45000, -- Dancer's Tights
            15746,45000, -- Dancer's Shoes
            -- AF1 Female
            16139,45000, -- Dancer's Tiara
            14579,45000, -- Dancer's Casaque
            15003,45000, -- Dancer's Bangles
            15660,45000, -- Dancer's Tights
            15747,45000, -- Dancer's Shoes
            -- Relic
            16248,85000, -- Etoile Cape
            11478,125000, -- Etoile Tiara
            11305,125000, -- Etoile Casaque
            15038,125000, -- Etoile Bangles
            16360,125000, -- Etoile Tights
            11396,125000, -- Etoile Shoes
            -- Empyrean
            11603,125000, -- Charis Necklace
            19256,125000, -- Charis Feather
            11721,125000, -- Charis Earring
            12026,185000, -- Charis Tiara
            12046,185000, -- Charis Casaque
            12066,185000, -- Charis Bangles
            12086,185000, -- Charis Tights
            12106,185000, -- Charis Shoes
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 20) then -- SCH
        local stock =
        {
            -- AF1
            12007,35000, -- Scholar's Torque
            6058,35000, -- Klimaform
            16140,45000, -- Scholar's Mortarboard
            14580,45000, -- Scholar's Gown
            15004,45000, -- Scholar's Bracers
            16311,45000, -- Scholar's Pants
            15748,45000, -- Scholar's Loafers
            -- Relic
            15925,85000, -- Argute Belt
            11480,125000, -- Argute Mortarboard
            11307,125000, -- Argute Gown
            15040,125000, -- Argute Bracers
            16362,125000, -- Argute Pants
            11398,125000, -- Argute Loafers
            -- Empyrean
            19247,125000, -- Savant's Treatise
            11620,125000, -- Savant's Chain
            11722,125000, -- Savant's Earring
            12027,185000, -- Savant's Bonnet
            12047,185000, -- Savant's Gown
            12067,185000, -- Savant's Bracers
            12087,185000, -- Savant's Pants
            12107,185000, -- Savant's Loafers
        }
        showShop(player, STATIC, stock);

    elseif(player:getMainJob() == 21) then -- GEO
        player:PrintToPlayer("GEO is Broken, don't get banned!!!");
    elseif(player:getMainJob() == 22) then -- RUN
        player:PrintToPlayer("RUN is Broken, don't get banned!!!");
    end
end