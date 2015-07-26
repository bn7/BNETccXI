-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of synth_recipes.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------

-- INSERT INTO `synth_recipes` VALUES (ID,Type,KeyItem,Alchemy,Bone,Cloth,Cook,Gold,Leather,Smith,Wood,Crystal,HQCrystal,Ingredient1,Ingredient2,Ingredient3,Ingredient4,Ingredient5,Ingredient6,Ingredient7,Ingredient8,Result,ResultHQ1,ResultHQ2,ResultHQ3,ResultQty,ResultHQ1Qty,ResultHQ2Qty,ResultHQ3Qty);
-- New entries below this line, and sorted by SynthID please. All non DSP IDs need to be above 9000.

-- ------------------------------------------------------------
-- Alchemy
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (9000,1,0,1,0,0,0,0,0,0,0,4102,4244,2793,2794,2795,2796,2797,2798,0,0,2799,2799,2799,2799,1,1,1,1); -- Astral Matter (would be synergy on retail)
INSERT INTO `synth_recipes` VALUES (9001,1,0,99,0,0,0,0,0,0,0,4102,4244,4154,4154,5306,13446,0,0,0,0,10790,10791,10791,10791,1,1,1,1); -- Ephedra Ring
INSERT INTO `synth_recipes` VALUES (9002,1,0,99,0,0,0,0,0,0,0,4102,4244,4154,4154,5306,13466,0,0,0,0,10792,10793,10793,10793,1,1,1,1); -- Saida Ring
INSERT INTO `synth_recipes` VALUES (9003,1,0,104,0,0,0,0,0,0,0,4103,4245,914,930,942,8710,0,0,0,0,17913,17913,17913,17913,4,6,8,10); -- Saline Broth
INSERT INTO `synth_recipes` VALUES (9004,1,0,104,0,0,0,0,0,60,0,4098,4240,914,937,3549,3936,8748,0,0,0,8927,8927,8927,8927,6,8,10,12); -- Abrasion Bolt Heads
INSERT INTO `synth_recipes` VALUES (9005,1,0,104,0,0,0,0,0,60,0,4098,4240,937,1626,5306,5306,8748,0,0,0,8927,8927,8927,8927,6,8,10,12); -- Righteous Bolt Heads
INSERT INTO `synth_recipes` VALUES (9006,1,0,110,0,0,0,0,0,0,0,4103,4245,924,2365,1133,1626,2015,2229,2361,17727,18914,18915,18915,18915,1,1,1,1); -- Killer's Kilij
INSERT INTO `synth_recipes` VALUES (9007,1,0,114,0,0,0,0,0,0,0,4103,4245,1133,16577,4015,0,0,0,0,0,20723,20724,20724,20724,1,1,1,1); -- Dija Sword

-- ------------------------------------------------------------
-- Goldsmithing
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (10001,1,0,0,0,0,0,81,0,0,0,4098,4240,3520,0,0,0,0,0,0,0,803,786,767,8919,1,1,1,1); -- Ifritite
INSERT INTO `synth_recipes` VALUES (10002,1,0,0,0,0,0,81,0,0,0,4098,4240,3521,0,0,0,0,0,0,0,805,787,808,8924,1,1,1,1); -- Shivite
INSERT INTO `synth_recipes` VALUES (10003,1,0,0,0,0,0,81,0,0,0,4098,4240,3522,0,0,0,0,0,0,0,784,785,779,8922,1,1,1,1); -- Garudite
INSERT INTO `synth_recipes` VALUES (10004,1,0,0,0,0,0,81,0,0,0,4098,4240,3523,0,0,0,0,0,0,0,801,789,778,8923,1,1,1,1); -- Titanite
INSERT INTO `synth_recipes` VALUES (10005,1,0,0,0,0,0,81,0,0,0,4098,4240,3524,0,0,0,0,0,0,0,810,804,777,8921,1,1,1,1); -- Ramuite
INSERT INTO `synth_recipes` VALUES (10006,1,0,0,0,0,0,81,0,0,0,4098,4240,3525,0,0,0,0,0,0,0,791,794,781,8920,1,1,1,1); -- Leviatite
INSERT INTO `synth_recipes` VALUES (10007,1,0,0,0,0,0,81,0,0,0,4098,4240,3526,0,0,0,0,0,0,0,802,813,782,8925,1,1,1,1); -- Carbite
INSERT INTO `synth_recipes` VALUES (10008,1,0,0,0,0,0,81,0,0,0,4098,4240,3527,0,0,0,0,0,0,0,797,812,783,8926,1,1,1,1); -- Fenrite
INSERT INTO `synth_recipes` VALUES (10009,1,0,0,0,0,0,51,0,0,0,4098,4240,3297,0,0,0,0,0,0,0,807,790,803,3316,1,1,1,1); -- Flame Gem
INSERT INTO `synth_recipes` VALUES (10010,1,0,0,0,0,0,51,0,0,0,4098,4240,3298,0,0,0,0,0,0,0,809,808,805,3317,1,1,1,1); -- Snow Gem
INSERT INTO `synth_recipes` VALUES (10011,1,0,0,0,0,0,51,0,0,0,4098,4240,3299,0,0,0,0,0,0,0,806,788,784,3318,1,1,1,1); -- Breeze Gem
INSERT INTO `synth_recipes` VALUES (10012,1,0,0,0,0,0,51,0,0,0,4098,4240,3300,0,0,0,0,0,0,0,814,815,801,3319,1,1,1,1); -- Soil Gem
INSERT INTO `synth_recipes` VALUES (10013,1,0,0,0,0,0,51,0,0,0,4098,4240,3301,0,0,0,0,0,0,0,800,811,810,3320,1,1,1,1); -- Thunder Gem
INSERT INTO `synth_recipes` VALUES (10014,1,0,0,0,0,0,51,0,0,0,4098,4240,3302,0,0,0,0,0,0,0,795,798,791,3321,1,1,1,1); -- Aqua Gem
INSERT INTO `synth_recipes` VALUES (10015,1,0,0,0,0,0,51,0,0,0,4098,4240,3303,0,0,0,0,0,0,0,796,796,802,3322,1,1,1,1); -- Light Gem
INSERT INTO `synth_recipes` VALUES (10016,1,0,0,0,0,0,51,0,0,0,4098,4240,3304,0,0,0,0,0,0,0,799,799,797,3323,1,1,1,1); -- Shadow Gem
INSERT INTO `synth_recipes` VALUES (10017,1,0,0,0,0,0,93,0,0,0,4096,4238,3922,3922,3922,3922,0,0,0,0,3923,3923,3923,3923,1,1,1,1); -- Rhodium ingot
INSERT INTO `synth_recipes` VALUES (10018,1,0,0,0,0,0,98,0,0,0,4096,4238,741,741,741,741,0,0,0,0,742,742,742,742,1,1,1,1); -- Palladian Brass Ingot
INSERT INTO `synth_recipes` VALUES (10019,1,0,0,0,0,0,100,0,0,0,4096,4238,742,0,0,0,0,0,0,0,755,755,755,755,1,1,1,1); -- Palladian Brass Sheet
INSERT INTO `synth_recipes` VALUES (10020,1,0,0,0,0,0,100,0,60,0,4096,4238,12680,758,755,0,0,0,0,0,10544,10545,10545,10545,1,1,1,1); -- Ugol Moufles
INSERT INTO `synth_recipes` VALUES (10021,1,0,0,0,0,0,102,0,0,0,4096,4238,742,742,0,0,0,0,0,0,765,765,765,765,1,2,3,4); -- Palladian Brass Chain
INSERT INTO `synth_recipes` VALUES (10022,1,0,0,0,0,0,102,0,60,0,4096,4238,755,758,12936,0,0,0,0,0,10641,10642,10642,10642,1,1,1,1); -- Ugol Solerets
INSERT INTO `synth_recipes` VALUES (10023,1,0,0,0,60,0,103,60,0,0,4096,4238,759,765,826,873,873,0,0,0,10575,10576,10576,10576,1,1,1,1); -- Ugol Bryettes
INSERT INTO `synth_recipes` VALUES (10024,1,0,0,0,0,0,103,0,0,0,4096,4238,755,757,765,1977,2275,2275,0,0,10410,10411,10411,10411,1,1,1,1); -- Ugol Salade
INSERT INTO `synth_recipes` VALUES (10025,1,0,0,0,60,0,105,0,0,0,4096,4238,755,757,758,765,765,765,828,829,10494,10495,10495,10495,1,1,1,1); -- Ugol Haubert
INSERT INTO `synth_recipes` VALUES (10026,1,0,60,0,0,0,113,0,0,0,4096,4238,766,914,3927,3980,0,0,0,0,21129,21130,21130,21130,1,1,1,1); -- Sharur
INSERT INTO `synth_recipes` VALUES (10027,1,0,0,0,60,0,115,60,0,0,4096,4238,766,823,3548,3923,9004,9004,0,0,26875,26876,26876,26876,1,1,1,1); -- Ravenous Breastplate

-- ------------------------------------------------------------
-- Bonecraft
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (10100,1,0,0,100,0,0,0,0,0,0,4098,4240,2371,2371,0,0,0,0,0,0,11058,11058,11059,11059,1,1,1,1); -- Hajduk Ring
INSERT INTO `synth_recipes` VALUES (10101,1,0,60,102,0,0,0,0,0,0,4098,4240,1311,1715,4154,4154,5306,0,0,0,10794,10795,10795,10795,1,1,1,1); -- Blenmot's Ring
INSERT INTO `synth_recipes` VALUES (10102,1,0,0,102,60,0,0,60,0,0,4099,4241,830,836,8708,8982,8982,8983,8983,0,26883,26884,26884,26884,1,1,1,1); -- Sombra Harness
INSERT INTO `synth_recipes` VALUES (10103,1,0,0,103,0,0,0,0,0,0,4099,4241,823,850,867,885,3445,3552,0,0,10346,10347,10347,10347,1,1,1,1); -- Dux Cussies
INSERT INTO `synth_recipes` VALUES (10104,1,0,0,104,0,0,0,0,0,0,4098,4240,867,885,3445,3552,0,0,0,0,10434,10435,10435,10435,1,1,1,1); -- Dux Visor
INSERT INTO `synth_recipes` VALUES (10105,1,0,0,104,0,0,0,60,0,0,4099,4241,819,869,8977,8981,0,0,0,0,26726,26727,26727,26727,1,1,1,1); -- Revealers Crown
INSERT INTO `synth_recipes` VALUES (10106,1,0,0,105,0,0,0,0,0,0,4099,4241,823,867,885,3552,12696,0,0,0,10316,10317,10317,10317,1,1,1,1); -- Dux Finger Gauntlets
INSERT INTO `synth_recipes` VALUES (10107,1,0,60,106,0,0,0,0,0,0,4098,4240,4015,8719,8719,0,0,0,0,0,28544,28545,28545,28545,1,1,1,1); -- Yacuruna Ring
INSERT INTO `synth_recipes` VALUES (10108,1,0,0,107,0,0,0,0,0,0,4099,4241,823,867,885,885,885,3445,3552,12568,10272,10273,10273,10273,1,1,1,1); -- Dux Scale Mail
INSERT INTO `synth_recipes` VALUES (10109,1,0,0,108,0,0,0,0,0,0,4098,4240,877,1762,3869,0,0,0,0,0,18827,18828,18828,18828,1,1,1,1); -- Oxossi Facon
INSERT INTO `synth_recipes` VALUES (10110,1,0,0,111,0,0,0,0,0,0,4099,4241,1311,1409,2427,3940,3979,3979,0,0,28404,28405,28405,28405,1,1,1,1); -- Ej Necklace
INSERT INTO `synth_recipes` VALUES (10111,1,0,0,111,0,0,0,0,0,0,4098,4240,760,3977,3977,0,0,0,0,0,28526,28527,28527,28527,1,1,1,1); -- Tati Earring
INSERT INTO `synth_recipes` VALUES (10112,1,0,0,114,0,0,60,0,0,60,4098,4240,4019,4021,8704,8752,8752,0,0,0,20537,20538,20538,20538,1,1,1,1); -- Bhakazi Sainti
INSERT INTO `synth_recipes` VALUES (10113,1,0,0,114,0,0,0,0,0,0,4098,4240,4012,4019,0,0,0,0,0,0,20621,20622,20622,20622,1,1,1,1); -- Nanti Knife
INSERT INTO `synth_recipes` VALUES (10114,1,0,0,114,0,0,0,0,0,60,4098,4240,4012,4019,8704,0,0,0,0,0,20814,20815,20815,20815,1,1,1,1); -- Budliqa
INSERT INTO `synth_recipes` VALUES (10115,1,0,0,113,0,0,0,0,0,0,4099,4241,908,1767,3977,0,0,0,0,0,28664,28665,28665,28665,1,1,1,1); -- Killedar Shield
INSERT INTO `synth_recipes` VALUES (10116,1,0,0,113,0,0,60,0,0,60,4098,4240,766,851,3927,3979,0,0,0,0,20919,20920,20920,20920,1,1,1,1); -- Lacryma Sickle
INSERT INTO `synth_recipes` VALUES (10117,1,0,0,113,0,0,0,0,60,0,4096,4238,766,658,3979,0,0,0,0,0,21289,21290,21290,21290,1,1,1,1); -- Donderbuss

-- ------------------------------------------------------------
-- Clothcraft
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (10201,1,0,0,0,101,0,0,60,0,0,4099,4241,826,826,8751,8751,8751,8976,8988,0,26885,26886,26886,26886,1,1,1,1); -- Revealers Tunic
INSERT INTO `synth_recipes` VALUES (10202,1,0,0,0,102,0,0,0,0,0,4099,4241,820,2010,2010,2340,2476,2751,0,0,10348,10349,10349,10349,1,1,1,1); -- Chelona Trousers
INSERT INTO `synth_recipes` VALUES (10203,1,0,0,0,103,0,0,60,0,0,4099,4241,913,1963,1998,3551,3551,3551,0,0,10414,10415,10415,10415,1,1,1,1); -- Spolia Chapeau
INSERT INTO `synth_recipes` VALUES (10204,1,0,0,0,103,0,0,60,0,0,4099,4241,1963,1963,1998,3550,3551,0,0,0,10579,10580,10580,10580,1,1,1,1); -- Spolia Trews
INSERT INTO `synth_recipes` VALUES (10205,1,0,0,0,103,0,0,60,0,0,4099,4241,1963,1998,3551,3551,3551,0,0,0,10548,10549,10549,10549,1,1,1,1); -- Spolia Cuffs
INSERT INTO `synth_recipes` VALUES (10206,1,0,0,0,103,0,0,0,0,0,4099,4241,744,2288,2288,2304,2476,2751,0,0,10318,10319,10319,10319,1,1,1,1); -- Chelona Trousers
INSERT INTO `synth_recipes` VALUES (10207,1,0,0,0,104,0,0,0,0,0,4099,4241,767,1110,1991,2010,2304,2476,2751,3550,10436,10437,10437,10437,1,1,1,1); -- Chelona Hat
INSERT INTO `synth_recipes` VALUES (10208,1,0,0,0,105,0,0,0,0,0,4099,4241,3545,14080,0,0,0,0,0,0,10647,10648,10648,10648,1,1,1,1); -- Areion Boots
INSERT INTO `synth_recipes` VALUES (10209,1,0,0,0,105,0,0,0,0,0,4099,4241,821,821,823,823,1313,8727,0,0,8728,8728,8728,8728,1,1,1,1); -- Sif Macrame 
INSERT INTO `synth_recipes` VALUES (10210,1,0,0,0,105,0,0,60,0,0,4099,4241,764,913,1629,1963,1998,3550,3551,3551,10498,10499,10499,10499,1,1,1,1); -- Spolia Saio
INSERT INTO `synth_recipes` VALUES (10211,1,0,0,0,106,0,0,0,0,0,4099,4241,767,878,1110,1991,2288,2304,2751,3550,10274,10275,10275,10275,1,1,1,1); -- Chelona Blazer
INSERT INTO `synth_recipes` VALUES (10212,1,0,0,0,106,0,0,0,0,0,4099,4241,752,822,823,1132,4028,8708,0,0,27750,27751,27751,27751,1,1,1,1); -- Haruspex Hat
INSERT INTO `synth_recipes` VALUES (10213,1,0,0,0,107,0,0,0,0,0,4099,4241,752,823,1132,1132,4028,8708,0,0,28180,28181,28181,28181,1,1,1,1); -- Haruspex Slops
INSERT INTO `synth_recipes` VALUES (10214,1,0,0,0,107,0,0,60,0,0,4099,4241,816,8728,8751,8754,0,0,0,0,28601,28602,28602,28602,1,1,1,1); -- Seshaw Cape
INSERT INTO `synth_recipes` VALUES (10215,1,0,0,0,109,0,0,0,0,0,4099,4241,761,823,828,829,829,829,4028,8708,27893,27894,27894,27894,1,1,1,1); -- Haruspex Coat
INSERT INTO `synth_recipes` VALUES (10216,1,0,0,0,111,0,0,60,0,0,4099,4241,816,1998,1998,3981,3981,0,0,0,28644,28655,28655,28655,1,1,1,1); -- Ogapepo Cape
INSERT INTO `synth_recipes` VALUES (10217,1,0,0,0,115,0,60,0,0,0,4098,4240,745,823,829,3449,3544,9006,9006,0,26877,26878,26878,26878,1,1,1,1); -- Foppish Tunica

-- ------------------------------------------------------------
-- Leathercraft
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (10301,1,0,0,0,0,0,0,101,0,0,4099,4241,823,1132,4028,8707,8708,0,0,0,28318,28319,28319,28319,1,1,1,1); -- Haruspex Pigaches
INSERT INTO `synth_recipes` VALUES (10302,1,0,0,0,0,0,0,101,0,0,4099,4241,3552,8708,12696,0,0,0,0,0,28036,28037,28037,28037,1,1,1,1); -- Aetosaur Gloves
INSERT INTO `synth_recipes` VALUES (10303,1,0,0,0,0,0,0,102,60,0,4099,4241,2152,1989,3552,3552,0,0,0,0,10412,10413,10413,10413,1,1,1,1); -- Urja Helm
INSERT INTO `synth_recipes` VALUES (10304,1,0,0,0,0,0,0,102,0,0,4099,4241,862,1163,2828,0,0,0,0,0,10996,10997,10997,10997,1,1,1,1); -- Testudo Mantle
INSERT INTO `synth_recipes` VALUES (10305,1,0,0,0,40,0,0,103,0,0,4099,4241,869,3445,2304,3552,0,0,0,0,10998,10999,10999,10999,1,1,1,1); -- Attacker's Mantle
INSERT INTO `synth_recipes` VALUES (10306,1,0,0,0,0,0,0,103,0,0,4099,4241,3552,3964,8708,12952,0,0,0,0,28036,28037,28037,28037,1,1,1,1); -- Aetosaur Gloves
INSERT INTO `synth_recipes` VALUES (10307,1,0,0,0,0,0,0,104,0,0,4103,4245,635,3547,4509,0,0,0,0,0,3548,3548,3548,3548,1,1,1,1); -- Sealord Leather
INSERT INTO `synth_recipes` VALUES (10308,1,0,0,0,0,0,0,104,0,0,4103,4245,695,3547,4509,0,0,0,0,0,3548,3548,3548,3548,1,1,1,1); -- Sealord Leather
INSERT INTO `synth_recipes` VALUES (10309,1,0,0,0,0,0,0,104,0,0,4099,4241,1629,3552,3552,0,0,0,0,0,10546,10547,10547,10547,1,1,1,1); -- Urja Helm
INSERT INTO `synth_recipes` VALUES (10310,1,0,0,0,0,0,60,104,60,0,4099,4241,665,862,862,914,1409,2189,2275,3925,27920,27921,27921,27921,1,1,1,1); -- Pak Corselet
INSERT INTO `synth_recipes` VALUES (10311,1,0,0,0,0,0,0,105,60,0,4099,4241,1629,3552,3552,1990,0,0,0,0,10643,10644,10644,10644,1,1,1,1); -- Urja Ledelsens
INSERT INTO `synth_recipes` VALUES (10312,1,0,0,0,0,0,0,105,0,0,4099,4241,2878,3548,13249,0,0,0,0,0,10836,10837,10837,10837,1,1,1,1); -- Phos Belt
INSERT INTO `synth_recipes` VALUES (10313,1,0,0,0,0,0,0,105,60,0,4099,4241,1629,1989,3552,3552,13705,0,0,0,10496,10497,10497,10497,1,1,1,1); -- Urja Jerkin
INSERT INTO `synth_recipes` VALUES (10314,1,0,0,0,0,0,0,106,0,0,4099,4241,3552,3552,8708,0,0,0,0,0,27746,27747,27747,27747,1,1,1,1); -- Aetosaur Helm
INSERT INTO `synth_recipes` VALUES (10315,1,0,0,0,0,0,0,107,0,0,4099,4241,3552,3552,8708,12824,0,0,0,0,28176,28177,28177,28177,1,1,1,1); -- Aetosaur Trousers
INSERT INTO `synth_recipes` VALUES (10316,1,0,0,0,0,0,0,109,0,0,4099,4241,3552,3552,8708,8708,0,0,0,0,27889,27890,27890,27890,1,1,1,1); -- Aetosaur Jerkin
INSERT INTO `synth_recipes` VALUES (10317,1,0,0,0,0,0,60,109,0,0,4099,4241,765,3548,8754,0,0,0,0,0,28446,28447,28447,28447,1,1,1,1); -- Sweordfaetels
INSERT INTO `synth_recipes` VALUES (10318,1,0,0,0,0,0,0,110,0,0,4099,4241,862,3981,10836,0,0,0,0,0,28464,28465,28465,28465,1,1,1,1); -- Pya'ekue Belt
INSERT INTO `synth_recipes` VALUES (10319,1,0,0,0,0,0,0,112,0,0,4097,4239,4027,8754,0,0,0,0,0,0,28606,28607,28607,28607,1,1,1,1); -- Aput Mantle
INSERT INTO `synth_recipes` VALUES (10320,1,0,0,0,60,0,0,115,0,0,4098,4240,837,1767,3544,3549,9003,9003,0,0,26879,26880,26880,26880,1,1,1,1); -- Wretched Coat

-- ------------------------------------------------------------
-- Smithing
-- ------------------------------------------------------------
INSERT INTO `synth_recipes` VALUES (10401,1,0,0,0,0,0,0,0,98,0,4096,4238,734,734,734,734,0,0,0,0,735,735,735,735,1,1,1,1); -- Thokcha Ingot
INSERT INTO `synth_recipes` VALUES (10402,1,0,0,0,0,0,0,0,100,30,4096,4238,710,742,757,757,757,757,1629,4159,19177,19178,19178,19178,1,1,1,1); -- Etourdissante
INSERT INTO `synth_recipes` VALUES (10403,1,0,0,0,0,0,0,0,100,0,4096,4238,648,657,707,735,862,2372,0,0,19299,19300,19300,19300,1,1,1,1); -- Aisa
INSERT INTO `synth_recipes` VALUES (10404,1,0,0,0,0,0,0,0,100,0,4096,4238,4020,4020,4020,4020,0,0,0,0,4021,4021,4021,4021,1,1,1,1); -- Titanium Ingot
INSERT INTO `synth_recipes` VALUES (10405,1,0,0,60,0,0,0,0,101,0,4096,4238,1615,735,735,0,0,0,0,0,18910,18911,18911,18911,1,1,1,1); -- Apaisante
INSERT INTO `synth_recipes` VALUES (10406,1,0,0,0,0,0,0,0,101,0,4096,4238,654,735,16724,0,0,0,0,0,18522,18523,18523,18523,1,1,1,1); -- Firnaxe
INSERT INTO `synth_recipes` VALUES (10407,1,0,0,0,0,0,0,0,101,0,4096,4238,4058,4058,641,642,0,0,0,0,8704,8704,8704,8704,1,1,1,1); -- Bismuth Ingot
INSERT INTO `synth_recipes` VALUES (10408,1,0,0,0,0,0,0,0,101,0,4096,4238,745,851,4095,4095,0,0,0,0,28178,28179,28179,28179,1,1,1,1); -- Shabti Cuisses
INSERT INTO `synth_recipes` VALUES (10409,1,0,0,0,0,0,60,60,101,0,4096,4238,747,914,1629,2170,8990,8992,0,0,27396,27397,27397,27397,1,1,1,1); -- Gefechtschuhs
INSERT INTO `synth_recipes` VALUES (10410,1,0,0,0,0,0,0,60,102,60,4096,4238,657,720,735,735,745,821,2275,2529,18462,18463,18463,18463,1,1,1,1); -- Sasanuki
INSERT INTO `synth_recipes` VALUES (10411,1,0,0,0,0,0,0,0,102,0,4096,4238,8704,0,0,0,0,0,0,0,4095,4095,4095,4095,1,1,1,1); -- Bismuth Sheet
-- INSERT INTO `synth_recipes` VALUES (10412,1,0,0,0,0,0,0,0,102,0,4096,4238,8704,8704,8704,8704,8704,8704,2144,0,4095,4095,4095,4095,6,6,6,6); -- Bismuth Sheet -- Needs KI Sheeting
INSERT INTO `synth_recipes` VALUES (10413,1,0,0,0,0,0,0,0,102,0,4096,4238,645,645,645,8747,0,0,0,0,8748,8748,8748,8748,1,1,1,1); -- Ra'Kaznar Ingot
INSERT INTO `synth_recipes` VALUES (10414,1,0,0,0,0,0,60,0,103,0,4096,4238,747,914,8990,8992,12696,12696,0,0,27987,27988,27988,27988,1,1,1,1); -- Gefechthentzes
INSERT INTO `synth_recipes` VALUES (10415,1,0,0,0,0,0,0,0,103,45,4096,4238,735,735,718,2000,0,0,0,0,18543,18544,18544,18544,1,1,1,1); -- Breidox
INSERT INTO `synth_recipes` VALUES (10416,1,0,0,0,0,0,0,0,103,0,4098,4240,8704,0,0,0,0,0,0,0,8705,8705,8705,8705,6,8,10,12); --  Bismuth Bolt Heads
INSERT INTO `synth_recipes` VALUES (10417,1,0,0,0,0,0,0,0,103,0,4096,4238,745,914,4095,4095,12696,12696,0,0,28038,28039,28039,28039,1,1,1,1); -- Shabti Gauntlets
INSERT INTO `synth_recipes` VALUES (10418,1,0,0,0,0,0,60,60,103,0,4096,4238,747,914,2170,8990,8990,8992,8992,0,26881,26882,26882,26882,1,1,1,1); -- Gefechtbrust
INSERT INTO `synth_recipes` VALUES (10419,1,0,0,0,0,0,0,0,104,60,4096,4238,723,735,735,735,826,0,0,0,18561,18562,18562,18562,1,1,1,1); -- Yhatdhara
INSERT INTO `synth_recipes` VALUES (10420,1,0,0,0,0,0,60,0,104,0,4096,4238,655,655,655,745,745,745,2535,0,19151,19152,19152,19152,1,1,1,1); -- Bahadur
INSERT INTO `synth_recipes` VALUES (10421,1,0,0,0,0,0,60,0,104,60,4096,4238,650,711,718,735,735,742,0,0,19743,19744,19744,19744,1,1,1,1); -- Opprimo
INSERT INTO `synth_recipes` VALUES (10422,1,0,0,0,0,0,0,0,104,60,4096,4238,4019,4023,21191,0,0,0,0,0,21192,21193,21193,21193,1,1,1,1); -- Voay Staff
INSERT INTO `synth_recipes` VALUES (10423,1,0,0,0,0,0,0,0,104,0,4098,4240,8748,0,0,0,0,0,0,0,8749,8749,8749,8749,6,8,10,12); --  Ra'Kaznar Bolt Heads
INSERT INTO `synth_recipes` VALUES (10424,1,0,0,0,0,0,60,0,105,60,4096,4238,650,652,652,686,686,2275,2275,2535,18495,18496,18496,18496,1,1,1,1); -- Wootz Amood
INSERT INTO `synth_recipes` VALUES (10425,1,0,0,0,0,0,0,0,105,42,4096,4238,4019,4020,20772,0,0,0,0,0,20773,20774,20774,20774,1,1,1,1); -- Voay Sword
INSERT INTO `synth_recipes` VALUES (10426,1,0,0,0,0,0,0,0,105,0,4096,4238,643,643,643,8723,0,0,0,0,8724,8724,8724,8724,1,1,1,1); -- Beryllium Ingot
INSERT INTO `synth_recipes` VALUES (10427,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,16659,0,0,0,0,20802,20803,20803,20803,1,1,1,1); -- Blurred Axe
INSERT INTO `synth_recipes` VALUES (10428,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,19263,0,0,0,0,21217,21218,21218,21218,1,1,1,1); -- Blurred Bow
INSERT INTO `synth_recipes` VALUES (10429,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,16416,0,0,0,0,20525,20526,20526,20526,1,1,1,1); -- Blurred Claws
INSERT INTO `synth_recipes` VALUES (10430,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,16597,0,0,0,0,21700,21701,21701,21701,1,1,1,1); -- Blurred Claymore
INSERT INTO `synth_recipes` VALUES (10431,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,18223,0,0,0,0,20849,20850,20850,20850,1,1,1,1); -- Blurred Cleaver
INSERT INTO `synth_recipes` VALUES (10432,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,17221,0,0,0,0,21480,21481,21481,21481,1,1,1,1); -- Blurred Crossbow
INSERT INTO `synth_recipes` VALUES (10433,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,17364,0,0,0,0,21400,21401,21401,21401,1,1,1,1); -- Blurred Harp
INSERT INTO `synth_recipes` VALUES (10434,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,16452,0,0,0,0,20601,20602,20602,20602,1,1,1,1); -- Blurred Knife
INSERT INTO `synth_recipes` VALUES (10435,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,18129,0,0,0,0,20940,20941,20941,20941,1,1,1,1); -- Blurred Lance
INSERT INTO `synth_recipes` VALUES (10436,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,17064,0,0,0,0,21093,21094,21094,21094,1,1,1,1); -- Blurred Rod
INSERT INTO `synth_recipes` VALUES (10437,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,16777,0,0,0,0,20896,20897,20897,20897,1,1,1,1); -- Blurred Scythe
INSERT INTO `synth_recipes` VALUES (10438,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,12387,0,0,0,0,27643,27644,27644,27644,1,1,1,1); -- Blurred Shield
INSERT INTO `synth_recipes` VALUES (10439,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,17101,0,0,0,0,21157,21158,21158,21158,1,1,1,1); -- Blurred Staff
INSERT INTO `synth_recipes` VALUES (10440,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,17727,0,0,0,0,20711,20712,20712,20712,1,1,1,1); -- Blurred Sword
INSERT INTO `synth_recipes` VALUES (10441,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,18413,0,0,0,0,20984,20985,20985,20985,1,1,1,1); -- Kujaku
INSERT INTO `synth_recipes` VALUES (10442,1,0,0,0,0,0,60,0,105,0,4096,4238,9062,9075,9075,18431,0,0,0,0,21032,21033,21033,21033,1,1,1,1); -- Kunitsuna
INSERT INTO `synth_recipes` VALUES (10443,1,0,0,60,0,0,0,0,107,0,4098,4240,657,914,4012,4095,0,0,0,0,21353,21353,21353,21353,33,66,99,99); -- Happo Shuriken
INSERT INTO `synth_recipes` VALUES (10444,1,0,0,0,0,0,0,0,106,0,4096,4238,648,745,850,914,4095,4095,0,0,27748,27749,27749,27749,1,1,1,1); -- Shabti Armet
INSERT INTO `synth_recipes` VALUES (10445,1,0,0,0,0,0,0,0,107,0,4096,4238,745,851,851,914,4095,4095,4095,0,20940,20941,20941,20941,1,1,1,1); -- Shabti Sabatons
INSERT INTO `synth_recipes` VALUES (10446,1,0,0,0,0,0,0,0,107,0,4096,4238,816,8724,8739,0,0,0,0,0,28374,28375,28375,28375,1,1,1,1); -- Dakatsu-No-Nodowa
INSERT INTO `synth_recipes` VALUES (10447,1,0,0,0,0,0,0,0,109,0,4096,4238,745,851,851,914,4095,4095,4095,4095,27891,27892,27892,27892,1,1,1,1); -- Shabti Cuirass
INSERT INTO `synth_recipes` VALUES (10448,1,0,0,0,0,0,60,0,110,60,4096,4238,650,655,655,655,818,877,1704,4014,21041,21042,21042,21042,1,1,1,1); -- Sukezane
INSERT INTO `synth_recipes` VALUES (10449,1,0,0,0,0,0,60,0,113,60,4096,4238,658,658,658,658,687,1122,3927,3977,20779,20780,20780,20780,1,1,1,1); -- Senbaak Nagan
INSERT INTO `synth_recipes` VALUES (10450,1,0,0,60,0,0,60,0,113,0,4096,4238,653,658,658,766,3927,3979,0,0,20874,20875,20875,20875,1,1,1,1); -- Razorfury
INSERT INTO `synth_recipes` VALUES (10451,1,0,0,0,0,0,60,0,113,0,4096,4238,658,687,1765,3981,0,0,0,0,21006,21007,21007,21007,1,1,1,1); -- Pamun
INSERT INTO `synth_recipes` VALUES (10452,1,0,60,0,0,0,0,0,115,60,4096,4238,658,658,687,3552,4014,9061,9063,0,20754,20755,20755,20755,1,1,1,1); -- Malfeasance

-- ------------------------------------------------------------
-- Woodworking
-- ------------------------------------------------------------

INSERT INTO `synth_recipes` VALUES (10501,1,0,0,0,0,0,0,0,0,92,4098,4240,3926,0,0,0,0,0,0,0,3927,3927,3927,3927,1,2,3,4); --  Urunday Lumber
-- INSERT INTO `synth_recipes` VALUES (10502,1,0,0,0,0,0,0,0,0,92,4098,4240,3926,3926,3926,1657,0,0,0,0,4019,4019,4019,4019,3,6,9,12); --  Urunday Lumber -- Needs KI Lumberjack
INSERT INTO `synth_recipes` VALUES (10503,1,0,0,0,0,0,60,0,60,102,4096,4238,654,715,2275,2655,2735,0,0,0,18129,18130,18130,18130,1,1,1,1); -- Dabo
INSERT INTO `synth_recipes` VALUES (10504,1,0,0,0,0,0,60,0,60,103,4099,4041,655,715,735,781,3550,4159,0,0,19796,19797,19797,19797,1,1,1,1); -- Rosschinder
INSERT INTO `synth_recipes` VALUES (10505,1,0,0,0,0,0,0,0,0,103,4098,4240,2534,0,0,0,0,0,0,0,2535,2535,2535,2535,1,2,3,4); -- Jacaranda Lumber
-- INSERT INTO `synth_recipes` VALUES (10506,1,0,0,0,0,0,0,0,0,103,4098,4240,2534,2534,2534,1657,0,0,0,0,2535,2535,2535,2535,3,6,9,12); -- Jacaranda Lumber -- Needs KI Lumberjack
INSERT INTO `synth_recipes` VALUES (10507,1,0,0,0,0,0,0,0,0,104,4098,4240,4018,0,0,0,0,0,0,0,4019,4019,4019,4019,1,2,3,4); -- Guatambu Lumber
-- INSERT INTO `synth_recipes` VALUES (10508,1,0,0,0,0,0,0,0,0,104,4098,4240,4018,4018,4018,1657,0,0,0,0,4019,4019,4019,4019,3,6,9,12); -- Guatambu Lumber -- Needs KI Lumberjack
INSERT INTO `synth_recipes` VALUES (10509,1,0,0,0,0,0,60,0,0,105,4099,4041,704,755,1414,1414,1415,17205,0,0,19786,19787,19787,19787,1,1,1,1); -- Nurigomeyumi
INSERT INTO `synth_recipes` VALUES (10510,1,0,0,0,0,0,0,0,0,105,4098,4240,8725,0,0,0,0,0,0,0,8726,8726,8726,8726,1,2,3,4); -- Exalted Lumber
-- INSERT INTO `synth_recipes` VALUES (10511,1,0,0,0,0,0,0,0,0,105,4098,4240,8725,8725,8725,1657,0,0,0,0,8726,8726,8726,8726,3,6,9,12); -- Exalted Lumber -- Needs KI Lumberjack
INSERT INTO `synth_recipes` VALUES (10512,1,0,0,0,0,0,60,0,60,106,4098,4240,655,2275,2304,2535,0,0,0,0,18123,18124,18124,18124,1,1,1,1); -- Thalassocrat
INSERT INTO `synth_recipes` VALUES (10513,1,0,0,0,0,0,50,0,0,108,4098,4240,733,733,2275,0,0,0,0,0,18628,18629,18629,18629,1,1,1,1); -- Flete Pole
INSERT INTO `synth_recipes` VALUES (10514,1,0,0,0,0,0,0,0,0,109,4098,4240,786,2535,2535,3893,0,0,0,0,18634,18635,18635,18635,1,1,1,1); -- Zamzummim Staff
INSERT INTO `synth_recipes` VALUES (10515,1,0,0,0,0,0,0,0,0,110,4098,4240,2880,3549,17108,0,0,0,0,0,18630,18631,18631,18631,1,1,1,1); --  Nathushne
INSERT INTO `synth_recipes` VALUES (10516,1,0,0,60,0,0,0,0,60,110,4096,4238,658,658,745,914,4014,0,0,0,20950,20951,20951,20951,1,1,1,1); -- Terebrokath
INSERT INTO `synth_recipes` VALUES (10517,1,0,0,60,0,0,0,0,60,113,4098,4240,658,719,932,3933,4014,0,0,0,21249,21250,21250,21250,1,1,1,1); --  Iqonde Crossbow
INSERT INTO `synth_recipes` VALUES (10518,1,0,0,60,0,0,0,0,0,113,4098,4240,3925,3927,3979,0,0,0,0,0,21202,21203,21203,21203,1,1,1,1); -- Balsam Staff
INSERT INTO `synth_recipes` VALUES (10519,1,0,0,60,60,0,0,0,0,113,4098,4240,730,730,836,3870,3977,0,0,0,21239,21239,21239,21239,1,1,1,1); -- Echidna's Bow
INSERT INTO `synth_recipes` VALUES (10520,1,0,60,0,0,0,0,0,0,113,4098,4240,3549,3927,3977,0,0,0,0,0,21200,21201,21201,21201,1,1,1,1); -- Atinian Staff