BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO genres (genre_name) VALUES ('Pop');
INSERT INTO genres (genre_name) VALUES ('Rock');
INSERT INTO genres (genre_name) VALUES ('Country');
INSERT INTO genres (genre_name) VALUES ('Jazz');
INSERT INTO genres (genre_name) VALUES ('Electronic');
INSERT INTO genres (genre_name) VALUES ('Hip-Hop');
INSERT INTO genres (genre_name) VALUES ('World');
INSERT INTO genres (genre_name) VALUES ('Experimental');
INSERT INTO genres (genre_name) VALUES ('Latin');
INSERT INTO genres (genre_name) VALUES ('Metal');

INSERT INTO bands (band_name, description, genre_id, band_image_id) VALUES ('The Beatles', 'The Beatles were an English rock band formed in Liverpool in 1960, comprising John Lennon, Paul McCartney, George Harrison, and Ringo Starr. They are regarded as the most influential band of all time and were integral to the development of 1960s counterculture and the recognition of popular music as an art form. Rooted in skiffle, beat, and 1950s rock-n-roll, their sound incorporated elements of classical music and traditional pop in innovative ways. The band also explored music styles ranging from folk and Indian music to psychedelia and hard rock. As pioneers in recording, songwriting, and artistic presentation, the Beatles revolutionised many aspects of the music industry and were often publicised as leaders of the eras youth and sociocultural movements.', '1', 1);
INSERT INTO bands (band_name, description, genre_id, band_image_id) VALUES ('Metallica', 'Metallica is an American heavy metal band. The band was formed in 1981 in Los Angeles by vocalist and guitarist James Hetfield and drummer Lars Ulrich, and has been based in San Francisco for most of its career. The bands fast tempos, instrumentals, and aggressive musicianship made them one of the founding "big four" bands of thrash metal, alongside Megadeth, Anthrax, and Slayer. Metallicas current lineup comprises founding members and primary songwriters Hetfield and Ulrich, longtime lead guitarist Kirk Hammett, and bassist Robert Trujillo. Guitarist Dave Mustaine, who formed Megadeth after being fired from Metallica, and bassists Ron McGovney, Cliff Burton, and Jason Newsted are former members of the band.', '10', 2);
INSERT INTO bands (band_name, description, genre_id) VALUES ('Nirvana', 'Nirvana was an American rock band formed in Aberdeen, Washington, in 1987. Founded by lead singer and guitarist Kurt Cobain and bassist Krist Novoselic, the band went through a succession of drummers, most notably Chad Channing, before recruiting Dave Grohl in 1990. Nirvanas success popularized alternative rock, and they were often referenced as the figurehead band of Generation X. Their music maintains a popular following and continues to influence modern rock culture.', '2');
INSERT INTO bands (band_name, description, genre_id) VALUES ('Johnny Cash', 'John R. Cash (born J. R. Cash; February 26, 1932 – September 12, 2003) was an American country singer-songwriter. Most of Cashs music contained themes of sorrow, moral tribulation, and redemption, especially in the later stages of his career. He was known for his deep, calm bass-baritone voice, the distinctive sound of his Tennessee Three backing band characterized by train-like chugging guitar rhythms, a rebelliousness coupled with an increasingly somber and humble demeanor, free prison concerts, and a trademark all-black stage wardrobe, which earned him the nickname the Man in Black.', '3');
INSERT INTO bands (band_name, description, genre_id) VALUES ('Return To Forever', 'Return to Forever was an American jazz fusion band that was founded by pianist Chick Corea in 1972. The band has had many members, with the only consistent bandmate of Coreas being bassist Stanley Clarke. Along with Weather Report, The Headhunters, and Mahavishnu Orchestra, Return to Forever is often cited as one of the core groups of the jazz-fusion movement of the 1970s. Several musicians, including Clarke, Flora Purim, Airto Moreira and Al Di Meola, came to prominence through their performances on Return to Forever albums.', '4');
INSERT INTO bands (band_name, description, genre_id) VALUES ('sts9', 'Sound Tribe Sector 9 (STS9) is an instrumental band whose sound is based heavily on instrumental rock and electronic music, funk, jazz, drum and bass, psychedelia, and hip hop, originating in Georgia, United States. Self-described as post-rock dance music, the band mixes standard live rock instrumentation with electronics, favoring group rhythm over individual solos.', '5');
INSERT INTO bands (band_name, description, genre_id) VALUES ('Hopsin', 'Marcus Jamal Hopson (born July 18, 1985), known professionally as Hopsin, is an American rapper, songwriter, and record producer from Los Angeles. In 2007, he was signed to Ruthless Records, and had founded his own record label, Funk Volume, in 2009. He would then go on to found another record label, Undercover Prodigy, in 2016. Hopsin has released five studio albums, Gazing at the Moonlight through Ruthless Records, Raw, Knock Madness and Pound Syndrome along with the collaborative project Haywire with SwizZz through Funk Volume and No Shame. He is well known for his use of white colored eye contacts in music videos, performances, and interviews.', '6');
INSERT INTO bands (band_name, description, genre_id) VALUES ('The Hu', 'The Hu (stylized as The HU) is a Mongolian folk metal band formed in 2016. Incorporating traditional Mongolian instrumentation, including the morin khuur, the tovshuur, and throat singing, the band calls their style of music hunnu rock, a term inspired by the Xiongnu, an ancient tribal confederation of uncertain origins, known as Hünnü in Mongolia. Some of the bands lyrics include old Mongolian war cries and poetry. The Hu consists of Galbadrakh Gala Tsendbaatar, Nyamjantsan Jaya Galsanjamts, Enkhsaikhan Enkush Batjargal, and Temuulen Temka Naranbaatar. They have released the studio albums The Gereg (2019) and Rumble of Thunder (2022).', '7');
INSERT INTO bands (band_name, description, genre_id) VALUES ('Petr Valek', 'Petr Válek is a Czech artist, musician into experimental, noise and circuit bent, painter, object builder and run also two independent labels VaPe Records and Not on Label Records. He has recorded works under his real name but also in another b-side projects such as: Der Marebrechst, VaPe, A. O. K, Notrow 32, Ozvučená Rodinná Vánoční Návštěva, Máma and Der Marebrechst.', '8');
INSERT INTO bands (band_name, description, genre_id) VALUES ('Selena', 'Selena Quintanilla-Pérez (April 16, 1971 – March 31, 1995), known mononymously as Selena, was an American Tejano singer. Referred to as the Queen of Tejano Music, her contributions to music and fashion made her one of the most celebrated Mexican-American entertainers of the late 20th century. In 2020, Billboard magazine put her in third place on their list of Greatest Latino Artists of All Time, based on both Latin albums and Latin songs chart. Media outlets called her the Tejano Madonna for her clothing choices. She also ranks among the most influential Latin artists of all time and is credited for catapulting the Tejano genre into the mainstream market.', '9');

INSERT INTO band_owners (band_id, owner_id) VALUES (1, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (2, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (3, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (4, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (5, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (6, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (7, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (8, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (9, 2);
INSERT INTO band_owners (band_id, owner_id) VALUES (10, 2);



COMMIT TRANSACTION;
