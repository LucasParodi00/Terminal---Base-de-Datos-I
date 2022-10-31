

USE terminal;
GO
-- PAIS ------------------------------------------------------------------------------------------------
INSERT INTO pais 
VALUES 
('Argentina'),
('Brasil'),
('Chile'),
('Paraguay'),
('Uruguay');

SELECT * FROM pais;

GO

-- PROVINCIA ------------------------------------------------------------------------------------------------
INSERT INTO provincia
VALUES
(1, 'Capital Federal'),
(1, 'Buenos Aires'),
(1, 'Catamarca'),
(1, 'Chaco'),
(1, 'Chubut'),
(1, 'Cordoba'),
(1, 'Corrientes'),
(1, 'Entre Rios'),
(1, 'Formosa'),
(1, 'Jujuy'),
(1, 'La Pampa'),
(1, 'La Rioja'),
(1, 'Mendoza'),
(1, 'Misiones'),
(1, 'Neuquen'),
(1, 'Rio Negro'),
(1, 'Salta'),
(1, 'San Juan'),
(1, 'San Luis'),
(1, 'Santa Cruz'),
(1, 'Santa Fe'),
(1, 'Santiago del Estero'),
(1, 'Tierra del Fuego'),
(1, 'Tucuman')

SELECT * FROM provincia

GO
-- LOCALIDAD ------------------------------------------------------------------------------------------------

INSERT INTO localidad ("cod_pais", "cod_provincia", "localidad")
VALUES 
(1, 1, 'Colegiales'),
(1, 1, 'Retiro'),
(1, 1, 'Villa Lugano'),
(1, 1, 'Villa Santa Rita'),
(1, 2, 'Adrogu�'),
(1, 2, 'Alberti'),
(1, 2, 'Arrecifes'),
(1, 2, 'Avellaneda'),
(1, 2, 'Ayacucho'),
(1, 2, 'Azul'),
(1, 2, 'Bah�a Blanca'),
(1, 2, 'Balcarce'),
(1, 2, 'Baradero'),
(1, 2, 'Bel�n de Escobar'),
(1, 2, 'Benito Ju�rez'),
(1, 2, 'Berisso'),
(1, 2, 'Bragado'),
(1, 2, 'Brandsen'),
(1, 2, 'Campana'),
(1, 2, 'Ca�uelas'),
(1, 2, 'Capilla del Se�or'),
(1, 2, 'Capit�n Sarmiento'),
(1, 2, 'Carhu�'),
(1, 2, 'Caril�'),
(1, 2, 'Carlos Casares'),
(1, 2, 'Carlos Tejedor'),
(1, 2, 'Carmen de Areco'),
(1, 2, 'Carmen de Patagones'),
(1, 2, 'Caseros'),
(1, 2, 'Castelli'),
(1, 2, 'Chacabuco'),
(1, 2, 'Chascom�s'),
(1, 2, 'Chivilcoy'),
(1, 2, 'Col�n'),
(1, 2, 'Coronel Dorrego'),
(1, 2, 'Coronel Pringles'),
(1, 2, 'Coronel Su�rez'),
(1, 2, 'Coronel Vidal'),
(1, 2, 'Daireaux'),
(1, 2, 'Dolores'),
(1, 2, 'Ensenada'),
(1, 2, 'Ezeiza'),
(1, 2, 'Florencio Varela'),
(1, 2, 'Florentino Ameghino'),
(1, 2, 'General Alvear'),
(1, 2, 'General Arenales'),
(1, 2, 'General Belgrano'),
(1, 2, 'General Conesa'),
(1, 2, 'General Guido'),
(1, 2, 'General Juan Madariaga'),
(1, 2, 'General La Madrid'),
(1, 2, 'General Las Heras'),
(1, 2, 'General Lavalle'),
(1, 2, 'General Pinto'),
(1, 2, 'General Rodr�guez'),
(1, 2, 'General San Mart�n'),
(1, 2, 'General Viamonte'),
(1, 2, 'General Villegas'),
(1, 2, 'Guamin�'),
(1, 2, 'Guernica'),
(1, 2, 'Henderson'),
(1, 2, 'Hurlingham'),
(1, 2, 'Ituzaing�'),
(1, 2, 'Jun�n'),
(1, 2, 'La Plata'),
(1, 2, 'Lan�s'),
(1, 2, 'Laprida'),
(1, 2, 'Las Flores'),
(1, 2, 'Lincoln'),
(1, 2, 'Lober�a'),
(1, 2, 'Lobos'),
(1, 2, 'Lomas de Zamora'),
(1, 2, 'Luj�n'),
(1, 2, 'Magdalena'),
(1, 2, 'Maip�'),
(1, 2, 'Mar del Plata'),
(1, 2, 'Mar del Tuy�'),
(1, 2, 'Marcos Paz'),
(1, 2, 'M�danos'),
(1, 2, 'Mercedes'),
(1, 2, 'Merlo'),
(1, 2, 'Miramar'),
(1, 2, 'Monte Hermoso'),
(1, 2, 'Mor�n'),
(1, 2, 'Navarro'),
(1, 2, 'Necochea'),
(1, 2, 'Nueve de Julio'),
(1, 2, 'Olavarr�a'),
(1, 2, 'Olivos'),
(1, 2, 'Pehuaj�'),
(1, 2, 'Pellegrini'),
(1, 2, 'Pergamino'),
(1, 2, 'Pig��'),
(1, 2, 'Pila'),
(1, 2, 'Pilar'),
(1, 2, 'Pinamar'),
(1, 2, 'Pontevedra'),
(1, 2, 'Puan'),
(1, 2, 'Punta Alta'),
(1, 2, 'Quilmes'),
(1, 2, 'Ramallo'),
(1, 2, 'Ranchos'),
(1, 2, 'Rauch'),
(1, 2, 'Rojas'),
(1, 2, 'Roque P�rez'),
(1, 2, 'Saladillo'),
(1, 2, 'Salliquel�'),
(1, 2, 'Salto'),
(1, 2, 'San Andr�s de Giles'),
(1, 2, 'San Antonio de Areco'),
(1, 2, 'San Carlos de Bol�var'),
(1, 2, 'San Cayetano'),
(1, 2, 'San Clemente del Tuy�'),
(1, 2, 'San Isidro'),
(1, 2, 'San Justo'),
(1, 2, 'San Miguel del Monte'),
(1, 2, 'San Nicol�s de los Arroyos'),
(1, 2, 'San Pedro'),
(1, 2, 'San Vicente'),
(1, 2, 'Santa Catalina - Dique Lujan'),
(1, 2, 'Suipacha'),
(1, 2, 'Tandil'),
(1, 2, 'Tapalqu�'),
(1, 2, 'Tigre'),
(1, 2, 'Tornquist'),
(1, 2, 'Trenque Lauquen'),
(1, 2, 'Tres Arroyos'),
(1, 2, 'Tres Lomas'),
(1, 2, 'Vedia'),
(1, 2, 'Veinticinco de Mayo'),
(1, 2, 'Ver�nica'),
(1, 2, 'Villa Gesell'),
(1, 2, 'Z�rate'),
(1, 3, 'Ancasti'),
(1, 3, 'Andalgal�'),
(1, 3, 'Antofagasta de la Sierra'),
(1, 3, 'Ba�ado de Ovanta'),
(1, 3, 'Bel�n'),
(1, 3, 'Capay�n'),
(1, 3, 'Chumbicha'),
(1, 3, 'El Alto'),
(1, 3, 'El Rodeo'),
(1, 3, 'Esqui�'),
(1, 3, 'Fiambal�'),
(1, 3, 'Hualf�n'),
(1, 3, 'Huillapima'),
(1, 3, 'Ica�o'),
(1, 3, 'La Merced'),
(1, 3, 'La Puerta'),
(1, 3, 'La Puerta de San Jos�'),
(1, 3, 'Londres'),
(1, 3, 'Los Altos'),
(1, 3, 'Los Varela'),
(1, 3, 'Mutqu�n'),
(1, 3, 'Pom�n'),
(1, 3, 'Puerta de Corral Quemado'),
(1, 3, 'Recreo'),
(1, 3, 'San Antonio'),
(1, 3, 'San Antonio'),
(1, 3, 'San Isidro'),
(1, 3, 'San Jos�'),
(1, 3, 'Santa Mar�a'),
(1, 3, 'Saujil'),
(1, 3, 'Tinogasta'),
(1, 4, 'Avi� Terai'),
(1, 4, 'Barranqueras'),
(1, 4, 'Basail'),
(1, 4, 'Campo Largo'),
(1, 4, 'Capit�n Solari'),
(1, 4, 'Castelli'),
(1, 4, 'Charadai'),
(1, 4, 'Charata'),
(1, 4, 'Chorotis'),
(1, 4, 'Ciervo Petiso'),
(1, 4, 'Colonia Ben�tez'),
(1, 4, 'Colonia Elisa'),
(1, 4, 'Colonias Unidas'),
(1, 4, 'Concepci�n del Bermejo'),
(1, 4, 'Coronel Du Graty'),
(1, 4, 'Corzuela'),
(1, 4, 'Cot�-Lai'),
(1, 4, 'Fontana'),
(1, 4, 'Gancedo'),
(1, 4, 'General Jos� de San Mart�n'),
(1, 4, 'General Pinedo'),
(1, 4, 'General Vedia'),
(1, 4, 'Hermoso Campo'),
(1, 4, 'La Clotilde'),
(1, 4, 'La Eduvigis'),
(1, 4, 'La Escondida'),
(1, 4, 'La Leonesa'),
(1, 4, 'La Tigra'),
(1, 4, 'La Verde'),
(1, 4, 'Laguna Limpia'),
(1, 4, 'Lapachito'),
(1, 4, 'Las Bre�as'),
(1, 4, 'Las Garcitas'),
(1, 4, 'Los Frentones'),
(1, 4, 'Machagai'),
(1, 4, 'Makall�'),
(1, 4, 'Margarita Bel�n'),
(1, 4, 'Napenay'),
(1, 4, 'Pampa Almir�n'),
(1, 4, 'Pampa del Indio'),
(1, 4, 'Pampa del Infierno'),
(1, 4, 'Presidencia de la Plaza'),
(1, 4, 'Presidencia Roca'),
(1, 4, 'Presidencia Roque S�enz Pe�a'),
(1, 4, 'Puerto Bermejo'),
(1, 4, 'Puerto Tirol'),
(1, 4, 'Puerto Vilelas'),
(1, 4, 'Quitilipi'),
(1, 4, 'Resistencia'),
(1, 4, 'Samuh�'),
(1, 4, 'San Bernardo'),
(1, 4, 'Santa Sylvina'),
(1, 4, 'Taco Pozo'),
(1, 4, 'Tres Isletas'),
(1, 4, 'Villa �ngela'),
(1, 4, 'Villa Berthet'),
(1, 5, 'Alto R�o Senguer'),
(1, 5, 'Camarones'),
(1, 5, 'Comodoro Rivadavia'),
(1, 5, 'Dolav�n'),
(1, 5, 'El Mait�n'),
(1, 5, 'Esquel'),
(1, 5, 'Gaim�n'),
(1, 5, 'Gastre'),
(1, 5, 'Gobernador Costa'),
(1, 5, 'Hoyo de Epuy�n'),
(1, 5, 'Jos� de San Mart�n'),
(1, 5, 'Lago Puelo'),
(1, 5, 'Las Plumas'),
(1, 5, 'Leleque'),
(1, 5, 'Paso de Indios'),
(1, 5, 'Puerto Madryn'),
(1, 5, 'Rada Tilly'),
(1, 5, 'Rawson'),
(1, 5, 'R�o Mayo'),
(1, 5, 'R�o Pico'),
(1, 5, 'Sarmiento'),
(1, 5, 'Tecka'),
(1, 5, 'Telsen'),
(1, 5, 'Trelew'),
(1, 5, 'Trevelin'),
(1, 6, 'Achiras'),
(1, 6, 'Adelia Mar�a'),
(1, 6, 'Agua de Oro'),
(1, 6, 'Alejandro Roca'),
(1, 6, 'Alejo Ledesma'),
(1, 6, 'Almafuerte'),
(1, 6, 'Alta Gracia'),
(1, 6, 'Altos de Chipi�n'),
(1, 6, 'Arias'),
(1, 6, 'Arroyito'),
(1, 6, 'Arroyo Cabral'),
(1, 6, 'Balnearia'),
(1, 6, 'Bell Ville'),
(1, 6, 'Berrotar�n'),
(1, 6, 'Brinkmann'),
(1, 6, 'Buchardo'),
(1, 6, 'Camilo Aldao'),
(1, 6, 'Canals'),
(1, 6, 'Ca�ada de Luque'),
(1, 6, 'Capilla del Monte'),
(1, 6, 'Carnerillo'),
(1, 6, 'Carrilobo'),
(1, 6, 'Cavanagh'),
(1, 6, 'Charras'),
(1, 6, 'Chaz�n'),
(1, 6, 'Cintra'),
(1, 6, 'Colonia La Tordilla'),
(1, 6, 'Colonia San Bartolom�'),
(1, 6, 'C�rdoba'),
(1, 6, 'Coronel Baigorria'),
(1, 6, 'Coronel Moldes'),
(1, 6, 'Corral de Bustos'),
(1, 6, 'Corralito'),
(1, 6, 'Cosqu�n'),
(1, 6, 'Costa Sacate'),
(1, 6, 'Cruz Alta'),
(1, 6, 'Cruz del Eje'),
(1, 6, 'Cuesta Blanca'),
(1, 6, 'Dalmacio V�lez S�rsfield'),
(1, 6, 'De�n Funes'),
(1, 6, 'Del Campillo'),
(1, 6, 'Despe�aderos'),
(1, 6, 'Devoto'),
(1, 6, 'Dolores'),
(1, 6, 'El Ara�ado'),
(1, 6, 'El T�o'),
(1, 6, 'Elena'),
(1, 6, 'Embalse'),
(1, 6, 'Etruria'),
(1, 6, 'General Baldissera'),
(1, 6, 'General Cabrera'),
(1, 6, 'General Levalle'),
(1, 6, 'General Roca'),
(1, 6, 'Guatimoz�n'),
(1, 6, 'Hernando'),
(1, 6, 'Huanchillas'),
(1, 6, 'Huerta Grande'),
(1, 6, 'Huinca Renanc�'),
(1, 6, 'Idiaz�bal'),
(1, 6, 'Inriville'),
(1, 6, 'Isla Verde'),
(1, 6, 'Ital�'),
(1, 6, 'James Craik'),
(1, 6, 'Jes�s Mar�a'),
(1, 6, 'Justiniano Posse'),
(1, 6, 'La Calera'),
(1, 6, 'La Carlota'),
(1, 6, 'La Cesira'),
(1, 6, 'La Cumbre'),
(1, 6, 'La Falda'),
(1, 6, 'La Francia'),
(1, 6, 'La Granja'),
(1, 6, 'La Para'),
(1, 6, 'La Playosa'),
(1, 6, 'Laborde'),
(1, 6, 'Laboulaye'),
(1, 6, 'Laguna Larga'),
(1, 6, 'Las Acequias'),
(1, 6, 'Las Higueras'),
(1, 6, 'Las Junturas'),
(1, 6, 'Las Perdices'),
(1, 6, 'Las Varas'),
(1, 6, 'Las Varillas'),
(1, 6, 'Leones'),
(1, 6, 'Los C�ndores'),
(1, 6, 'Los Surgentes'),
(1, 6, 'Malague�o'),
(1, 6, 'Malvinas Argentinas'),
(1, 6, 'Marcos Ju�rez'),
(1, 6, 'Marull'),
(1, 6, 'Mattaldi'),
(1, 6, 'Mendiolaza'),
(1, 6, 'Mina Clavero'),
(1, 6, 'Miramar'),
(1, 6, 'Monte Buey'),
(1, 6, 'Monte Cristo'),
(1, 6, 'Monte Ma�z'),
(1, 6, 'Morrison'),
(1, 6, 'Morteros'),
(1, 6, 'Noetinger'),
(1, 6, 'Obispo Trejo'),
(1, 6, 'Oliva'),
(1, 6, 'Oncativo'),
(1, 6, 'Ord��ez'),
(1, 6, 'Pascanas'),
(1, 6, 'Pasco'),
(1, 6, 'Pilar'),
(1, 6, 'Piquill�n'),
(1, 6, 'Porte�a'),
(1, 6, 'Pozo del Molle'),
(1, 6, 'Quilino'),
(1, 6, 'R�o Ceballos'),
(1, 6, 'R�o Cuarto'),
(1, 6, 'R�o Segundo'),
(1, 6, 'R�o Tercero'),
(1, 6, 'Sacanta'),
(1, 6, 'Sald�n'),
(1, 6, 'Salsacate'),
(1, 6, 'Salsipuedes'),
(1, 6, 'Sampacho'),
(1, 6, 'San Agust�n'),
(1, 6, 'San Antonio de Lit�n'),
(1, 6, 'San Basilio'),
(1, 6, 'San Carlos'),
(1, 6, 'San Francisco'),
(1, 6, 'San Francisco del Cha�ar'),
(1, 6, 'San Jos� de la Dormida'),
(1, 6, 'Santa Eufemia'),
(1, 6, 'Santa Magdalena'),
(1, 6, 'Santa Rosa de Calamuchita'),
(1, 6, 'Santa Rosa de R�o Primero'),
(1, 6, 'Santiago Temple'),
(1, 6, 'Saturnino M. Laspiur'),
(1, 6, 'Sebasti�n Elcano'),
(1, 6, 'Serrano'),
(1, 6, 'Serrezuela'),
(1, 6, 'Tancacha'),
(1, 6, 'Ticino'),
(1, 6, 'T�o Pujio'),
(1, 6, 'Toledo'),
(1, 6, 'Ucacha'),
(1, 6, 'Unquillo'),
(1, 6, 'Valle Hermoso'),
(1, 6, 'Viamonte'),
(1, 6, 'Vicu�a Mackenna'),
(1, 6, 'Villa Allende'),
(1, 6, 'Villa Ascasubi'),
(1, 6, 'Villa Berna'),
(1, 6, 'Villa Carlos Paz'),
(1, 6, 'Villa Concepci�n del T�o'),
(1, 6, 'Villa Cura Brochero'),
(1, 6, 'Villa de Mar�a'),
(1, 6, 'Villa de Soto'),
(1, 6, 'Villa del Dique'),
(1, 6, 'Villa del Rosario'),
(1, 6, 'Villa del Totoral'),
(1, 6, 'Villa Dolores'),
(1, 6, 'Villa General Belgrano'),
(1, 6, 'Villa Giardino'),
(1, 6, 'Villa Huidobro'),
(1, 6, 'Villa Las Rosas'),
(1, 6, 'Villa Mar�a'),
(1, 6, 'Villa Nueva'),
(1, 6, 'Villa Reducci�n'),
(1, 6, 'Villa Rumipal'),
(1, 6, 'Villa Tulumba'),
(1, 6, 'Villa Valeria'),
(1, 6, 'Wenceslao Escalante'),
(1, 7, 'Alvear'),
(1, 7, 'Bella Vista'),
(1, 7, 'Ber�n de Astrada'),
(1, 7, 'Bonpland'),
(1, 7, 'Chavarr�a'),
(1, 7, 'Concepci�n'),
(1, 7, 'Corrientes'),
(1, 7, 'Cruz de los Milagros'),
(1, 7, 'Curuz� Cuati�'),
(1, 7, 'Empedrado'),
(1, 7, 'Esquina'),
(1, 7, 'Felipe Yofr�'),
(1, 7, 'Garruchos'),
(1, 7, 'Gobernador Ingeniero Valent�n Virasoro'),
(1, 7, 'Gobernador Juan E. Mart�nez'),
(1, 7, 'Goya'),
(1, 7, 'Herlitzka'),
(1, 7, 'It� Ibat�'),
(1, 7, 'Itat�'),
(1, 7, 'Ituzaing�'),
(1, 7, 'Juan Pujol'),
(1, 7, 'La Cruz'),
(1, 7, 'Libertad'),
(1, 7, 'Lomas de Vallejos'),
(1, 7, 'Loreto'),
(1, 7, 'Mariano I. Loza'),
(1, 7, 'Mburucuy�'),
(1, 7, 'Mercedes'),
(1, 7, 'Mocoret�'),
(1, 7, 'Monte Caseros'),
(1, 7, 'Nuestra Se�ora del Rosario de Caa Cat�'),
(1, 7, 'Nueve de Julio'),
(1, 7, 'Palmar Grande'),
(1, 7, 'Paso de la Patria'),
(1, 7, 'Paso de los Libres'),
(1, 7, 'Pedro R. Fern�ndez'),
(1, 7, 'Perugorr�a'),
(1, 7, 'Pueblo Libertador'),
(1, 7, 'Riachuelo'),
(1, 7, 'Saladas'),
(1, 7, 'San Carlos'),
(1, 7, 'San Cosme'),
(1, 7, 'San Lorenzo'),
(1, 7, 'San Luis del Palmar'),
(1, 7, 'San Miguel'),
(1, 7, 'San Roque'),
(1, 7, 'Santa Luc�a'),
(1, 7, 'Santa Rosa'),
(1, 7, 'Santo Tom�'),
(1, 7, 'Sauce'),
(1, 7, 'Yapey�'),
(1, 7, 'Yataity Calle'),
(1, 8, 'Aldea San Antonio'),
(1, 8, 'Aranguren'),
(1, 8, 'Bovril'),
(1, 8, 'Caseros'),
(1, 8, 'Ceibas'),
(1, 8, 'Chajar�'),
(1, 8, 'Col�n'),
(1, 8, 'Colonia El�a'),
(1, 8, 'Concepci�n del Uruguay'),
(1, 8, 'Concordia'),
(1, 8, 'Conscripto Bernardi'),
(1, 8, 'Crespo'),
(1, 8, 'Diamante'),
(1, 8, 'Dom�nguez'),
(1, 8, 'Federaci�n'),
(1, 8, 'Federal'),
(1, 8, 'General Campos'),
(1, 8, 'General Galarza'),
(1, 8, 'General Ram�rez'),
(1, 8, 'Gobernador Mansilla'),
(1, 8, 'Gualeguay'),
(1, 8, 'Gualeguaych�'),
(1, 8, 'Hasenkamp'),
(1, 8, 'Hern�ndez'),
(1, 8, 'Herrera'),
(1, 8, 'La Criolla'),
(1, 8, 'La Paz'),
(1, 8, 'Larroque'),
(1, 8, 'Los Charr�as'),
(1, 8, 'Los Conquistadores'),
(1, 8, 'Lucas Gonz�lez'),
(1, 8, 'Maci�'),
(1, 8, 'Nogoy�'),
(1, 8, 'Oro Verde'),
(1, 8, 'Paran�'),
(1, 8, 'Piedras Blancas'),
(1, 8, 'Pronunciamiento'),
(1, 8, 'Puerto Ibicuy'),
(1, 8, 'Puerto Yeru�'),
(1, 8, 'Rosario del Tala'),
(1, 8, 'San Benito'),
(1, 8, 'San Gustavo'),
(1, 8, 'San Jos� de Feliciano'),
(1, 8, 'San Justo'),
(1, 8, 'San Salvador'),
(1, 8, 'Santa Ana'),
(1, 8, 'Santa Anita'),
(1, 8, 'Santa Elena'),
(1, 8, 'Sauce de Luna'),
(1, 8, 'Segu�'),
(1, 8, 'Tabossi'),
(1, 8, 'Ubajay'),
(1, 8, 'Urdinarrain'),
(1, 8, 'Viale'),
(1, 8, 'Victoria'),
(1, 8, 'Villa del Rosario'),
(1, 8, 'Villa Elisa'),
(1, 8, 'Villa Hernandarias'),
(1, 8, 'Villa Mantero'),
(1, 8, 'Villa Mar�a Grande'),
(1, 8, 'Villa Paranacito'),
(1, 8, 'Villa Urquiza'),
(1, 8, 'Villaguay'),
(1, 9, 'Clorinda'),
(1, 9, 'Comandante Fontana'),
(1, 9, 'El Colorado'),
(1, 9, 'Espinillo'),
(1, 9, 'Estanislao del Campo'),
(1, 9, 'Formosa'),
(1, 9, 'General Enrique Mosconi'),
(1, 9, 'Herradura'),
(1, 9, 'Ibarreta'),
(1, 9, 'Ingeniero Guillermo N. Ju�rez'),
(1, 9, 'Laguna Naick-Neck'),
(1, 9, 'Laguna Yema'),
(1, 9, 'Las Lomitas'),
(1, 9, 'Palo Santo'),
(1, 9, 'Piran�'),
(1, 9, 'Pozo del Tigre'),
(1, 9, 'Riacho Eh-Eh'),
(1, 9, 'San Francisco de Laish�'),
(1, 9, 'Villa Escolar'),
(1, 10, 'Abra Pampa'),
(1, 10, 'Caimancito'),
(1, 10, 'Calilegua'),
(1, 10, 'El Aguilar'),
(1, 10, 'El Carmen'),
(1, 10, 'Fraile Pintado'),
(1, 10, 'Humahuaca'),
(1, 10, 'Ingenio La Esperanza'),
(1, 10, 'La Mendieta'),
(1, 10, 'La Quiaca'),
(1, 10, 'Libertador General San Mart�n'),
(1, 10, 'Maimar�'),
(1, 10, 'Palma Sola'),
(1, 10, 'Palpal�'),
(1, 10, 'Rinconada'),
(1, 10, 'San Antonio'),
(1, 10, 'San Pedro'),
(1, 10, 'San Salvador de Jujuy'),
(1, 10, 'Santa Catalina'),
(1, 10, 'Santa Clara'),
(1, 10, 'Susques'),
(1, 10, 'Tilcara'),
(1, 10, 'Tumbaya'),
(1, 10, 'Valle Grande'),
(1, 10, 'Yuto'),
(1, 11, 'Algarrobo del �guila'),
(1, 11, 'Alpachiri'),
(1, 11, 'Alta Italia'),
(1, 11, 'Anguil'),
(1, 11, 'Arata'),
(1, 11, 'Bernardo Larroud�'),
(1, 11, 'Bernasconi'),
(1, 11, 'Caleuf�'),
(1, 11, 'Catril�'),
(1, 11, 'Colonia Bar�n'),
(1, 11, 'Cuchillo C�'),
(1, 11, 'Doblas'),
(1, 11, 'Eduardo Castex'),
(1, 11, 'Embajador Martini'),
(1, 11, 'General Acha'),
(1, 11, 'General Manuel J. Campos'),
(1, 11, 'General Pico'),
(1, 11, 'General San Mart�n'),
(1, 11, 'Guatrach�'),
(1, 11, 'Ingeniero Luiggi'),
(1, 11, 'Intendente Alvear'),
(1, 11, 'Jacinto Arauz'),
(1, 11, 'La Maruja'),
(1, 11, 'Limay Mahuida'),
(1, 11, 'Lonquimay'),
(1, 11, 'Macach�n'),
(1, 11, 'Miguel Riglos'),
(1, 11, 'Parera'),
(1, 11, 'Puelches'),
(1, 11, 'Quem� Quem�'),
(1, 11, 'Rancul'),
(1, 11, 'Realic�'),
(1, 11, 'Santa Isabel'),
(1, 11, 'Santa Rosa'),
(1, 11, 'Tel�n'),
(1, 11, 'Toay'),
(1, 11, 'Trenel'),
(1, 11, 'Uriburu'),
(1, 11, 'Veinticinco de Mayo'),
(1, 11, 'Victorica'),
(1, 11, 'Winifreda'),
(1, 12, 'Aimogasta'),
(1, 12, 'Aminga'),
(1, 12, 'Arauco'),
(1, 12, 'Castro Barros'),
(1, 12, 'Chamical'),
(1, 12, 'Chepes'),
(1, 12, 'Chilecito'),
(1, 12, 'Famatina'),
(1, 12, 'La Rioja'),
(1, 12, 'Malanz�n'),
(1, 12, 'Milagro'),
(1, 12, 'Olta'),
(1, 12, 'Patqu�a'),
(1, 12, 'San Blas de los Sauces'),
(1, 12, 'Sa�ogasta'),
(1, 12, 'Tama'),
(1, 12, 'Ulapes'),
(1, 12, 'Villa Bustos'),
(1, 12, 'Villa Castelli'),
(1, 12, 'Villa Uni�n'),
(1, 12, 'Vinchina'),
(1, 13, 'General Alvear'),
(1, 13, 'General Lavalle'),
(1, 13, 'Godoy Cruz'),
(1, 13, 'Jun�n'),
(1, 13, 'La Consulta'),
(1, 13, 'La Paz'),
(1, 13, 'Las Heras'),
(1, 13, 'Luj�n de Cuyo'),
(1, 13, 'Maip�'),
(1, 13, 'Malarg�e'),
(1, 13, 'Mendoza'),
(1, 13, 'Rivadavia'),
(1, 13, 'San Mart�n'),
(1, 13, 'San Rafael'),
(1, 13, 'Santa Rosa'),
(1, 13, 'Tunuy�n'),
(1, 13, 'Tupungato'),
(1, 13, 'Villa Nueva'),
(1, 14, 'Alba Posse'),
(1, 14, 'Almafuerte'),
(1, 14, 'Ap�stoles'),
(1, 14, 'Arist�bulo del Valle'),
(1, 14, 'Arroyo del Medio'),
(1, 14, 'Azara'),
(1, 14, 'Bernardo de Irigoyen'),
(1, 14, 'Bonpland'),
(1, 14, 'Campo Grande'),
(1, 14, 'Campo Ram�n'),
(1, 14, 'Campo Viera'),
(1, 14, 'Candelaria'),
(1, 14, 'Capiov�'),
(1, 14, 'Caraguatay'),
(1, 14, 'Cerro Azul'),
(1, 14, 'Cerro Cor�'),
(1, 14, 'Colonia Aurora'),
(1, 14, 'Colonia Wanda'),
(1, 14, 'Concepci�n de la Sierra'),
(1, 14, 'Dos Arroyos'),
(1, 14, 'Dos de Mayo'),
(1, 14, 'El Alc�zar'),
(1, 14, 'El Soberbio'),
(1, 14, 'Eldorado'),
(1, 14, 'Florentino Ameghino'),
(1, 14, 'Garuhap�'),
(1, 14, 'Garup�'),
(1, 14, 'General Alvear'),
(1, 14, 'Gobernador Roca'),
(1, 14, 'Guaran�'),
(1, 14, 'Jard�n Am�rica'),
(1, 14, 'Leandro N. Alem'),
(1, 14, 'Loreto'),
(1, 14, 'Los Helechos'),
(1, 14, 'M�rtires'),
(1, 14, 'Moj�n Grande'),
(1, 14, 'Montecarlo'),
(1, 14, 'Ober�'),
(1, 14, 'Panamb�'),
(1, 14, 'Picada Gobernador L�pez'),
(1, 14, 'Posadas'),
(1, 14, 'Puerto Eldorado'),
(1, 14, 'Puerto Esperanza'),
(1, 14, 'Puerto Iguaz�'),
(1, 14, 'Puerto Leoni'),
(1, 14, 'Puerto Libertad'),
(1, 14, 'Puerto Piray'),
(1, 14, 'Puerto Rico'),
(1, 14, 'Ruiz de Montoya'),
(1, 14, 'San Ignacio'),
(1, 14, 'San Javier'),
(1, 14, 'San Jos�'),
(1, 14, 'San Pedro'),
(1, 14, 'San Vicente'),
(1, 14, 'Santa Ana'),
(1, 14, 'Santa Mar�a'),
(1, 14, 'Santo Pip�'),
(1, 14, 'Tres Capones'),
(1, 14, 'Veinticinco de Mayo'),
(1, 15, 'Alumin�'),
(1, 15, 'Andacollo'),
(1, 15, 'A�elo'),
(1, 15, 'Barrancas'),
(1, 15, 'Buta Ranquil'),
(1, 15, 'Centenario'),
(1, 15, 'Chos Malal'),
(1, 15, 'Cutral-C�'),
(1, 15, 'El Huec�'),
(1, 15, 'Jun�n de los Andes'),
(1, 15, 'Las Coloradas'),
(1, 15, 'Las Lajas'),
(1, 15, 'Las Ovejas'),
(1, 15, 'Loncopu�'),
(1, 15, 'Mariano Moreno'),
(1, 15, 'Neuqu�n'),
(1, 15, 'Pic�n Leuf�'),
(1, 15, 'Piedra del �guila'),
(1, 15, 'Plaza Huincul'),
(1, 15, 'Plottier'),
(1, 15, 'San Mart�n de los Andes'),
(1, 15, 'Senillosa'),
(1, 15, 'Villa La Angostura'),
(1, 15, 'Vista Alegre'),
(1, 15, 'Zapala'),
(1, 16, 'Allen'),
(1, 16, 'Catriel'),
(1, 16, 'Cervantes'),
(1, 16, 'Chichinales'),
(1, 16, 'Chimpay'),
(1, 16, 'Choele Choel'),
(1, 16, 'Cinco Saltos'),
(1, 16, 'Cipolletti'),
(1, 16, 'Comallo'),
(1, 16, 'Contraalmirante Cordero'),
(1, 16, 'Coronel Belisle'),
(1, 16, 'Darwin'),
(1, 16, 'El Bols�n'),
(1, 16, 'El Cuy'),
(1, 16, 'Fray Luis Beltr�n'),
(1, 16, 'General Conesa'),
(1, 16, 'General Enrique Godoy'),
(1, 16, 'General Fern�ndez Oro'),
(1, 16, 'General Roca'),
(1, 16, 'Ingeniero Jacobacci'),
(1, 16, 'Ingeniero Luis A. Huergo'),
(1, 16, 'Lamarque'),
(1, 16, 'Los Menucos'),
(1, 16, 'Mainque'),
(1, 16, 'Maquinchao'),
(1, 16, '�orquinco'),
(1, 16, 'Pilcaniyeu'),
(1, 16, 'R�o Colorado'),
(1, 16, 'San Antonio Oeste'),
(1, 16, 'San Carlos de Bariloche'),
(1, 16, 'Sierra Colorada'),
(1, 16, 'Sierra Grande'),
(1, 16, 'Valcheta'),
(1, 16, 'Viedma'),
(1, 16, 'Villa Regina'),
(1, 17, 'Apolinario Saravia'),
(1, 17, 'Cach�'),
(1, 17, 'Cafayate'),
(1, 17, 'Campo Quijano'),
(1, 17, 'Cerrillos'),
(1, 17, 'Chicoana'),
(1, 17, 'El Carril'),
(1, 17, 'El Galp�n'),
(1, 17, 'El Quebrachal'),
(1, 17, 'Embarcaci�n'),
(1, 17, 'General Enrique Mosconi'),
(1, 17, 'General Mart�n Miguel de G�emes'),
(1, 17, 'Guachipas'),
(1, 17, 'Iruya'),
(1, 17, 'Joaqu�n V. Gonz�lez'),
(1, 17, 'La Caldera'),
(1, 17, 'La Candelaria'),
(1, 17, 'La Poma'),
(1, 17, 'La Vi�a'),
(1, 17, 'Las Lajitas'),
(1, 17, 'Met�n'),
(1, 17, 'Molinos'),
(1, 17, 'Rivadavia'),
(1, 17, 'Rosario de la Frontera'),
(1, 17, 'Rosario de Lerma'),
(1, 17, 'Salta'),
(1, 17, 'San Antonio de los Cobres'),
(1, 17, 'San Carlos'),
(1, 17, 'San Ram�n de la Nueva Or�n'),
(1, 17, 'Santa Rosa de Tastil'),
(1, 17, 'Santa Victoria'),
(1, 17, 'Tartagal'),
(1, 18, 'Albard�n'),
(1, 18, 'Calingasta'),
(1, 18, 'Caucete'),
(1, 18, 'Chimbas'),
(1, 18, 'Nueve de Julio'),
(1, 18, 'Pocito'),
(1, 18, 'Rivadavia'),
(1, 18, 'Rodeo'),
(1, 18, 'San Agust�n de Valle F�rtil'),
(1, 18, 'San Jos� de J�chal'),
(1, 18, 'San Juan'),
(1, 18, 'San Mart�n'),
(1, 18, 'Santa Luc�a'),
(1, 18, 'Tamber�as'),
(1, 18, 'Villa Aberastain'),
(1, 18, 'Villa Basilio Nievas'),
(1, 18, 'Villa del Salvador'),
(1, 18, 'Villa Krause'),
(1, 18, 'Villa Media Agua'),
(1, 18, 'Villa Paula de Sarmiento'),
(1, 18, 'Villa San Isidro'),
(1, 18, 'Villa Santa Rosa'),
(1, 19, 'Buena Esperanza'),
(1, 19, 'Candelaria'),
(1, 19, 'Concar�n'),
(1, 19, 'Justo Daract'),
(1, 19, 'La Punta'),
(1, 19, 'La Toma'),
(1, 19, 'Libertador General San Mart�n'),
(1, 19, 'Luj�n'),
(1, 19, 'Merlo'),
(1, 19, 'Naschel'),
(1, 19, 'San Francisco del Monte de Oro'),
(1, 19, 'San Luis'),
(1, 19, 'Santa Rosa del Conlara'),
(1, 19, 'Tilisarao'),
(1, 19, 'Uni�n'),
(1, 19, 'Villa General Roca'),
(1, 19, 'Villa Mercedes'),
(1, 20, '28 de Noviembre'),
(1, 20, 'Caleta Olivia'),
(1, 20, 'Comandante Luis Piedra Buena'),
(1, 20, 'El Calafate'),
(1, 20, 'Gobernador Gregores'),
(1, 20, 'Las Heras'),
(1, 20, 'Los Antiguos'),
(1, 20, 'Perito Moreno'),
(1, 20, 'Pico Truncado'),
(1, 20, 'Puerto Deseado'),
(1, 20, 'Puerto Santa Cruz'),
(1, 20, 'R�o Gallegos'),
(1, 20, 'R�o Turbio'),
(1, 20, 'San Juli�n'),
(1, 20, 'Yacimiento R�o Turbio'),
(1, 21, 'Armstrong'),
(1, 21, 'Arroyo Seco'),
(1, 21, 'Arruf�'),
(1, 21, 'Avellaneda'),
(1, 21, 'Bella Italia'),
(1, 21, 'Calchaqu�'),
(1, 21, 'Ca�ada de G�mez'),
(1, 21, 'Capit�n Berm�dez'),
(1, 21, 'Carcara��'),
(1, 21, 'Casilda'),
(1, 21, 'Ceres'),
(1, 21, 'Cha�ar Ladeado'),
(1, 21, 'Coronda'),
(1, 21, 'El Tr�bol'),
(1, 21, 'Esperanza'),
(1, 21, 'Firmat'),
(1, 21, 'Fray Luis A. Beltr�n'),
(1, 21, 'Funes'),
(1, 21, 'G�lvez'),
(1, 21, 'Gobernador G�lvez'),
(1, 21, 'Granadero Baigorria'),
(1, 21, 'Helvecia'),
(1, 21, 'Hersilia'),
(1, 21, 'Laguna Paiva'),
(1, 21, 'Las Parejas'),
(1, 21, 'Las Rosas'),
(1, 21, 'Las Toscas'),
(1, 21, 'Malabrigo'),
(1, 21, 'Melincu�'),
(1, 21, 'P�rez'),
(1, 21, 'Rafaela'),
(1, 21, 'Reconquista'),
(1, 21, 'Recreo'),
(1, 21, 'Rold�n'),
(1, 21, 'Rosario'),
(1, 21, 'Rufino'),
(1, 21, 'San Carlos Centro'),
(1, 21, 'San Crist�bal'),
(1, 21, 'San Javier'),
(1, 21, 'San Jorge'),
(1, 21, 'San Justo'),
(1, 21, 'San Lorenzo'),
(1, 21, 'Santa Fe de la Vera Cruz'),
(1, 21, 'Santo Tom�'),
(1, 21, 'Sastre'),
(1, 21, 'Sunchales'),
(1, 21, 'Tostado'),
(1, 21, 'Totoras'),
(1, 21, 'Venado Tuerto'),
(1, 21, 'Vera'),
(1, 21, 'Villa Ca��s'),
(1, 21, 'Villa Constituci�n'),
(1, 21, 'Villa Ocampo'),
(1, 21, 'Villa Trinidad'),
(1, 22, 'A�atuya'),
(1, 22, 'Arraga'),
(1, 22, 'Bandera'),
(1, 22, 'Beltr�n'),
(1, 22, 'Brea Pozo'),
(1, 22, 'Campo Gallo'),
(1, 22, 'Clodomira'),
(1, 22, 'Colonia Dora'),
(1, 22, 'El Hoyo'),
(1, 22, 'El Simbolar'),
(1, 22, 'Fern�ndez'),
(1, 22, 'Fr�as'),
(1, 22, 'Garza'),
(1, 22, 'Herrera'),
(1, 22, 'La Banda'),
(1, 22, 'La Ca�ada'),
(1, 22, 'Los Jur�es'),
(1, 22, 'Los Telares'),
(1, 22, 'Monte Quemado Airport'),
(1, 22, 'Nueva Esperanza'),
(1, 22, 'Pampa de los Guanacos'),
(1, 22, 'Pozo Hondo'),
(1, 22, 'Quimil�'),
(1, 22, 'San Pedro'),
(1, 22, 'Santiago del Estero'),
(1, 22, 'Selva'),
(1, 22, 'Sumampa'),
(1, 22, 'Suncho Corral'),
(1, 22, 'Termas de R�o Hondo'),
(1, 22, 'Tintina'),
(1, 22, 'Villa Atamisqui'),
(1, 22, 'Villa General Mitre'),
(1, 22, 'Villa Ojo de Agua'),
(1, 22, 'Villa Uni�n'),
(1, 23, 'R�o Grande'),
(1, 23, 'Ushuaia'),
(1, 24, 'Aguilares'),
(1, 24, 'Alderetes'),
(1, 24, 'Banda del R�o Sal�'),
(1, 24, 'Bella Vista'),
(1, 24, 'Burruyac�'),
(1, 24, 'Concepci�n'),
(1, 24, 'Famaill�'),
(1, 24, 'Graneros'),
(1, 24, 'La Cocha'),
(1, 24, 'Monteros'),
(1, 24, 'San Isidro de Lules'),
(1, 24, 'San Miguel de Tucum�n'),
(1, 24, 'Simoca'),
(1, 24, 'Taf� del Valle'),
(1, 24, 'Taf� Viejo'),
(1, 24, 'Trancas'),
(1, 24, 'Yerba Buena')

select * from localidad
GO

-- TIPO EMPLEADOS ---------------------------------------------------------------------------------------
INSERT INTO tipo_empleado
VALUES 
	('Vendedora'),
	('Limipieza'),
	('Seguridad'),
	('Guia');

GO
-- EMPLEADOS --------------------------------------------------------------------------------------------
INSERT INTO empleado
VALUES 
(38747220, 'Facundo Daniel', 'Garcia', '3382-876667', 'facu_d_garcia@outlook.com', '1995-02-23', 1, 'Av. Teniente Iba�ez 1640'),
(41338816, 'Erica Belen', 'De la Cruz', '3794-444333', 'delacruzq22@outlook.com', '1997-12-30', 1, 'San Martin 912'),
(41625025, 'Sabrina Agustina', 'Ferreyra', '3794-221221', 'sabrinita_324222@outlook.com', '1998-10-20', 1, 'Av. Armenia 1999'),
(40518135, 'Laura Betiana', 'Lopez', '2271-332433', 'laurabetianalopez@gmail.com', '1992-05-03', 2, 'Rivadavia 5112'),
(42213060, 'Brian Emanuel', 'Montoya', '3623-440009', 'Montoya-brian12211@outlook.com', '1999-04-26', 3,'Av. Libertad 5411'),
(28854286, 'Ana Marisol', 'Quevedo', '3794-443324', 'Anymar-q342@outlook.com', '1981-07-11', 4, 'Castro Barros 5281')
SELECT * FROM empleado;

GO

-- FORMAS DE PAGO ---------------------------------------------------------------------------------------
INSERT INTO opciones_pago 
VALUES
	   ('Efectivo'),
	   ('Mercado Pago'),
	   ('Tarjeta Credito'),
	   ('Transferencia')
SELECT * FROM opciones_pago


-- CLIENTES --------------------------------------------------------------------------------------------
INSERT INTO cliente 
VALUES 
(40876821, 'Lucas Ivan', 'Parodi', '3794-409720', 'lucasparodi09@outlook.com', '1998-01-04'),
(45121154, 'Sebastian Alejandro', 'Mansuti', '3794-224878', 'alejandromansuti@gmail.com', '1999-09-30'),
(27215547, 'Laura Sofia', 'Gonzales', '3795-298874', 'lauragonzales@gmail.com', '2000-06-15'),
(31455789, 'Miguel Juan', 'Martinez', '3624-542116', 'miguelJMartinez@outlook.com', '1978-03-03'),
(39455146, 'Soraya Elina', 'Facian', '3794-551235', 'SoryFac@gmail.com', '2002-10-31'),
(42048987, 'Matias Mauricio', 'Castillo', '5984-515865', 'tbeck@optonline.net', '1999-06-12'),
(42217764, 'Natali Solange', 'Acu�a', '3777-438767', 'natysolang543@gmail.com', '1999-10-19'),
(39073054, 'Sergio Edgardo', 'Altamirano', '3795-125433', 'sergioEdgA@hotmail.com', '1993-11-07'),
(25794136, 'Marisa Roxana', 'Carrizo', '3794-430089', 'Mroxanacarrizo@outlook.com', '1977-01-13'),
(42385463, 'Nahuel Agustin', 'Fuentes', '3794-000122', 'Nahu232423@outlook.com', '2000-02-16'),
(32926356, 'Valeria Agostina', 'Diaz', '3624-343443', 'valen2022@gmail.com', '1987-04-25'),
(40750779, 'Cristian David', 'Gomez', '3382-456656', 'cristiandavidG@hotmail.com', '1997-11-10'),
(52146487, 'Silvina Maria', 'Rojas', '3794-187745', 'silviMRojas@hotmail.com', '2005-11-30')
SELECT * FROM cliente;
GO

-- TIPO TERMINAL ---------------------------------------------------------------------------------------
INSERT INTO tipo_terminal
VALUES 
('Local'),
('Iternacional'),
('Nacional'),
('Provincial')
SELECT * FROM tipo_terminal

GO

-- DESTINO ---------------------------------------------------------------------------------------------
INSERT INTO destino
VALUES
(1, 7, 415, 5000.00, 'No llega')
SELECT * FROM destino;



-- DIRECCION --------------------------------------------------------------------------------------------
--INSERT INTO direccion
--VALUES 
--(1, 1, 1, '9 de Julio', 5221, NULL, NULL),
--(1, 7, 420, 'Sanchez de Bustamante', 5597, NULL, NULL),
--(1, 7, 220, 'Av. Maipu', 7200, NULL, NULL),
--(1, 7, 420, 'Av. Colon', 900, NULL, NULL),
--(1, 7, 420, '9 de Julio', 955, 'Murano IV', '2-B'),
--(1, 7, 415, '25 de Mayo', 2501, NULL, NULL),
--(1, 7, 415, 'Av. San Martin', 755, NULL, NULL),
--(1, 7, 415, 'Ruta Nacional N� 12', 51, NULL, NULL),
--(1, 7, 452, 'San Francisco de Ost', 0000, NULL, NULL),
--(1, 4, 213, 'Estados Unidos', 5111, NULL, NULL)
--SELECT * FROM direccion;
--select * from localidad where localidad = 'Corrientes'

--GO

-- EMPRESA -----------------------------------------------------------------------------------------------
INSERT INTO empresa
VALUES
('Rapido Bus', 'rapidoBus@gmail.com', '321SD122', '3794-407920', 'Sanchez de Bustamante 5310'),
('Santa Rosada', 'santaRosadaBus@hotmail.com', '778EX124', '3795-293342', 'Ruta 12 Km 1521'),
('Transportes Martinez', 'transMartines@gmail.com', '421XE511', '3624-454445','Ruta Provincial N�27 Km 48')
SELECT * FROM empresa;

GO

-- TERMINAL --------------------------------------------------------------------------------------------
INSERT INTO terminal
VALUES
(2,'Terminal de Ombibus Corrientes', 17, '3749-554211', 'terminalCorrientes@gmail.com', 'Av. Maipu 5200'),
(3,'Terminal de Ombibus Bella Vista - Corrientes', 7, '3777-422154', 'terminalBellaVista@gmail.com', 'Ruta Provincial N� 27 Km 47')
SELECT * FROM terminal;

GO

-- CHOFER ------------------------------------------------------------------------------------------------
INSERT INTO chofer
VALUES 
(28556978, 1, 'Mauro Leandro', 'Morales', '3795-421135', 'mauromorales@gmail.com', '1980-12-25', '2-B', 'Av. Sarmiento 1223'),
(32547152, 1, 'Miguel Juan', 'Gomez', '3777-542211', 'miguelGonzales@gmail.com', '1975-07-13','2-B', 'Peru 451'),
(30488397, 1, 'Luciano Ezequiel', 'Falcon', '3795-189633', 'lucianoFalcon@hotmail.com', '1979-06-01','D-2', 'Av. Costanera 120'),
(30998755, 1, 'Marcos Alejandro', 'Rodriguez', '3777-235123', 'marcosAlejandro@gmail.com', '1979-06-23', 'D-2', 'Av. Raul Alfonzin 5221'),
(39510002, 2, 'Antonio Ricardo', 'Salvedo', '3794-550111', 'AntonioS@outlook.com', '1997-12-08','D-2.2', 'Sarmiento 570'),
(40662412, 2, 'Ivan Javier', 'Acevedo', '3794-884133', 'ivanJAcevedo@gmail.com', '1998-03-10', 'D-2.2', 'San Juan 1646'),
(20554123, 3, 'Valentin Denis', 'Zambrana', '3777-445551', 'valentinZam@gmail.com', '1972-05-09', 'G-1.1', 'Av. Kokito 54')
SELECT * FROM chofer;


-- COLECTIVO -------------------------------------------------------------------------------------------
INSERT INTO colectivo
VALUES 
(1, 330, 'AB-122-DC', 59, 'FULL CLIMATIZADO'),
(1, 140, 'MPD-233', 37, 'AIRE ACONDICIONADO - CAMA'),
(1, 400, 'AC-233-XI', 47, 'AIRE ACONDICIONADO - CAMA'),
(1, 380, 'AC-200-BC', 47, 'AIRE ACONDICIONADO - CAMA'),
(2, 5400, 'AA-201-AA', 48, 'AIRE ACONDICIONADO - CAMA'),
(2, 7100, 'NTX-455', 48, 'AIRE ACONDICIONADO - CAMA'),
(2, 7300, 'AB-010-DC', 47, 'AIRE ACONDICIONADO - CAMA'),
(3, 140, 'MPD-577', 29, 'SEMI-CAMA'),
(3, 80, 'NQL-855', 31, 'SEMI-CAMA')
SELECT * FROM colectivo;

-- PASAJE ----------------------------------------------------------------------------------------------
INSERT INTO pasaje
VALUES 
(1, 1, 1, 1, 330, 40876821, 38747220, GETDATE(), '2022-10-25', 12, 5000.55) 
SELECT * FROM pasaje;


-- numero colectivos 
INSERT INTO asientos
VALUES 
(1, '2022-10-30', 330, 1),
(1, '2022-10-31', 330, 1),
(1, '2022-11-01', 5400, 2)
SELECT * FROM asientos;