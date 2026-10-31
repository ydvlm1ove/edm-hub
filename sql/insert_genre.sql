-- INSERT GENRES保存用
/*
name = 表示したいサブジャンル名(Progressive House)
slug = nameに入れたジャンルをスネークケースで(progressive_house)
category = メインジャンル名(House)
*/
/*
コピペ用
INSERT INTO genres (id, name, slug, category) VALUES ();
*/

--House
INSERT INTO genres (id, name, slug, category) VALUES
(1, 'Classic House', 'classic_house', 'house'),
(2, 'Deep House', 'deep_house', 'house'),
(3, 'Progressive House', 'progressive_house', 'house'),
(4, 'Electro House', 'electro_house', 'house'),
(5, 'Big Room House', 'big_room_house', 'house'),
(6, 'Tech House', 'tech_house', 'house'),
(7, 'Future House', 'future_house', 'house'),
(8, 'Bass House', 'bass_house', 'house'),
(9, 'Tropical House', 'tropical_house', 'house'),
(10, 'Disco House', 'disco_house', 'house');

-- Techno
INSERT INTO genres (id, name, slug, category) VALUES
(11, 'Driving Techno', 'driving_techno', 'techno'),
(12, 'Industrial Techno', 'industrial_techno', 'techno'),
(13, 'Hard Techno', 'hard_techno', 'techno'),
(14, 'Acid Techno', 'acid_techno', 'techno'),
(15, 'Melodic Techno', 'melodic_techno', 'techno'),
(16, 'Minimal Techno', 'minimal_techno', 'techno'),
(17, 'Dub Techno', 'dub_techno', 'techno');

-- Trance
INSERT INTO genres (id, name, slug, category) VALUES
(18, 'Uplifting Trance', 'uplifting_trance', 'trance'),
(19, 'Vocal Trance', 'vocal_trance', 'trance'),
(20, 'Psytrance', 'psytrance', 'trance'),
(21, 'Full On', 'full_on', 'trance'),
(22, 'Progressive Psytrance', 'progressive_psytrance', 'trance'),
(23, 'Hi-Tech / Darkpsy', 'hi_tech_darkpsy', 'trance'),
(24, 'Tech Trance', 'tech_trance', 'trance'),
(25, 'Hard Trance', 'hard_trance', 'trance'),
(26, 'Progressive Trance', 'progressive_trance', 'trance');

-- Bass（categoryはすべて 'bass' に統一）
INSERT INTO genres (id, name, slug, category) VALUES
(27, 'Brostep', 'brostep', 'bass'),
(28, 'Melodic Dubstep', 'melodic_dubstep', 'bass'),
(29, 'Riddim', 'riddim', 'bass'),
(30, 'Tearout', 'tearout', 'bass'),
(31, 'Drum and Bass', 'drum_and_bass', 'bass'),
(32, 'Dancefloor DnB', 'dancefloor_dnb', 'bass'),
(33, 'Liquid DnB', 'liquid_dnb', 'bass'),
(34, 'Neurofunk', 'neurofunk', 'bass'),
(35, 'Jump Up', 'jump_up', 'bass'),
(36, 'Hybrid Trap', 'hybrid_trap', 'bass'),
(37, 'Future Bass', 'future_bass', 'bass'),
(38, 'Moombahton', 'moombahton', 'bass');

-- Hard（categoryはすべて'hard'に統一）
INSERT INTO genres (id, name, slug, category) VALUES
(39, 'Euphoric Hardstyle', 'euphoric_hardstyle', 'hard'),
(40, 'Rawstyle', 'rawstyle', 'hard'),
(41, 'Rawphoric', 'rawphoric', 'hard'),
(42, 'Xtra Raw', 'xtra_raw', 'hard'),
(43, 'Hardcore', 'hardcore', 'hard'),
(44, 'Mainstream Hardcore', 'mainstream_hardcore', 'hard'),
(45, 'Uptempo Hardcore', 'uptempo_hardcore', 'hard'),
(46, 'Frenchcore', 'frenchcore', 'hard'),
(47, 'UK Hardcore', 'uk_hardcore', 'hard'),
(48, 'Reverse Bass', 'reverse_bass', 'hard'),
(49, 'Zaagkick', 'zaagkick', 'hard');
