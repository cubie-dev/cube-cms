DROP TABLE IF EXISTS `achievements`;
CREATE TABLE IF NOT EXISTS `achievements` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACH_',
    `category` enum('identity','explore','music','social','games','room_builder','pets','tools','events') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'identity',
    `level` int(11) NOT NULL DEFAULT 1,
    `reward_amount` int(11) NOT NULL DEFAULT 100,
    `reward_type` int(2) NOT NULL DEFAULT 0,
    `points` int(11) DEFAULT 10,
    `progress_needed` int(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`name`,`level`) USING BTREE,
    UNIQUE KEY `id` (`id`) USING BTREE
    ) ENGINE=MyISAM AUTO_INCREMENT=2759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `achievements` (`id`, `name`, `category`, `level`, `reward_amount`, `reward_type`, `points`, `progress_needed`) VALUES
	(467, 'AvatarLooks', 'identity', 1, 5, 0, 5, 1),
	(469, 'RoomEntry', 'explore', 1, 5, 0, 5, 5),
	(470, 'RoomEntry', 'explore', 2, 10, 0, 5, 20),
	(471, 'RoomEntry', 'explore', 3, 15, 0, 10, 50),
	(472, 'RoomEntry', 'explore', 4, 20, 0, 15, 100),
	(473, 'RoomEntry', 'explore', 5, 25, 0, 20, 160),
	(474, 'RoomEntry', 'explore', 6, 30, 0, 25, 240),
	(475, 'RoomEntry', 'explore', 7, 35, 0, 30, 360),
	(476, 'RoomEntry', 'explore', 8, 40, 0, 35, 500),
	(477, 'RoomEntry', 'explore', 9, 45, 0, 40, 660),
	(478, 'RoomEntry', 'explore', 10, 50, 0, 45, 2400),
	(479, 'Motto', 'identity', 1, 5, 0, 5, 1),
	(480, 'HappyHour', 'identity', 1, 5, 0, 5, 1),
	(481, 'RegistrationDuration', 'identity', 1, 5, 0, 5, 1),
	(482, 'RegistrationDuration', 'identity', 2, 10, 0, 10, 3),
	(483, 'RegistrationDuration', 'identity', 3, 15, 0, 15, 10),
	(484, 'RegistrationDuration', 'identity', 4, 20, 0, 20, 20),
	(485, 'RegistrationDuration', 'identity', 5, 25, 0, 25, 30),
	(486, 'RegistrationDuration', 'identity', 6, 30, 0, 30, 56),
	(487, 'RegistrationDuration', 'identity', 7, 35, 0, 35, 84),
	(488, 'RegistrationDuration', 'identity', 8, 40, 0, 40, 112),
	(489, 'RegistrationDuration', 'identity', 9, 45, 0, 45, 168),
	(490, 'RegistrationDuration', 'identity', 10, 50, 0, 50, 224),
	(506, 'RespectEarned', 'social', 1, 5, 0, 0, 1),
	(507, 'RespectEarned', 'social', 2, 10, 0, 5, 6),
	(508, 'RespectEarned', 'social', 3, 15, 0, 10, 16),
	(509, 'RespectEarned', 'social', 4, 20, 0, 15, 66),
	(510, 'RespectEarned', 'social', 5, 25, 0, 20, 166),
	(511, 'RespectEarned', 'social', 6, 30, 0, 25, 366),
	(512, 'RespectEarned', 'social', 7, 35, 0, 30, 566),
	(513, 'RespectEarned', 'social', 8, 40, 0, 35, 766),
	(514, 'RespectEarned', 'social', 9, 45, 0, 40, 966),
	(515, 'RespectEarned', 'social', 10, 50, 0, 45, 4660),
	(517, 'AllTimeHotelPresence', 'identity', 1, 5, 0, 0, 30),
	(518, 'AllTimeHotelPresence', 'identity', 2, 10, 0, 5, 60),
	(519, 'AllTimeHotelPresence', 'identity', 3, 15, 0, 10, 360),
	(520, 'AllTimeHotelPresence', 'identity', 4, 20, 0, 15, 980),
	(521, 'AllTimeHotelPresence', 'identity', 5, 25, 0, 20, 4560),
	(522, 'AllTimeHotelPresence', 'identity', 6, 30, 0, 25, 13200),
	(523, 'AllTimeHotelPresence', 'identity', 7, 35, 0, 30, 30480),
	(524, 'AllTimeHotelPresence', 'identity', 8, 40, 0, 35, 65040),
	(525, 'AllTimeHotelPresence', 'identity', 9, 45, 0, 40, 134160),
	(526, 'AllTimeHotelPresence', 'identity', 10, 50, 0, 45, 872400),
	(527, 'RespectGiven', 'social', 1, 5, 0, 0, 2),
	(528, 'TraderPass', 'identity', 1, 5, 0, 0, 1),
	(529, 'PetLover', 'pets', 1, 5, 0, 0, 1),
	(530, 'PetLover', 'pets', 2, 10, 0, 5, 3),
	(531, 'PetLover', 'pets', 3, 15, 0, 10, 5),
	(532, 'PetLover', 'pets', 4, 20, 0, 15, 10),
	(533, 'PetLover', 'pets', 5, 25, 0, 20, 15),
	(534, 'PetLover', 'pets', 6, 30, 0, 25, 25),
	(535, 'PetLover', 'pets', 7, 35, 0, 30, 35),
	(536, 'PetLover', 'pets', 8, 40, 0, 35, 45),
	(537, 'PetLover', 'pets', 9, 45, 0, 40, 60),
	(538, 'PetLover', 'pets', 10, 50, 0, 45, 75),
	(559, 'PetLevelUp', 'pets', 1, 5, 0, 0, 2),
	(560, 'PetLevelUp', 'pets', 2, 10, 0, 5, 5),
	(561, 'PetLevelUp', 'pets', 3, 15, 0, 10, 10),
	(562, 'PetLevelUp', 'pets', 4, 20, 0, 15, 20),
	(563, 'PetLevelUp', 'pets', 5, 25, 0, 20, 30),
	(564, 'PetLevelUp', 'pets', 6, 30, 0, 25, 50),
	(565, 'PetLevelUp', 'pets', 7, 35, 0, 30, 80),
	(566, 'PetLevelUp', 'pets', 8, 40, 0, 35, 130),
	(567, 'PetLevelUp', 'pets', 9, 45, 0, 40, 200),
	(568, 'PetLevelUp', 'pets', 10, 50, 0, 45, 320),
	(569, 'PetRespectReceiver', 'pets', 1, 5, 0, 0, 3),
	(570, 'PetRespectReceiver', 'pets', 2, 10, 0, 5, 10),
	(571, 'PetRespectReceiver', 'pets', 3, 15, 0, 10, 20),
	(572, 'PetRespectReceiver', 'pets', 4, 20, 0, 15, 40),
	(573, 'PetRespectReceiver', 'pets', 5, 25, 0, 20, 70),
	(574, 'PetRespectReceiver', 'pets', 6, 30, 0, 25, 120),
	(575, 'PetRespectReceiver', 'pets', 7, 35, 0, 30, 200),
	(576, 'PetRespectReceiver', 'pets', 8, 40, 0, 35, 300),
	(577, 'PetRespectReceiver', 'pets', 9, 45, 0, 40, 500),
	(578, 'PetRespectReceiver', 'pets', 10, 50, 0, 45, 750),
	(579, 'PetRespectGiver', 'pets', 1, 5, 0, 0, 2),
	(580, 'PetRespectGiver', 'pets', 2, 10, 0, 5, 5),
	(581, 'PetRespectGiver', 'pets', 3, 15, 0, 10, 10),
	(582, 'PetRespectGiver', 'pets', 4, 20, 0, 15, 20),
	(583, 'PetRespectGiver', 'pets', 5, 25, 0, 20, 40),
	(584, 'PetRespectGiver', 'pets', 6, 30, 0, 25, 70),
	(585, 'PetRespectGiver', 'pets', 7, 35, 0, 30, 110),
	(586, 'PetRespectGiver', 'pets', 8, 40, 0, 35, 170),
	(587, 'PetRespectGiver', 'pets', 9, 45, 0, 40, 250),
	(588, 'PetRespectGiver', 'pets', 10, 50, 0, 45, 350),
	(589, 'GiftGiver', 'social', 1, 5, 0, 0, 1),
	(590, 'GiftGiver', 'social', 2, 10, 0, 5, 6),
	(591, 'GiftGiver', 'social', 3, 15, 0, 10, 14),
	(592, 'GiftGiver', 'social', 4, 20, 0, 15, 26),
	(593, 'GiftGiver', 'social', 5, 25, 0, 20, 46),
	(594, 'GiftGiver', 'social', 6, 30, 0, 25, 86),
	(595, 'GiftGiver', 'social', 7, 35, 0, 30, 146),
	(596, 'GiftGiver', 'social', 8, 40, 0, 35, 236),
	(597, 'GiftGiver', 'social', 9, 45, 0, 40, 366),
	(598, 'GiftGiver', 'social', 10, 50, 0, 45, 1566),
	(605, 'GiftReceiver', 'social', 1, 5, 0, 5, 1),
	(606, 'GiftReceiver', 'social', 2, 10, 0, 5, 6),
	(607, 'GiftReceiver', 'social', 3, 15, 0, 10, 14),
	(608, 'GiftReceiver', 'social', 4, 20, 0, 15, 26),
	(609, 'GiftReceiver', 'social', 5, 25, 0, 20, 46),
	(610, 'GiftReceiver', 'social', 6, 30, 0, 25, 86),
	(611, 'GiftReceiver', 'social', 7, 35, 0, 30, 146),
	(612, 'GiftReceiver', 'social', 8, 40, 0, 35, 236),
	(613, 'GiftReceiver', 'social', 9, 45, 0, 40, 366),
	(614, 'GiftReceiver', 'social', 10, 50, 0, 45, 1566),
	(660, 'BattleBallTilesLocked', 'games', 1, 5, 0, 5, 25),
	(661, 'BattleBallTilesLocked', 'games', 2, 10, 0, 5, 65),
	(662, 'BattleBallTilesLocked', 'games', 3, 15, 0, 10, 125),
	(663, 'BattleBallTilesLocked', 'games', 4, 20, 0, 15, 205),
	(664, 'BattleBallTilesLocked', 'games', 5, 25, 0, 20, 335),
	(665, 'BattleBallTilesLocked', 'games', 6, 30, 0, 25, 525),
	(666, 'BattleBallTilesLocked', 'games', 7, 35, 0, 30, 805),
	(667, 'BattleBallTilesLocked', 'games', 8, 40, 0, 35, 1235),
	(668, 'BattleBallTilesLocked', 'games', 9, 45, 0, 40, 1875),
	(669, 'BattleBallTilesLocked', 'games', 10, 50, 0, 45, 2875),
	(670, 'BattleBallTilesLocked', 'games', 11, 55, 0, 50, 4375),
	(671, 'BattleBallTilesLocked', 'games', 12, 60, 0, 55, 6875),
	(672, 'BattleBallTilesLocked', 'games', 13, 65, 0, 60, 10775),
	(673, 'BattleBallTilesLocked', 'games', 14, 70, 0, 65, 17075),
	(674, 'BattleBallTilesLocked', 'games', 15, 75, 0, 70, 27175),
	(675, 'BattleBallTilesLocked', 'games', 16, 80, 0, 75, 43275),
	(676, 'BattleBallTilesLocked', 'games', 17, 85, 0, 80, 69075),
	(677, 'BattleBallTilesLocked', 'games', 18, 90, 0, 85, 110375),
	(678, 'BattleBallTilesLocked', 'games', 19, 95, 0, 90, 176375),
	(679, 'BattleBallTilesLocked', 'games', 20, 100, 0, 95, 482075),
	(720, 'EsA', 'games', 1, 5, 0, 0, 2),
	(721, 'EsA', 'games', 2, 10, 0, 5, 5),
	(722, 'EsA', 'games', 3, 15, 0, 10, 10),
	(723, 'EsA', 'games', 4, 20, 0, 15, 18),
	(724, 'EsA', 'games', 5, 25, 0, 20, 30),
	(725, 'EsA', 'games', 6, 30, 0, 25, 50),
	(726, 'EsA', 'games', 7, 35, 0, 30, 80),
	(727, 'EsA', 'games', 8, 40, 0, 35, 125),
	(728, 'EsA', 'games', 9, 45, 0, 40, 200),
	(729, 'EsA', 'games', 10, 50, 0, 45, 300),
	(730, 'EsA', 'games', 11, 55, 0, 50, 420),
	(731, 'EsA', 'games', 12, 60, 0, 55, 600),
	(732, 'EsA', 'games', 13, 65, 0, 60, 900),
	(733, 'EsA', 'games', 14, 70, 0, 65, 1500),
	(734, 'EsA', 'games', 15, 75, 0, 70, 2500),
	(735, 'EsA', 'games', 16, 80, 0, 75, 3700),
	(736, 'EsA', 'games', 17, 85, 0, 80, 5400),
	(737, 'EsA', 'games', 18, 90, 0, 85, 8000),
	(738, 'EsA', 'games', 19, 95, 0, 90, 12000),
	(739, 'EsA', 'games', 20, 100, 0, 95, 200000),
	(740, 'Spr', 'room_builder', 1, 5, 0, 5, 1),
	(741, 'Spr', 'room_builder', 2, 10, 0, 5, 3),
	(742, 'Spr', 'room_builder', 3, 15, 0, 10, 6),
	(743, 'Spr', 'room_builder', 4, 20, 0, 15, 10),
	(744, 'Spr', 'room_builder', 5, 25, 0, 20, 15),
	(745, 'Spr', 'room_builder', 6, 30, 0, 25, 21),
	(746, 'Spr', 'room_builder', 7, 35, 0, 30, 28),
	(747, 'Spr', 'room_builder', 8, 40, 0, 35, 36),
	(748, 'Spr', 'room_builder', 9, 45, 0, 40, 45),
	(749, 'Spr', 'room_builder', 10, 50, 0, 45, 550),
	(860, 'RoomDecoFurniCount', 'room_builder', 1, 5, 0, 5, 150),
	(861, 'RoomDecoFurniCount', 'room_builder', 2, 10, 0, 5, 200),
	(862, 'RoomDecoFurniCount', 'room_builder', 3, 15, 0, 10, 250),
	(863, 'RoomDecoFurniCount', 'room_builder', 4, 20, 0, 15, 300),
	(864, 'RoomDecoFurniCount', 'room_builder', 5, 25, 0, 20, 350),
	(865, 'RoomDecoFurniCount', 'room_builder', 6, 30, 0, 25, 450),
	(866, 'RoomDecoFurniCount', 'room_builder', 7, 35, 0, 30, 550),
	(867, 'RoomDecoFurniCount', 'room_builder', 8, 40, 0, 35, 650),
	(868, 'RoomDecoFurniCount', 'room_builder', 9, 45, 0, 40, 800),
	(869, 'RoomDecoFurniCount', 'room_builder', 10, 50, 0, 45, 950),
	(870, 'RoomDecoFurniCount', 'room_builder', 11, 55, 0, 50, 1100),
	(871, 'RoomDecoFurniCount', 'room_builder', 12, 60, 0, 55, 1300),
	(872, 'RoomDecoFurniCount', 'room_builder', 13, 65, 0, 60, 1500),
	(873, 'RoomDecoFurniCount', 'room_builder', 14, 70, 0, 65, 1700),
	(874, 'RoomDecoFurniCount', 'room_builder', 15, 75, 0, 70, 2000),
	(875, 'RoomDecoFurniCount', 'room_builder', 16, 80, 0, 75, 2300),
	(876, 'RoomDecoFurniCount', 'room_builder', 17, 85, 0, 80, 2700),
	(877, 'RoomDecoFurniCount', 'room_builder', 18, 90, 0, 85, 3100),
	(878, 'RoomDecoFurniCount', 'room_builder', 19, 95, 0, 90, 3600),
	(879, 'RoomDecoFurniCount', 'room_builder', 20, 100, 0, 95, 100000),
	(900, 'RoomDecoWallpaper', 'room_builder', 1, 5, 0, 5, 3),
	(901, 'RoomDecoWallpaper', 'room_builder', 2, 10, 0, 5, 5),
	(902, 'RoomDecoWallpaper', 'room_builder', 3, 15, 0, 10, 7),
	(903, 'RoomDecoWallpaper', 'room_builder', 4, 20, 0, 15, 12),
	(904, 'RoomDecoWallpaper', 'room_builder', 5, 25, 0, 20, 17),
	(905, 'RoomDecoWallpaper', 'room_builder', 6, 30, 0, 25, 22),
	(906, 'RoomDecoWallpaper', 'room_builder', 7, 35, 0, 30, 27),
	(907, 'RoomDecoWallpaper', 'room_builder', 8, 40, 0, 35, 32),
	(908, 'RoomDecoWallpaper', 'room_builder', 9, 45, 0, 40, 37),
	(909, 'RoomDecoWallpaper', 'room_builder', 10, 50, 0, 45, 47),
	(910, 'RoomDecoWallpaper', 'room_builder', 11, 55, 0, 50, 57),
	(911, 'RoomDecoWallpaper', 'room_builder', 12, 60, 0, 55, 67),
	(912, 'RoomDecoWallpaper', 'room_builder', 13, 65, 0, 60, 77),
	(913, 'RoomDecoWallpaper', 'room_builder', 14, 70, 0, 65, 97),
	(914, 'RoomDecoWallpaper', 'room_builder', 15, 75, 0, 70, 117),
	(915, 'RoomDecoWallpaper', 'room_builder', 16, 80, 0, 75, 137),
	(916, 'RoomDecoWallpaper', 'room_builder', 17, 85, 0, 80, 167),
	(917, 'RoomDecoWallpaper', 'room_builder', 18, 90, 0, 85, 197),
	(918, 'RoomDecoWallpaper', 'room_builder', 19, 95, 0, 90, 237),
	(919, 'RoomDecoWallpaper', 'room_builder', 20, 100, 0, 95, 2870),
	(920, 'RoomDecoLandscape', 'room_builder', 1, 5, 0, 5, 3),
	(921, 'RoomDecoLandscape', 'room_builder', 2, 10, 0, 5, 5),
	(922, 'RoomDecoLandscape', 'room_builder', 3, 15, 0, 10, 7),
	(923, 'RoomDecoLandscape', 'room_builder', 4, 20, 0, 15, 12),
	(924, 'RoomDecoLandscape', 'room_builder', 5, 25, 0, 20, 17),
	(925, 'RoomDecoLandscape', 'room_builder', 6, 30, 0, 25, 22),
	(926, 'RoomDecoLandscape', 'room_builder', 7, 35, 0, 30, 27),
	(927, 'RoomDecoLandscape', 'room_builder', 8, 40, 0, 35, 32),
	(928, 'RoomDecoLandscape', 'room_builder', 9, 45, 0, 40, 37),
	(929, 'RoomDecoLandscape', 'room_builder', 10, 50, 0, 45, 47),
	(930, 'RoomDecoLandscape', 'room_builder', 11, 55, 0, 50, 57),
	(931, 'RoomDecoLandscape', 'room_builder', 12, 60, 0, 55, 67),
	(932, 'RoomDecoLandscape', 'room_builder', 13, 65, 0, 60, 77),
	(933, 'RoomDecoLandscape', 'room_builder', 14, 70, 0, 65, 97),
	(934, 'RoomDecoLandscape', 'room_builder', 15, 75, 0, 70, 117),
	(935, 'RoomDecoLandscape', 'room_builder', 16, 80, 0, 75, 137),
	(936, 'RoomDecoLandscape', 'room_builder', 17, 85, 0, 80, 167),
	(937, 'RoomDecoLandscape', 'room_builder', 18, 90, 0, 85, 197),
	(938, 'RoomDecoLandscape', 'room_builder', 19, 95, 0, 90, 237),
	(939, 'RoomDecoLandscape', 'room_builder', 20, 100, 0, 95, 2870),
	(940, 'RoomDecoFloor', 'room_builder', 1, 5, 0, 5, 3),
	(941, 'RoomDecoFloor', 'room_builder', 2, 10, 0, 5, 5),
	(942, 'RoomDecoFloor', 'room_builder', 3, 15, 0, 10, 7),
	(943, 'RoomDecoFloor', 'room_builder', 4, 20, 0, 15, 12),
	(944, 'RoomDecoFloor', 'room_builder', 5, 25, 0, 20, 17),
	(945, 'RoomDecoFloor', 'room_builder', 6, 30, 0, 25, 22),
	(946, 'RoomDecoFloor', 'room_builder', 7, 35, 0, 30, 27),
	(947, 'RoomDecoFloor', 'room_builder', 8, 40, 0, 35, 32),
	(948, 'RoomDecoFloor', 'room_builder', 9, 45, 0, 40, 37),
	(949, 'RoomDecoFloor', 'room_builder', 10, 50, 0, 45, 47),
	(950, 'RoomDecoFloor', 'room_builder', 11, 55, 0, 50, 57),
	(951, 'RoomDecoFloor', 'room_builder', 12, 60, 0, 55, 67),
	(952, 'RoomDecoFloor', 'room_builder', 13, 65, 0, 60, 77),
	(953, 'RoomDecoFloor', 'room_builder', 14, 70, 0, 65, 97),
	(954, 'RoomDecoFloor', 'room_builder', 15, 75, 0, 70, 117),
	(955, 'RoomDecoFloor', 'room_builder', 16, 80, 0, 75, 137),
	(956, 'RoomDecoFloor', 'room_builder', 17, 85, 0, 80, 167),
	(957, 'RoomDecoFloor', 'room_builder', 18, 90, 0, 85, 197),
	(958, 'RoomDecoFloor', 'room_builder', 19, 95, 0, 90, 237),
	(959, 'RoomDecoFloor', 'room_builder', 20, 100, 0, 95, 2870),
	(1120, 'BattleBallPlayer', 'games', 1, 5, 0, 5, 50),
	(1121, 'BattleBallPlayer', 'games', 2, 10, 0, 5, 125),
	(1122, 'BattleBallPlayer', 'games', 3, 15, 0, 10, 240),
	(1123, 'BattleBallPlayer', 'games', 4, 20, 0, 15, 410),
	(1124, 'BattleBallPlayer', 'games', 5, 25, 0, 20, 665),
	(1125, 'BattleBallPlayer', 'games', 6, 30, 0, 25, 1045),
	(1126, 'BattleBallPlayer', 'games', 7, 35, 0, 30, 1615),
	(1127, 'BattleBallPlayer', 'games', 8, 40, 0, 35, 2465),
	(1128, 'BattleBallPlayer', 'games', 9, 45, 0, 40, 3765),
	(1129, 'BattleBallPlayer', 'games', 10, 50, 0, 45, 6215),
	(1130, 'BattleBallPlayer', 'games', 11, 55, 0, 50, 10865),
	(1131, 'BattleBallPlayer', 'games', 12, 60, 0, 55, 19665),
	(1132, 'BattleBallPlayer', 'games', 13, 65, 0, 60, 36365),
	(1133, 'BattleBallPlayer', 'games', 14, 70, 0, 65, 68115),
	(1134, 'BattleBallPlayer', 'games', 15, 75, 0, 70, 128415),
	(1135, 'BattleBallPlayer', 'games', 16, 80, 0, 75, 242965),
	(1136, 'BattleBallPlayer', 'games', 17, 85, 0, 80, 460615),
	(1137, 'BattleBallPlayer', 'games', 18, 90, 0, 85, 874115),
	(1138, 'BattleBallPlayer', 'games', 19, 95, 0, 90, 1659765),
	(1139, 'BattleBallPlayer', 'games', 20, 100, 0, 95, 3152515),
	(1140, 'FreezeWinner', 'games', 1, 5, 0, 5, 50),
	(1141, 'FreezeWinner', 'games', 2, 10, 0, 5, 125),
	(1142, 'FreezeWinner', 'games', 3, 15, 0, 10, 240),
	(1143, 'FreezeWinner', 'games', 4, 20, 0, 15, 410),
	(1144, 'FreezeWinner', 'games', 5, 25, 0, 20, 665),
	(1145, 'FreezeWinner', 'games', 6, 30, 0, 25, 1045),
	(1146, 'FreezeWinner', 'games', 7, 35, 0, 30, 1615),
	(1147, 'FreezeWinner', 'games', 8, 40, 0, 35, 2465),
	(1148, 'FreezeWinner', 'games', 9, 45, 0, 40, 3765),
	(1149, 'FreezeWinner', 'games', 10, 50, 0, 45, 6215),
	(1150, 'FreezeWinner', 'games', 11, 55, 0, 50, 10865),
	(1151, 'FreezeWinner', 'games', 12, 60, 0, 55, 19665),
	(1152, 'FreezeWinner', 'games', 13, 65, 0, 60, 36365),
	(1153, 'FreezeWinner', 'games', 14, 70, 0, 65, 68115),
	(1154, 'FreezeWinner', 'games', 15, 75, 0, 70, 128415),
	(1155, 'FreezeWinner', 'games', 16, 80, 0, 75, 242965),
	(1156, 'FreezeWinner', 'games', 17, 85, 0, 80, 460615),
	(1157, 'FreezeWinner', 'games', 18, 90, 0, 85, 874115),
	(1158, 'FreezeWinner', 'games', 19, 95, 0, 90, 1659765),
	(1159, 'FreezeWinner', 'games', 20, 100, 0, 95, 3152515),
	(1160, 'FreezePlayer', 'games', 1, 5, 0, 5, 50),
	(1161, 'FreezePlayer', 'games', 2, 10, 0, 5, 125),
	(1162, 'FreezePlayer', 'games', 3, 15, 0, 10, 240),
	(1163, 'FreezePlayer', 'games', 4, 20, 0, 15, 410),
	(1164, 'FreezePlayer', 'games', 5, 25, 0, 20, 665),
	(1165, 'FreezePlayer', 'games', 6, 30, 0, 25, 1045),
	(1166, 'FreezePlayer', 'games', 7, 35, 0, 30, 1615),
	(1167, 'FreezePlayer', 'games', 8, 40, 0, 35, 2465),
	(1168, 'FreezePlayer', 'games', 9, 45, 0, 40, 3765),
	(1169, 'FreezePlayer', 'games', 10, 50, 0, 45, 6215),
	(1170, 'FreezePlayer', 'games', 11, 55, 0, 50, 10865),
	(1171, 'FreezePlayer', 'games', 12, 60, 0, 55, 19665),
	(1172, 'FreezePlayer', 'games', 13, 65, 0, 60, 36365),
	(1173, 'FreezePlayer', 'games', 14, 70, 0, 65, 68115),
	(1174, 'FreezePlayer', 'games', 15, 75, 0, 70, 128415),
	(1175, 'FreezePlayer', 'games', 16, 80, 0, 75, 242965),
	(1176, 'FreezePlayer', 'games', 17, 85, 0, 80, 460615),
	(1177, 'FreezePlayer', 'games', 18, 90, 0, 85, 874115),
	(1178, 'FreezePlayer', 'games', 19, 95, 0, 90, 1659765),
	(1179, 'FreezePlayer', 'games', 20, 100, 0, 95, 8152515),
	(1180, 'FreezePowerUp', 'games', 1, 5, 0, 0, 1),
	(1181, 'FreezePowerUp', 'games', 2, 10, 0, 5, 3),
	(1182, 'FreezePowerUp', 'games', 3, 15, 0, 10, 6),
	(1183, 'FreezePowerUp', 'games', 4, 20, 0, 15, 10),
	(1184, 'FreezePowerUp', 'games', 5, 25, 0, 20, 15),
	(1185, 'FreezePowerUp', 'games', 6, 30, 0, 25, 21),
	(1186, 'FreezePowerUp', 'games', 7, 35, 0, 30, 29),
	(1187, 'FreezePowerUp', 'games', 8, 40, 0, 35, 39),
	(1188, 'FreezePowerUp', 'games', 9, 45, 0, 40, 52),
	(1189, 'FreezePowerUp', 'games', 10, 50, 0, 45, 68),
	(1190, 'FreezePowerUp', 'games', 11, 55, 0, 50, 88),
	(1191, 'FreezePowerUp', 'games', 12, 60, 0, 55, 112),
	(1192, 'FreezePowerUp', 'games', 13, 65, 0, 60, 141),
	(1193, 'FreezePowerUp', 'games', 14, 70, 0, 65, 176),
	(1194, 'FreezePowerUp', 'games', 15, 75, 0, 70, 221),
	(1195, 'FreezePowerUp', 'games', 16, 80, 0, 75, 281),
	(1196, 'FreezePowerUp', 'games', 17, 85, 0, 80, 361),
	(1197, 'FreezePowerUp', 'games', 18, 90, 0, 85, 481),
	(1198, 'FreezePowerUp', 'games', 19, 95, 0, 90, 661),
	(1199, 'FreezePowerUp', 'games', 20, 100, 0, 95, 961),
	(1200, 'BattleBallQuestCompleted', 'games', 1, 5, 0, 0, 3),
	(1201, 'BattleBallQuestCompleted', 'games', 2, 10, 0, 5, 5),
	(1202, 'BattleBallQuestCompleted', 'games', 3, 15, 0, 10, 7),
	(1203, 'BattleBallQuestCompleted', 'games', 4, 20, 0, 15, 10),
	(1204, 'BattleBallQuestCompleted', 'games', 5, 25, 0, 20, 13),
	(1205, 'BattleBallQuestCompleted', 'games', 6, 30, 0, 25, 16),
	(1206, 'BattleBallQuestCompleted', 'games', 7, 35, 0, 30, 19),
	(1207, 'BattleBallQuestCompleted', 'games', 8, 40, 0, 35, 20),
	(1208, 'BattleBallQuestCompleted', 'games', 9, 45, 0, 40, 21),
	(1209, 'BattleBallQuestCompleted', 'games', 10, 50, 0, 45, 22),
	(1230, 'BattleBallWinner', 'games', 1, 5, 0, 0, 50),
	(1231, 'BattleBallWinner', 'games', 2, 10, 0, 5, 125),
	(1232, 'BattleBallWinner', 'games', 3, 15, 0, 10, 240),
	(1233, 'BattleBallWinner', 'games', 4, 20, 0, 15, 410),
	(1234, 'BattleBallWinner', 'games', 5, 25, 0, 20, 665),
	(1235, 'BattleBallWinner', 'games', 6, 30, 0, 25, 1045),
	(1236, 'BattleBallWinner', 'games', 7, 35, 0, 30, 1615),
	(1237, 'BattleBallWinner', 'games', 8, 40, 0, 35, 2465),
	(1238, 'BattleBallWinner', 'games', 9, 45, 0, 40, 3765),
	(1239, 'BattleBallWinner', 'games', 10, 50, 0, 45, 6215),
	(1240, 'BattleBallWinner', 'games', 11, 55, 0, 50, 10865),
	(1241, 'BattleBallWinner', 'games', 12, 60, 0, 55, 19665),
	(1242, 'BattleBallWinner', 'games', 13, 65, 0, 60, 36365),
	(1243, 'BattleBallWinner', 'games', 14, 70, 0, 65, 68115),
	(1244, 'BattleBallWinner', 'games', 15, 75, 0, 70, 128415),
	(1245, 'BattleBallWinner', 'games', 16, 80, 0, 75, 242965),
	(1246, 'BattleBallWinner', 'games', 17, 85, 0, 80, 460615),
	(1247, 'BattleBallWinner', 'games', 18, 90, 0, 85, 874115),
	(1248, 'BattleBallWinner', 'games', 19, 95, 0, 90, 1659765),
	(1249, 'BattleBallWinner', 'games', 20, 100, 0, 95, 3152515),
	(1250, 'RoomDecoHoleFurniCount', 'room_builder', 1, 5, 0, 0, 10),
	(1251, 'RoomDecoHoleFurniCount', 'room_builder', 2, 10, 0, 5, 20),
	(1252, 'RoomDecoHoleFurniCount', 'room_builder', 3, 15, 0, 10, 30),
	(1253, 'RoomDecoHoleFurniCount', 'room_builder', 4, 20, 0, 15, 45),
	(1254, 'RoomDecoHoleFurniCount', 'room_builder', 5, 25, 0, 20, 60),
	(1255, 'RoomDecoHoleFurniCount', 'room_builder', 6, 30, 0, 25, 80),
	(1256, 'RoomDecoHoleFurniCount', 'room_builder', 7, 35, 0, 30, 100),
	(1257, 'RoomDecoHoleFurniCount', 'room_builder', 8, 40, 0, 35, 125),
	(1258, 'RoomDecoHoleFurniCount', 'room_builder', 9, 45, 0, 40, 150),
	(1259, 'RoomDecoHoleFurniCount', 'room_builder', 10, 50, 0, 45, 170),
	(2744, 'Jogger', 'explore', 7, 70, 0, 70, 600),
	(2743, 'Jogger', 'explore', 6, 60, 0, 60, 240),
	(2742, 'Jogger', 'explore', 5, 50, 0, 50, 120),
	(2741, 'Jogger', 'explore', 4, 40, 0, 40, 60),
	(2740, 'Jogger', 'explore', 3, 30, 0, 30, 30),
	(2739, 'Jogger', 'explore', 2, 20, 0, 20, 10),
	(2738, 'Jogger', 'explore', 1, 10, 0, 10, 1),
	(2737, 'CrossTrainer', 'explore', 10, 100, 0, 100, 4800),
	(2736, 'CrossTrainer', 'explore', 9, 90, 0, 90, 2400),
	(2735, 'CrossTrainer', 'explore', 8, 80, 0, 80, 1200),
	(2734, 'CrossTrainer', 'explore', 7, 70, 0, 70, 600),
	(2733, 'CrossTrainer', 'explore', 6, 60, 0, 60, 240),
	(2732, 'CrossTrainer', 'explore', 5, 50, 0, 50, 120),
	(2731, 'CrossTrainer', 'explore', 4, 40, 0, 40, 60),
	(2730, 'CrossTrainer', 'explore', 3, 30, 0, 30, 30),
	(2729, 'CrossTrainer', 'explore', 2, 20, 0, 20, 10),
	(2728, 'CrossTrainer', 'explore', 1, 10, 0, 10, 1),
	(2727, 'Trampolinist', 'explore', 10, 100, 0, 100, 4800),
	(2726, 'Trampolinist', 'explore', 9, 90, 0, 90, 2400),
	(2725, 'Trampolinist', 'explore', 8, 80, 0, 80, 1200),
	(2724, 'Trampolinist', 'explore', 7, 70, 0, 70, 600),
	(2723, 'Trampolinist', 'explore', 6, 60, 0, 60, 240),
	(2722, 'Trampolinist', 'explore', 5, 50, 0, 50, 120),
	(2721, 'Trampolinist', 'explore', 4, 40, 0, 40, 60),
	(2720, 'Trampolinist', 'explore', 3, 30, 0, 30, 30),
	(2719, 'Trampolinist', 'explore', 2, 20, 0, 20, 10),
	(2718, 'Trampolinist', 'explore', 1, 10, 0, 10, 1),
	(2630, 'GnomeFeeding', 'pets', 10, 100, 0, 100, 10000),
	(2629, 'GnomeFeeding', 'pets', 9, 80, 0, 80, 8000),
	(2626, 'GnomeFeeding', 'pets', 6, 40, 0, 40, 1000),
	(2627, 'GnomeFeeding', 'pets', 7, 50, 0, 50, 2000),
	(2628, 'GnomeFeeding', 'pets', 8, 70, 0, 70, 4000),
	(1322, 'RoomEntry', 'explore', 11, 55, 0, 50, 1080),
	(1323, 'RoomEntry', 'explore', 12, 60, 0, 55, 1320),
	(1324, 'RoomEntry', 'explore', 13, 65, 0, 60, 1580),
	(1325, 'RoomEntry', 'explore', 14, 70, 0, 65, 1860),
	(1326, 'RoomEntry', 'explore', 15, 75, 0, 70, 2160),
	(1327, 'RoomEntry', 'explore', 16, 80, 0, 75, 2480),
	(1328, 'RoomEntry', 'explore', 17, 85, 0, 80, 2820),
	(1329, 'RoomEntry', 'explore', 18, 90, 0, 85, 3180),
	(1330, 'RoomEntry', 'explore', 19, 95, 0, 90, 3560),
	(1331, 'RoomEntry', 'explore', 20, 100, 0, 95, 39600),
	(1332, 'RegistrationDuration', 'identity', 11, 55, 0, 50, 280),
	(1333, 'RegistrationDuration', 'identity', 12, 60, 0, 55, 365),
	(1334, 'RegistrationDuration', 'identity', 13, 65, 0, 60, 548),
	(1335, 'RegistrationDuration', 'identity', 14, 70, 0, 65, 730),
	(1336, 'RegistrationDuration', 'identity', 15, 75, 0, 70, 913),
	(1337, 'RegistrationDuration', 'identity', 16, 80, 0, 75, 1095),
	(1338, 'RegistrationDuration', 'identity', 17, 85, 0, 80, 1278),
	(1339, 'RegistrationDuration', 'identity', 18, 90, 0, 85, 1460),
	(1340, 'RegistrationDuration', 'identity', 19, 95, 0, 90, 1643),
	(1341, 'RegistrationDuration', 'identity', 20, 100, 0, 95, 1825),
	(1342, 'AllTimeHotelPresence', 'identity', 11, 55, 0, 50, 7200),
	(1343, 'AllTimeHotelPresence', 'identity', 12, 60, 0, 55, 10080),
	(1344, 'AllTimeHotelPresence', 'identity', 13, 65, 0, 60, 20160),
	(1345, 'AllTimeHotelPresence', 'identity', 14, 70, 0, 65, 30240),
	(1346, 'AllTimeHotelPresence', 'identity', 15, 75, 0, 70, 40320),
	(1347, 'AllTimeHotelPresence', 'identity', 16, 80, 0, 75, 50400),
	(1348, 'AllTimeHotelPresence', 'identity', 17, 85, 0, 80, 60480),
	(1349, 'AllTimeHotelPresence', 'identity', 18, 90, 0, 85, 80640),
	(1350, 'AllTimeHotelPresence', 'identity', 19, 95, 0, 90, 100800),
	(1351, 'AllTimeHotelPresence', 'identity', 20, 100, 0, 95, 438240),
	(1352, 'RespectGiven', 'social', 2, 10, 0, 5, 5),
	(1353, 'RespectGiven', 'social', 3, 15, 0, 10, 10),
	(1354, 'RespectGiven', 'social', 4, 20, 0, 15, 20),
	(1355, 'RespectGiven', 'social', 5, 25, 0, 20, 40),
	(1356, 'RespectGiven', 'social', 6, 30, 0, 25, 70),
	(1357, 'RespectGiven', 'social', 7, 35, 0, 30, 110),
	(1358, 'RespectGiven', 'social', 8, 40, 0, 35, 170),
	(1359, 'RespectGiven', 'social', 9, 45, 0, 40, 250),
	(1360, 'RespectGiven', 'social', 10, 50, 0, 45, 350),
	(1361, 'RespectGiven', 'social', 11, 55, 0, 50, 470),
	(1362, 'RespectGiven', 'social', 12, 60, 0, 55, 610),
	(1363, 'RespectGiven', 'social', 13, 65, 0, 60, 770),
	(1364, 'RespectGiven', 'social', 14, 70, 0, 65, 950),
	(1365, 'RespectGiven', 'social', 15, 75, 0, 70, 1150),
	(1366, 'RespectGiven', 'social', 16, 80, 0, 75, 1370),
	(1367, 'RespectGiven', 'social', 17, 85, 0, 80, 1610),
	(1368, 'RespectGiven', 'social', 18, 90, 0, 85, 1870),
	(1369, 'RespectGiven', 'social', 19, 95, 0, 90, 2150),
	(1370, 'RespectGiven', 'social', 20, 100, 0, 95, 2450),
	(1381, 'PetRespectGiver', 'pets', 11, 55, 0, 50, 470),
	(1382, 'PetRespectGiver', 'pets', 12, 60, 0, 55, 610),
	(1383, 'PetRespectGiver', 'pets', 13, 65, 0, 60, 770),
	(1384, 'PetRespectGiver', 'pets', 14, 70, 0, 65, 950),
	(1385, 'PetRespectGiver', 'pets', 15, 75, 0, 70, 1150),
	(1386, 'PetRespectGiver', 'pets', 16, 80, 0, 75, 1370),
	(1387, 'PetRespectGiver', 'pets', 17, 85, 0, 80, 1610),
	(1388, 'PetRespectGiver', 'pets', 18, 90, 0, 85, 1870),
	(1389, 'PetRespectGiver', 'pets', 19, 95, 0, 90, 2150),
	(1390, 'PetRespectGiver', 'pets', 20, 100, 0, 95, 2450),
	(1391, 'GiftGiver', 'social', 11, 55, 0, 50, 816),
	(1392, 'GiftGiver', 'social', 12, 60, 0, 55, 1141),
	(1393, 'GiftGiver', 'social', 13, 65, 0, 60, 1541),
	(1394, 'GiftGiver', 'social', 14, 70, 0, 65, 2041),
	(1395, 'GiftGiver', 'social', 15, 75, 0, 70, 2591),
	(2717, 'AdvancedHorticulturist', 'explore', 10, 100, 0, 120, 240),
	(2716, 'AdvancedHorticulturist', 'explore', 9, 100, 0, 80, 120),
	(2715, 'AdvancedHorticulturist', 'explore', 8, 100, 0, 60, 80),
	(2714, 'AdvancedHorticulturist', 'explore', 7, 100, 0, 40, 60),
	(2713, 'AdvancedHorticulturist', 'explore', 6, 100, 0, 30, 40),
	(2712, 'AdvancedHorticulturist', 'explore', 5, 100, 0, 25, 30),
	(2711, 'AdvancedHorticulturist', 'explore', 4, 100, 0, 20, 20),
	(2710, 'AdvancedHorticulturist', 'explore', 3, 100, 0, 15, 10),
	(2709, 'AdvancedHorticulturist', 'explore', 2, 100, 0, 10, 5),
	(2708, 'AdvancedHorticulturist', 'explore', 1, 100, 0, 5, 1),
	(1479, 'GuideEnrollmentLifetime', 'explore', 1, 5, 0, 0, 1),
	(1480, 'GuideEnrollmentLifetime', 'explore', 2, 10, 0, 5, 7),
	(1481, 'GuideEnrollmentLifetime', 'explore', 3, 15, 0, 10, 14),
	(1482, 'GuideEnrollmentLifetime', 'explore', 4, 20, 0, 15, 21),
	(1483, 'GuideEnrollmentLifetime', 'explore', 5, 25, 0, 20, 28),
	(1484, 'GuideEnrollmentLifetime', 'explore', 6, 30, 0, 25, 56),
	(1485, 'GuideEnrollmentLifetime', 'explore', 7, 35, 0, 30, 70),
	(1486, 'GuideEnrollmentLifetime', 'explore', 8, 40, 0, 35, 112),
	(1487, 'GuideEnrollmentLifetime', 'explore', 9, 45, 0, 40, 168),
	(1488, 'GuideEnrollmentLifetime', 'explore', 10, 50, 0, 45, 224),
	(1489, 'GuideEnrollmentLifetime', 'explore', 11, 55, 0, 50, 280),
	(1490, 'GuideEnrollmentLifetime', 'explore', 12, 60, 0, 55, 365),
	(1491, 'GuideEnrollmentLifetime', 'explore', 13, 65, 0, 60, 548),
	(1492, 'GuideEnrollmentLifetime', 'explore', 14, 70, 0, 65, 730),
	(1493, 'GuideEnrollmentLifetime', 'explore', 15, 75, 0, 70, 913),
	(1494, 'GuideEnrollmentLifetime', 'explore', 16, 80, 0, 75, 1095),
	(1495, 'GuideEnrollmentLifetime', 'explore', 17, 85, 0, 80, 1278),
	(1496, 'GuideEnrollmentLifetime', 'explore', 18, 90, 0, 85, 1460),
	(1497, 'GuideEnrollmentLifetime', 'explore', 19, 95, 0, 90, 1643),
	(1498, 'GuideEnrollmentLifetime', 'explore', 20, 100, 0, 95, 1825),
	(1513, 'MonsterPlantTreater', 'explore', 1, 5, 0, 0, 5),
	(1514, 'MonsterPlantTreater', 'explore', 2, 10, 0, 5, 30),
	(1515, 'MonsterPlantTreater', 'explore', 3, 15, 0, 10, 130),
	(1516, 'MonsterPlantTreater', 'explore', 4, 20, 0, 15, 380),
	(1517, 'MonsterPlantTreater', 'explore', 5, 25, 0, 20, 1380),
	(2757, 'MusicCollector', 'music', 10, 100, 0, 80, 280),
	(2756, 'MusicCollector', 'music', 9, 100, 0, 50, 200),
	(2755, 'MusicCollector', 'music', 8, 100, 0, 45, 160),
	(2754, 'MusicCollector', 'music', 7, 100, 0, 40, 120),
	(2753, 'MusicCollector', 'music', 6, 100, 0, 35, 80),
	(2752, 'MusicCollector', 'music', 5, 100, 0, 30, 60),
	(2751, 'MusicCollector', 'music', 4, 100, 0, 25, 40),
	(2750, 'MusicCollector', 'music', 3, 100, 0, 20, 20),
	(2749, 'MusicCollector', 'music', 2, 100, 0, 15, 5),
	(2747, 'Jogger', 'explore', 10, 100, 0, 100, 4800),
	(2746, 'Jogger', 'explore', 9, 90, 0, 90, 2400),
	(2745, 'Jogger', 'explore', 8, 80, 0, 80, 1200),
	(1646, 'GuideRecommendation', 'explore', 1, 5, 0, 5, 2),
	(1647, 'GuideRecommendation', 'explore', 2, 10, 0, 5, 5),
	(1648, 'GuideRecommendation', 'explore', 3, 15, 0, 10, 10),
	(1649, 'GuideRecommendation', 'explore', 4, 20, 0, 15, 15),
	(1650, 'GuideRecommendation', 'explore', 5, 25, 0, 20, 30),
	(1651, 'GuideRecommendation', 'explore', 6, 30, 0, 25, 55),
	(1652, 'GuideRecommendation', 'explore', 7, 35, 0, 30, 85),
	(1653, 'GuideFeedbackGiver', 'explore', 1, 5, 0, 5, 2),
	(1654, 'GuideFeedbackGiver', 'explore', 2, 10, 0, 5, 5),
	(1660, 'MonsterPlantGardenOfDeath', 'explore', 1, 5, 0, 0, 5),
	(1661, 'MonsterPlantGardenOfDeath', 'explore', 2, 10, 0, 5, 30),
	(1662, 'MonsterPlantGardenOfDeath', 'explore', 3, 15, 0, 10, 100),
	(1663, 'MonsterPlantGardenOfDeath', 'explore', 4, 20, 0, 15, 500),
	(1664, 'MonsterPlantGardenOfDeath', 'explore', 5, 25, 0, 20, 2000),
	(1665, 'MonsterPlantHealer', 'pets', 1, 5, 0, 0, 5),
	(1666, 'MonsterPlantHealer', 'pets', 2, 10, 0, 5, 30),
	(1667, 'MonsterPlantHealer', 'pets', 3, 15, 0, 10, 100),
	(1668, 'MonsterPlantHealer', 'pets', 4, 20, 0, 15, 500),
	(1669, 'MonsterPlantHealer', 'pets', 5, 25, 0, 20, 2000),
	(1690, 'FootballGoalScored', 'games', 1, 5, 0, 0, 1),
	(1691, 'FootballGoalScored', 'games', 2, 10, 0, 5, 10),
	(1692, 'FootballGoalScored', 'games', 3, 15, 0, 10, 100),
	(1693, 'FootballGoalScored', 'games', 4, 20, 0, 15, 1000),
	(1694, 'FootballGoalScored', 'games', 5, 25, 0, 20, 10000),
	(1705, 'SafetyQuizGraduate', 'identity', 1, 5, 0, 5, 1),
	(1706, 'GuideRequestHandler', 'explore', 1, 5, 0, 5, 2),
	(1707, 'GuideRequestHandler', 'explore', 2, 10, 0, 5, 5),
	(1708, 'GuideRequestHandler', 'explore', 3, 15, 0, 10, 10),
	(1709, 'GuideRequestHandler', 'explore', 4, 20, 0, 15, 15),
	(1710, 'GuideRequestHandler', 'explore', 5, 25, 0, 20, 30),
	(1711, 'GuideRequestHandler', 'explore', 6, 30, 0, 25, 55),
	(1712, 'GuideRequestHandler', 'explore', 7, 35, 0, 30, 85),
	(1713, 'GuideRequestHandler', 'explore', 8, 40, 0, 35, 115),
	(1714, 'GuideRequestHandler', 'explore', 9, 45, 0, 40, 150),
	(1715, 'GuideRequestHandler', 'explore', 10, 50, 0, 45, 200),
	(1716, 'GuideRequester', 'explore', 1, 5, 0, 0, 2),
	(1717, 'GuideRequester', 'explore', 2, 10, 0, 5, 5),
	(1741, 'FriendListSize', 'social', 1, 5, 0, 0, 2),
	(1742, 'FriendListSize', 'social', 2, 10, 0, 5, 10),
	(1743, 'FriendListSize', 'social', 3, 15, 0, 10, 30),
	(1744, 'FriendListSize', 'social', 4, 20, 0, 15, 85),
	(1745, 'FriendListSize', 'social', 5, 25, 0, 20, 150),
	(1746, 'FriendListSize', 'social', 6, 30, 0, 25, 250),
	(1747, 'FriendListSize', 'social', 7, 35, 0, 30, 350),
	(1748, 'FriendListSize', 'social', 8, 40, 0, 35, 500),
	(1749, 'FriendListSize', 'social', 9, 45, 0, 40, 700),
	(1750, 'FriendListSize', 'social', 10, 50, 0, 45, 800),
	(1751, 'FriendListSize', 'social', 11, 55, 0, 50, 900),
	(1752, 'FriendListSize', 'social', 12, 60, 0, 55, 1000),
	(1753, 'FriendListSize', 'social', 13, 65, 0, 60, 1100),
	(1764, 'FootballGoalScoredInRoom', 'games', 1, 5, 0, 0, 1),
	(1765, 'FootballGoalScoredInRoom', 'games', 2, 10, 0, 5, 20),
	(1766, 'FootballGoalScoredInRoom', 'games', 3, 15, 0, 10, 400),
	(1767, 'FootballGoalScoredInRoom', 'games', 4, 20, 0, 15, 8000),
	(1768, 'FootballGoalScoredInRoom', 'games', 5, 25, 0, 20, 160000),
	(1886, 'FurnimaticQuest', 'explore', 1, 5, 0, 5, 1),
	(1887, 'FurnimaticQuest', 'explore', 2, 10, 0, 5, 2),
	(1888, 'FurnimaticQuest', 'explore', 3, 15, 0, 10, 3),
	(1889, 'FurnimaticQuest', 'explore', 4, 20, 0, 15, 4),
	(1890, 'FurnimaticQuest', 'explore', 5, 25, 0, 20, 5),
	(1891, 'FurnimaticQuest', 'explore', 6, 30, 0, 25, 6),
	(1892, 'FurnimaticQuest', 'explore', 7, 35, 0, 30, 7),
	(1893, 'FurnimaticQuest', 'explore', 8, 40, 0, 35, 8),
	(1894, 'FurnimaticQuest', 'explore', 9, 45, 0, 40, 9),
	(1895, 'FurnimaticQuest', 'explore', 10, 50, 0, 45, 10),
	(1896, 'FurnimaticQuest', 'explore', 11, 55, 0, 50, 11),
	(1897, 'FurnimaticQuest', 'explore', 12, 60, 0, 55, 12),
	(1898, 'FurnimaticQuest', 'explore', 13, 65, 0, 60, 13),
	(1899, 'FurnimaticQuest', 'explore', 14, 70, 0, 65, 14),
	(1900, 'FurnimaticQuest', 'explore', 15, 75, 0, 70, 15),
	(1901, 'FurnimaticQuest', 'explore', 16, 80, 0, 75, 16),
	(1902, 'FurnimaticQuest', 'explore', 17, 85, 0, 80, 17),
	(1903, 'GuideAdvertisementReader', 'identity', 1, 5, 0, 5, 1),
	(2020, 'EggMaster', 'explore', 1, 5, 0, 5, 1),
	(2021, 'EggMaster', 'explore', 2, 10, 0, 5, 3),
	(2022, 'EggMaster', 'explore', 3, 15, 0, 10, 7),
	(2023, 'EggCracker', 'explore', 1, 5, 0, 0, 10),
	(2024, 'EggCracker', 'explore', 2, 10, 0, 5, 20),
	(2025, 'EggCracker', 'explore', 3, 15, 0, 10, 80),
	(2026, 'EggCracker', 'explore', 4, 20, 0, 15, 320),
	(2027, 'EggCracker', 'explore', 5, 25, 0, 20, 1280),
	(2028, 'EggCracker', 'explore', 6, 30, 0, 25, 5120),
	(2029, 'EggCracker', 'explore', 7, 35, 0, 30, 10240),
	(2030, 'EggCracker', 'explore', 8, 40, 0, 35, 20480),
	(2031, 'EggCracker', 'explore', 9, 45, 0, 40, 40960),
	(2032, 'EggCracker', 'explore', 10, 50, 0, 45, 81920),
	(2188, 'PinataWhacker', 'explore', 1, 5, 0, 5, 1),
	(2189, 'PinataWhacker', 'explore', 2, 10, 0, 5, 5),
	(2190, 'PinataWhacker', 'explore', 3, 15, 0, 10, 25),
	(2191, 'PinataWhacker', 'explore', 4, 20, 0, 15, 50),
	(2192, 'PinataWhacker', 'explore', 5, 25, 0, 20, 100),
	(2193, 'PinataWhacker', 'explore', 6, 30, 0, 25, 200),
	(2194, 'PinataWhacker', 'explore', 7, 35, 0, 30, 400),
	(2195, 'PinataWhacker', 'explore', 8, 40, 0, 35, 800),
	(2196, 'PinataWhacker', 'explore', 9, 45, 0, 40, 1600),
	(2197, 'PinataWhacker', 'explore', 10, 50, 0, 45, 3200),
	(2198, 'PinataBreaker', 'explore', 1, 5, 0, 5, 1),
	(2199, 'PinataBreaker', 'explore', 2, 10, 0, 5, 2),
	(2200, 'PinataBreaker', 'explore', 3, 15, 0, 10, 4),
	(2201, 'PinataBreaker', 'explore', 4, 20, 0, 15, 8),
	(2202, 'PinataBreaker', 'explore', 5, 25, 0, 20, 16),
	(2318, 'CrystalCracker', 'explore', 1, 5, 0, 0, 1),
	(2319, 'CrystalCracker', 'explore', 2, 10, 0, 5, 25),
	(2320, 'CrystalCracker', 'explore', 3, 15, 0, 10, 50),
	(2321, 'CrystalCracker', 'explore', 4, 20, 0, 15, 100),
	(2322, 'CrystalCracker', 'explore', 5, 25, 0, 20, 200),
	(2323, 'CrystalCracker', 'explore', 6, 30, 0, 25, 400),
	(2324, 'CrystalCracker', 'explore', 7, 35, 0, 30, 800),
	(2325, 'CrystalCracker', 'explore', 8, 40, 0, 35, 1600),
	(2326, 'CrystalCracker', 'explore', 9, 45, 0, 40, 3200),
	(2327, 'CrystalCracker', 'explore', 10, 50, 0, 45, 6400),
	(2369, 'SelfModRoomFilterSeen', 'tools', 1, 5, 0, 5, 1),
	(2370, 'ViciousViking', 'explore', 1, 5, 0, 5, 1),
	(2371, 'ViciousViking', 'explore', 2, 10, 0, 5, 5),
	(2372, 'ViciousViking', 'explore', 3, 15, 0, 10, 10),
	(2373, 'ViciousViking', 'explore', 4, 20, 0, 15, 20),
	(2374, 'ViciousViking', 'explore', 5, 25, 0, 20, 40),
	(2375, 'ViciousViking', 'explore', 6, 30, 0, 25, 80),
	(2376, 'ViciousViking', 'explore', 7, 35, 0, 30, 160),
	(2377, 'ViciousViking', 'explore', 8, 40, 0, 35, 250),
	(2378, 'ViciousViking', 'explore', 9, 45, 0, 40, 350),
	(2379, 'ViciousViking', 'explore', 10, 50, 0, 45, 600),
	(2380, 'SelfModWalkthroughSeen', 'tools', 1, 5, 0, 0, 1),
	(2381, 'SelfModDoorModeSeen', 'tools', 1, 5, 0, 0, 1),
	(2382, 'LeprechaunRespectGiver', 'pets', 1, 5, 0, 0, 3),
	(2383, 'LeprechaunRespectGiver', 'pets', 2, 10, 0, 5, 10),
	(2384, 'LeprechaunRespectGiver', 'pets', 3, 15, 0, 10, 20),
	(2385, 'LeprechaunRespectGiver', 'pets', 4, 20, 0, 15, 40),
	(2386, 'LeprechaunRespectGiver', 'pets', 5, 25, 0, 20, 70),
	(2387, 'LeprechaunRespectGiver', 'pets', 6, 30, 0, 25, 120),
	(2388, 'LeprechaunRespectGiver', 'pets', 7, 35, 0, 30, 200),
	(2389, 'LeprechaunRespectGiver', 'pets', 8, 40, 0, 35, 300),
	(2390, 'LeprechaunRespectGiver', 'pets', 9, 45, 0, 40, 500),
	(2391, 'LeprechaunRespectGiver', 'pets', 10, 50, 0, 45, 750),
	(2403, 'LeprechaunLevelUp', 'pets', 1, 5, 0, 0, 1),
	(2404, 'LeprechaunLevelUp', 'pets', 2, 10, 0, 5, 5),
	(2405, 'LeprechaunLevelUp', 'pets', 3, 15, 0, 10, 10),
	(2406, 'LeprechaunLevelUp', 'pets', 4, 20, 0, 15, 20),
	(2407, 'LeprechaunLevelUp', 'pets', 5, 25, 0, 20, 30),
	(2408, 'LeprechaunLevelUp', 'pets', 6, 30, 0, 25, 50),
	(2409, 'LeprechaunLevelUp', 'pets', 7, 35, 0, 30, 80),
	(2410, 'LeprechaunLevelUp', 'pets', 8, 40, 0, 35, 130),
	(2411, 'LeprechaunLevelUp', 'pets', 9, 45, 0, 40, 200),
	(2412, 'LeprechaunLevelUp', 'pets', 10, 50, 0, 45, 350),
	(2443, 'GnomeRespectGiver', 'pets', 1, 5, 0, 0, 3),
	(2444, 'GnomeRespectGiver', 'pets', 2, 10, 0, 5, 10),
	(2445, 'GnomeRespectGiver', 'pets', 3, 15, 0, 10, 20),
	(2446, 'GnomeRespectGiver', 'pets', 4, 20, 0, 15, 40),
	(2447, 'GnomeRespectGiver', 'pets', 5, 25, 0, 20, 70),
	(2448, 'GnomeRespectGiver', 'pets', 6, 30, 0, 25, 120),
	(2449, 'GnomeRespectGiver', 'pets', 7, 35, 0, 30, 200),
	(2450, 'GnomeRespectGiver', 'pets', 8, 40, 0, 35, 300),
	(2451, 'GnomeRespectGiver', 'pets', 9, 45, 0, 40, 500),
	(2452, 'GnomeRespectGiver', 'pets', 10, 50, 0, 45, 750),
	(2453, 'GnomeLevelUp', 'pets', 1, 5, 0, 0, 1),
	(2454, 'GnomeLevelUp', 'pets', 2, 10, 0, 5, 3),
	(2455, 'GnomeLevelUp', 'pets', 3, 15, 0, 10, 5),
	(2456, 'GnomeLevelUp', 'pets', 4, 20, 0, 15, 7),
	(2457, 'GnomeLevelUp', 'pets', 5, 25, 0, 20, 9),
	(2458, 'GnomeLevelUp', 'pets', 6, 30, 0, 25, 11),
	(2459, 'GnomeLevelUp', 'pets', 7, 35, 0, 30, 13),
	(2460, 'GnomeLevelUp', 'pets', 8, 40, 0, 35, 15),
	(2461, 'GnomeLevelUp', 'pets', 9, 45, 0, 40, 17),
	(2462, 'GnomeLevelUp', 'pets', 10, 50, 0, 45, 20),
	(2625, 'GnomeFeeding', 'pets', 5, 30, 0, 30, 800),
	(2624, 'GnomeFeeding', 'pets', 4, 25, 0, 25, 600),
	(2623, 'GnomeFeeding', 'pets', 3, 20, 0, 20, 400),
	(2622, 'GnomeFeeding', 'pets', 2, 15, 0, 15, 250),
	(2621, 'GnomeFeeding', 'pets', 1, 10, 0, 10, 100),
	(2620, 'Bazaar', 'explore', 10, 100, 0, 100, 240),
	(2619, 'Bazaar', 'explore', 9, 100, 0, 100, 180),
	(2618, 'Bazaar', 'explore', 8, 100, 0, 100, 120),
	(2617, 'Bazaar', 'explore', 7, 80, 0, 80, 100),
	(2616, 'Bazaar', 'explore', 6, 60, 0, 60, 80),
	(2543, 'SelfModMuteSeen', 'tools', 1, 5, 0, 1, 1),
	(2544, 'SelfModKickSeen', 'tools', 1, 5, 0, 1, 1),
	(2547, 'SelfModChatScrollSpeedSeen', 'tools', 1, 5, 0, 1, 1),
	(2548, 'SelfModChatFloodFilterSeen', 'tools', 1, 5, 0, 1, 1),
	(2549, 'SelfModChatHearRangeSeen', 'tools', 1, 5, 0, 1, 1),
	(2550, 'SelfModIgnoreSeen', 'tools', 1, 5, 0, 1, 1),
	(2555, 'CameraPhotoCount', 'explore', 1, 5, 0, 5, 1),
	(2556, 'CameraPhotoCount', 'explore', 2, 10, 0, 5, 5),
	(2557, 'CameraPhotoCount', 'explore', 3, 15, 0, 10, 15),
	(2558, 'CameraPhotoCount', 'explore', 4, 20, 0, 15, 30),
	(2559, 'CameraPhotoCount', 'explore', 5, 25, 0, 20, 50),
	(2560, 'CameraPhotoCount', 'explore', 6, 30, 0, 25, 100),
	(2561, 'CameraPhotoCount', 'explore', 7, 35, 0, 30, 200),
	(2562, 'CameraPhotoCount', 'explore', 8, 40, 0, 35, 400),
	(2563, 'CameraPhotoCount', 'explore', 9, 45, 0, 40, 800),
	(2564, 'CameraPhotoCount', 'explore', 10, 50, 0, 45, 1000),
	(2615, 'Bazaar', 'explore', 5, 50, 0, 50, 60),
	(2614, 'Bazaar', 'explore', 4, 40, 0, 40, 40),
	(2613, 'Bazaar', 'explore', 3, 20, 0, 20, 20),
	(2612, 'Bazaar', 'explore', 2, 10, 0, 10, 5),
	(2611, 'Bazaar', 'explore', 1, 5, 0, 5, 1),
	(2610, 'ffusion', 'explore', 5, 100, 0, 100, 10),
	(2609, 'ffusion', 'explore', 4, 50, 0, 50, 8),
	(2608, 'ffusion', 'explore', 3, 30, 0, 30, 5),
	(2607, 'ffusion', 'explore', 2, 20, 0, 20, 3),
	(2606, 'ffusion', 'explore', 1, 10, 0, 10, 1),
	(2576, 'VicGar', 'explore', 1, 5, 0, 5, 2),
	(2577, 'VicGar', 'explore', 2, 10, 0, 10, 6),
	(2578, 'VicGar', 'explore', 3, 15, 0, 15, 10),
	(2579, 'VicGar', 'explore', 4, 20, 0, 20, 20),
	(2580, 'VicGar', 'explore', 5, 25, 0, 25, 40),
	(2581, 'VicGar', 'explore', 6, 30, 0, 30, 60),
	(2582, 'VicGar', 'explore', 7, 35, 0, 35, 80),
	(2583, 'VicGar', 'explore', 8, 40, 0, 40, 100),
	(2584, 'VicGar', 'explore', 9, 50, 0, 50, 150),
	(2585, 'VicGar', 'explore', 10, 100, 0, 100, 240),
	(2586, 'Chef', 'explore', 1, 5, 0, 5, 1),
	(2587, 'Chef', 'explore', 2, 10, 0, 10, 5),
	(2588, 'Chef', 'explore', 3, 15, 0, 15, 10),
	(2589, 'Chef', 'explore', 4, 20, 0, 20, 20),
	(2590, 'Chef', 'explore', 5, 25, 0, 25, 40),
	(2591, 'Chef', 'explore', 6, 30, 0, 30, 60),
	(2592, 'Chef', 'explore', 7, 35, 0, 35, 80),
	(2593, 'Chef', 'explore', 8, 50, 0, 50, 100),
	(2594, 'Chef', 'explore', 9, 80, 0, 80, 120),
	(2595, 'Chef', 'explore', 10, 100, 0, 100, 250),
	(2748, 'MusicCollector', 'music', 1, 100, 0, 10, 2),
	(2597, 'Restorer', 'explore', 1, 100, 0, 10, 2),
	(2598, 'Restorer', 'explore', 2, 100, 0, 15, 4),
	(2599, 'Restorer', 'explore', 3, 100, 0, 20, 6),
	(2600, 'Restorer', 'explore', 4, 100, 0, 30, 8),
	(2601, 'Restorer', 'explore', 5, 100, 0, 50, 20),
	(2602, 'AtcgSecret', 'explore', 1, 100, 0, 20, 5),
	(2603, 'AtcgSecret', 'explore', 2, 100, 0, 30, 12),
	(2604, 'AtcgSecret', 'explore', 3, 100, 0, 50, 24),
	(2605, 'AtcgSecret', 'explore', 4, 100, 0, 100, 38);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;

-- Dumping structure for table test.achievements_talents
DROP TABLE IF EXISTS `achievements_talents`;
CREATE TABLE IF NOT EXISTS `achievements_talents` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `type` enum('citizenship','helper') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'citizenship',
    `level` int(11) NOT NULL DEFAULT 0,
    `achievement_ids` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `achievement_levels` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `reward_furni` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `reward_perks` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `reward_badges` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.achievements_talents: ~5 rows (approximately)
/*!40000 ALTER TABLE `achievements_talents` DISABLE KEYS */;
INSERT INTO `achievements_talents` (`id`, `type`, `level`, `achievement_ids`, `achievement_levels`, `reward_furni`, `reward_perks`, `reward_badges`) VALUES
	(1, 'citizenship', 0, '447', '1', '179', '', ''),
	(2, 'citizenship', 1, '467,479,469', '1,1,1', '179', '', ''),
	(3, 'citizenship', 2, '445', '2,1', '179', '', ''),
	(4, 'citizenship', 3, '450', '1', '179', 'TRADE', 'ACH_TraderPass1'),
	(5, 'citizenship', 4, '457', '1', '179,5003', 'CITIZEN', 'ACH_Citizenship1');
/*!40000 ALTER TABLE `achievements_talents` ENABLE KEYS */;

-- Dumping structure for table test.bans
DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `machine_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `user_staff_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL,
    `ban_expire` int(32) NOT NULL DEFAULT 0,
    `ban_reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `type` enum('account','ip','machine','super') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'account' COMMENT 'Account is the entry in the users table banned.\nIP is any client that connects with that IP.\nMachine is the computer that logged in.\nSuper is all of the above.',
    `cfh_topic` int(4) NOT NULL DEFAULT -1,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `user_data` (`user_id`,`ip`,`machine_id`,`ban_expire`,`timestamp`,`ban_reason`) USING BTREE,
    KEY `general` (`id`,`type`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;

-- Dumping structure for table test.bots
DROP TABLE IF EXISTS `bots`;
CREATE TABLE IF NOT EXISTS `bots` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `room_id` int(11) NOT NULL DEFAULT 0,
    `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `motto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `figure` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `gender` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
    `x` int(11) NOT NULL DEFAULT 0,
    `y` int(11) NOT NULL DEFAULT 0,
    `z` double(11,1) NOT NULL DEFAULT 0.0,
    `rot` int(11) NOT NULL DEFAULT 0,
    `chat_lines` varchar(5112) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `chat_auto` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `chat_random` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `chat_delay` int(11) NOT NULL DEFAULT 5,
    `dance` int(11) NOT NULL DEFAULT 0,
    `freeroam` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `type` enum('generic','visitor_log','bartender','weapons_dealer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'generic',
    `effect` int(3) NOT NULL DEFAULT 0,
    `bubble_id` int(3) DEFAULT 31,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `general_data` (`id`,`user_id`,`room_id`,`name`,`motto`,`gender`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.bots: ~0 rows (approximately)
/*!40000 ALTER TABLE `bots` DISABLE KEYS */;
/*!40000 ALTER TABLE `bots` ENABLE KEYS */;

-- Dumping structure for table test.bot_serves
DROP TABLE IF EXISTS `bot_serves`;
CREATE TABLE IF NOT EXISTS `bot_serves` (
    `keys` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
    `item` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.bot_serves: 0 rows
/*!40000 ALTER TABLE `bot_serves` DISABLE KEYS */;
/*!40000 ALTER TABLE `bot_serves` ENABLE KEYS */;

-- Dumping structure for table test.calendar_rewards
DROP TABLE IF EXISTS `calendar_rewards`;
CREATE TABLE IF NOT EXISTS `calendar_rewards` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `custom_image` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `credits` int(11) NOT NULL DEFAULT 0,
    `points` int(11) NOT NULL DEFAULT 0,
    `points_type` int(3) NOT NULL DEFAULT 0,
    `badge` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `item_id` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.calendar_rewards: 0 rows
/*!40000 ALTER TABLE `calendar_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_rewards` ENABLE KEYS */;

-- Dumping structure for table test.calendar_rewards_claimed
DROP TABLE IF EXISTS `calendar_rewards_claimed`;
CREATE TABLE IF NOT EXISTS `calendar_rewards_claimed` (
    `user_id` int(11) NOT NULL,
    `reward_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.calendar_rewards_claimed: 0 rows
/*!40000 ALTER TABLE `calendar_rewards_claimed` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_rewards_claimed` ENABLE KEYS */;

-- Dumping structure for table test.camera_web
DROP TABLE IF EXISTS `camera_web`;
CREATE TABLE IF NOT EXISTS `camera_web` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `room_id` int(11) NOT NULL DEFAULT 0,
    `timestamp` int(11) NOT NULL,
    `url` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `id` (`id`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.camera_web: ~0 rows (approximately)
/*!40000 ALTER TABLE `camera_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_web` ENABLE KEYS */;

-- Dumping structure for table test.catalog_clothing
DROP TABLE IF EXISTS `catalog_clothing`;
CREATE TABLE IF NOT EXISTS `catalog_clothing` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
    `setid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_clothing: 0 rows
/*!40000 ALTER TABLE `catalog_clothing` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_clothing` ENABLE KEYS */;

-- Dumping structure for table test.catalog_club_offers
DROP TABLE IF EXISTS `catalog_club_offers`;
CREATE TABLE IF NOT EXISTS `catalog_club_offers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `enabled` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
    `days` int(7) NOT NULL,
    `credits` int(5) NOT NULL DEFAULT 10,
    `points` int(5) NOT NULL DEFAULT 0,
    `points_type` int(3) NOT NULL DEFAULT 0,
    `type` enum('HC','VIP') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'HC',
    `deal` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `giftable` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_club_offers: 4 rows
/*!40000 ALTER TABLE `catalog_club_offers` DISABLE KEYS */;
INSERT INTO `catalog_club_offers` (`id`, `enabled`, `name`, `days`, `credits`, `points`, `points_type`, `type`, `deal`, `giftable`) VALUES
	(2, '1', 'HABBO_CLUB_3_MONTHS', 93, 59, 0, 0, 'VIP', '0', '0'),
	(1, '1', 'HABBO_CLUB_1_MONTH', 31, 29, 0, 0, 'VIP', '0', '0'),
	(4, '0', 'HABBO_CLUB_VIP_5_YEAR', 1860, 9999, 499, 5, 'VIP', '0', '1'),
	(3, '0', 'HABBO_CLUB_VIP_1_YEAR', 372, 199, 199, 5, 'VIP', '0', '1');
/*!40000 ALTER TABLE `catalog_club_offers` ENABLE KEYS */;

-- Dumping structure for table test.catalog_featured_pages
DROP TABLE IF EXISTS `catalog_featured_pages`;
CREATE TABLE IF NOT EXISTS `catalog_featured_pages` (
    `slot_id` int(11) NOT NULL,
    `image` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `caption` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `type` enum('page_name','page_id','product_name') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page_name',
    `expire_timestamp` int(11) NOT NULL DEFAULT -1,
    `page_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `page_id` int(11) NOT NULL DEFAULT 0,
    `product_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`slot_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_featured_pages: 4 rows
/*!40000 ALTER TABLE `catalog_featured_pages` DISABLE KEYS */;
INSERT INTO `catalog_featured_pages` (`slot_id`, `image`, `caption`, `type`, `expire_timestamp`, `page_name`, `page_id`, `product_name`) VALUES
	(1, 'catalogue/feature_cata/feature_cata_hort_pets.png', 'Haustiere', 'page_name', -1, 'pet_animals', 277, ''),
	(4, 'catalogue/feature_cata/plushie_vert.png', 'Plushie Crafting', 'page_name', -1, 'plushie_boxes', 1222, ''),
	(3, 'catalogue/feature_cata/feature_cata_hort_nov20_mystery.png', 'Geheimnisvolle Möbel', 'page_name', -1, 'mystery_furni', 1228, ''),
	(2, 'catalogue/feature_cata/feature_cata_hort_clothes.png', 'Bekleidung', 'page_name', -1, 'top_picks', 588, '');
/*!40000 ALTER TABLE `catalog_featured_pages` ENABLE KEYS */;

-- Dumping structure for table test.catalog_items
DROP TABLE IF EXISTS `catalog_items`;
CREATE TABLE IF NOT EXISTS `catalog_items` (
    `id` int(16) NOT NULL AUTO_INCREMENT,
    `item_ids` varchar(666) COLLATE utf8mb4_unicode_ci NOT NULL,
    `page_id` int(11) NOT NULL,
    `catalog_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `cost_credits` int(11) NOT NULL DEFAULT 3,
    `cost_points` int(11) NOT NULL DEFAULT 0,
    `points_type` int(3) NOT NULL DEFAULT 0 COMMENT '0 for duckets; 5 for diamonds; and any seasonal/GOTW currencies you have in your emu_settings table.',
    `amount` int(11) NOT NULL DEFAULT 1,
    `limited_stack` int(11) NOT NULL DEFAULT 0 COMMENT 'Change this number to make the item limited.',
    `limited_sells` int(11) NOT NULL DEFAULT 0 COMMENT 'This automatically logs from the emu; do not change it.',
    `order_number` int(11) NOT NULL DEFAULT 1,
    `offer_id` int(11) NOT NULL DEFAULT -1,
    `song_id` int(3) unsigned NOT NULL DEFAULT 0,
    `extradata` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `have_offer` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `club_only` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE,
    KEY `page_id` (`page_id`) USING BTREE,
    KEY `catalog_name` (`catalog_name`) USING BTREE,
    KEY `costs` (`cost_credits`,`cost_points`,`points_type`) USING BTREE,
    KEY `id` (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_items` ENABLE KEYS */;

-- Dumping structure for table test.catalog_items_bc
DROP TABLE IF EXISTS `catalog_items_bc`;
CREATE TABLE IF NOT EXISTS `catalog_items_bc` (
    `id` int(16) NOT NULL AUTO_INCREMENT,
    `item_ids` varchar(666) NOT NULL,
    `page_id` int(11) NOT NULL,
    `catalog_name` varchar(100) NOT NULL,
    `order_number` int(11) NOT NULL DEFAULT 1,
    `extradata` varchar(500) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_items_bc: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_items_bc` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_items_bc` ENABLE KEYS */;

-- Dumping structure for table test.catalog_items_limited
DROP TABLE IF EXISTS `catalog_items_limited`;
CREATE TABLE IF NOT EXISTS `catalog_items_limited` (
    `catalog_item_id` int(11) NOT NULL,
    `number` int(11) NOT NULL,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `timestamp` int(11) NOT NULL DEFAULT 0,
    `item_id` int(11) NOT NULL DEFAULT 0,
    UNIQUE KEY `catalog_item_id` (`catalog_item_id`,`number`) USING BTREE,
    KEY `user_timestamp_index` (`user_id`,`timestamp`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.catalog_items_limited: 0 rows
/*!40000 ALTER TABLE `catalog_items_limited` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_items_limited` ENABLE KEYS */;

-- Dumping structure for table test.catalog_pages
DROP TABLE IF EXISTS `catalog_pages`;
CREATE TABLE IF NOT EXISTS `catalog_pages` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `parent_id` int(11) NOT NULL DEFAULT 50000 COMMENT 'Page ID 50000 is under 7 (Staff)',
    `caption_save` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `caption` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
    `page_layout` enum('default_3x3','club_buy','club_gift','frontpage','spaces','recycler','recycler_info','recycler_prizes','trophies','plasto','marketplace','marketplace_own_items','spaces_new','soundmachine','guilds','guild_furni','info_duckets','info_rentables','info_pets','roomads','single_bundle','sold_ltd_items','badge_display','bots','pets','pets2','pets3','productpage1','room_bundle','recent_purchases','default_3x3_color_grouping','guild_forum','vip_buy','info_loyalty','loyalty_vip_buy','collectibles','petcustomization','frontpage_featured') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_3x3',
    `icon_color` int(5) NOT NULL DEFAULT 1,
    `icon_image` int(5) NOT NULL DEFAULT 1,
    `min_rank` int(5) NOT NULL DEFAULT 1,
    `order_num` int(5) NOT NULL DEFAULT 1,
    `visible` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `enabled` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `club_only` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `vip_only` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `page_headline` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `page_teaser` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `page_special` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Gold Bubble: catalog_special_txtbg1 // Speech Bubble: catalog_special_txtbg2 // Place normal text in page_text_teaser',
    `page_text1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `page_text2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `page_text_details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `page_text_teaser` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `room_id` int(5) DEFAULT 0,
    `includes` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Example usage: 1;2;3\r\n This will include page 1, 2 and 3 in the current page.\r\n Note that permissions are only used for the current entry.',
    PRIMARY KEY (`id`) USING BTREE,
    KEY `id` (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_pages: 0 rows
/*!40000 ALTER TABLE `catalog_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_pages` ENABLE KEYS */;

-- Dumping structure for table test.catalog_pages_bc
DROP TABLE IF EXISTS `catalog_pages_bc`;
CREATE TABLE IF NOT EXISTS `catalog_pages_bc` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `parent_id` int(11) NOT NULL DEFAULT -1,
    `caption` varchar(128) NOT NULL,
    `page_layout` enum('default_3x3','club_buy','club_gift','frontpage','spaces','recycler','recycler_info','recycler_prizes','trophies','plasto','marketplace','marketplace_own_items','spaces_new','soundmachine','guilds','guild_furni','info_duckets','info_rentables','info_pets','roomads','single_bundle','sold_ltd_items','badge_display','bots','pets','pets2','pets3','productpage1','room_bundle','recent_purchases','default_3x3_color_grouping','guild_forum','vip_buy','info_loyalty','loyalty_vip_buy','collectibles','petcustomization','frontpage_featured') NOT NULL DEFAULT 'default_3x3',
    `icon_color` int(5) NOT NULL DEFAULT 1,
    `icon_image` int(5) NOT NULL DEFAULT 1,
    `order_num` int(5) NOT NULL DEFAULT 1,
    `visible` enum('0','1') NOT NULL DEFAULT '1',
    `enabled` enum('0','1') NOT NULL DEFAULT '1',
    `page_headline` varchar(1024) NOT NULL DEFAULT '',
    `page_teaser` varchar(64) NOT NULL DEFAULT '',
    `page_special` varchar(2048) DEFAULT '' COMMENT 'Gold Bubble: catalog_special_txtbg1 // Speech Bubble: catalog_special_txtbg2 // Place normal text in page_text_teaser',
    `page_text1` text DEFAULT NULL,
    `page_text2` text DEFAULT NULL,
    `page_text_details` text DEFAULT NULL,
    `page_text_teaser` text DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_pages_bc: 0 rows
/*!40000 ALTER TABLE `catalog_pages_bc` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_pages_bc` ENABLE KEYS */;

-- Dumping structure for table test.catalog_target_offers
DROP TABLE IF EXISTS `catalog_target_offers`;
CREATE TABLE IF NOT EXISTS `catalog_target_offers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `offer_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `description` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `image` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
    `end_timestamp` int(11) NOT NULL,
    `credits` int(5) NOT NULL DEFAULT 10,
    `points` int(5) NOT NULL DEFAULT 10,
    `points_type` int(3) NOT NULL DEFAULT 5,
    `purchase_limit` int(2) NOT NULL DEFAULT 5,
    `catalog_item` int(11) NOT NULL,
    `vars` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'List of strings seperated by a ;',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.catalog_target_offers: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_target_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_target_offers` ENABLE KEYS */;

-- Dumping structure for table test.chatlogs_private
DROP TABLE IF EXISTS `chatlogs_private`;
CREATE TABLE IF NOT EXISTS `chatlogs_private` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_from_id` int(11) NOT NULL,
    `user_to_id` int(11) NOT NULL,
    `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `timestamp` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `id` (`id`) USING BTREE,
    KEY `user_from_id` (`user_from_id`) USING BTREE,
    KEY `user_to_id` (`user_to_id`) USING BTREE,
    KEY `message` (`message`(250)) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.chatlogs_private: 0 rows
/*!40000 ALTER TABLE `chatlogs_private` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatlogs_private` ENABLE KEYS */;

-- Dumping structure for table test.chatlogs_room
DROP TABLE IF EXISTS `chatlogs_room`;
CREATE TABLE IF NOT EXISTS `chatlogs_room` (
    `room_id` int(11) NOT NULL DEFAULT 0,
    `user_from_id` int(11) NOT NULL,
    `user_to_id` int(11) NOT NULL DEFAULT 0,
    `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `timestamp` int(32) NOT NULL,
    KEY `user_from_id` (`user_from_id`) USING BTREE,
    KEY `timestamp` (`timestamp`) USING BTREE,
    KEY `user_to_id` (`user_to_id`) USING BTREE,
    KEY `message` (`message`(250)) USING BTREE,
    KEY `room_id` (`room_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.chatlogs_room: 0 rows
/*!40000 ALTER TABLE `chatlogs_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatlogs_room` ENABLE KEYS */;

-- Dumping structure for table test.commandlogs
DROP TABLE IF EXISTS `commandlogs`;
CREATE TABLE IF NOT EXISTS `commandlogs` (
    `user_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL,
    `command` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `params` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `succes` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
    KEY `user_id` (`user_id`) USING BTREE,
    KEY `user_data` (`user_id`,`timestamp`) USING BTREE,
    KEY `command` (`command`(250)) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.commandlogs: 0 rows
/*!40000 ALTER TABLE `commandlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandlogs` ENABLE KEYS */;

-- Dumping structure for table test.crafting_altars_recipes
DROP TABLE IF EXISTS `crafting_altars_recipes`;
CREATE TABLE IF NOT EXISTS `crafting_altars_recipes` (
    `altar_id` int(11) NOT NULL,
    `recipe_id` int(11) NOT NULL,
    UNIQUE KEY `altar_id` (`altar_id`,`recipe_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.crafting_altars_recipes: 0 rows
/*!40000 ALTER TABLE `crafting_altars_recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `crafting_altars_recipes` ENABLE KEYS */;

-- Dumping structure for table test.crafting_recipes
DROP TABLE IF EXISTS `crafting_recipes`;
CREATE TABLE IF NOT EXISTS `crafting_recipes` (
    `id` int(11) NOT NULL,
    `product_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'WARNING! This field must match a entry in your productdata or crafting WILL NOT WORK!',
    `reward` int(11) NOT NULL,
    `enabled` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `achievement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `secret` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `limited` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `remaining` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `id` (`id`) USING BTREE,
    KEY `name` (`product_name`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.crafting_recipes: 0 rows
/*!40000 ALTER TABLE `crafting_recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `crafting_recipes` ENABLE KEYS */;

-- Dumping structure for table test.crafting_recipes_ingredients
DROP TABLE IF EXISTS `crafting_recipes_ingredients`;
CREATE TABLE IF NOT EXISTS `crafting_recipes_ingredients` (
    `recipe_id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL,
    `amount` int(11) NOT NULL DEFAULT 1
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.crafting_recipes_ingredients: 0 rows
/*!40000 ALTER TABLE `crafting_recipes_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `crafting_recipes_ingredients` ENABLE KEYS */;

-- Dumping structure for table test.emulator_errors
DROP TABLE IF EXISTS `emulator_errors`;
CREATE TABLE IF NOT EXISTS `emulator_errors` (
    `id` int(16) NOT NULL AUTO_INCREMENT,
    `timestamp` int(32) NOT NULL DEFAULT 0,
    `version` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
    `build_hash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Exception',
    `stacktrace` blob NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.emulator_errors: 0 rows
/*!40000 ALTER TABLE `emulator_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `emulator_errors` ENABLE KEYS */;

-- Dumping structure for table test.emulator_settings
DROP TABLE IF EXISTS `emulator_settings`;
CREATE TABLE IF NOT EXISTS `emulator_settings` (
    `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`key`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.emulator_settings: 329 rows
/*!40000 ALTER TABLE `emulator_settings` DISABLE KEYS */;
INSERT INTO `emulator_settings` (`key`, `value`) VALUES
	('hotel.home.room', '0'),
	('hotel.welcome.alert.enabled', '0'),
	('hotel.welcome.alert.message', 'Welcome to GTX Hotel %user%!'),
	('hotel.max.duckets', '9000000'),
	('hotel.bots.max.room', '10'),
	('hotel.bots.max.inventory', '25'),
	('hotel.navigator.owner', 'GTX-Hotel'),
	('hotel.shop.discount.modifier', '6'),
	('hotel.log.room.enter', '1'),
	('hotel.log.chat', '1'),
	('hotel.teleport.locked.allowed', '1'),
	('runtime.threads', '8'),
	('io.bossgroup.threads', '1'),
	('io.workergroup.threads', '5'),
	('hotel.log.chat.private', '1'),
	('hotel.marketplace.enabled', '1'),
	('hotel.ecotron.enabled', '1'),
	('hotel.ecotron.rarity.chance.5', '2000'),
	('hotel.ecotron.rarity.chance.4', '200'),
	('hotel.ecotron.rarity.chance.3', '40'),
	('hotel.ecotron.rarity.chance.2', '4'),
	('hotel.ecotron.rarity.chance.1', '1'),
	('hotel.pets.name.length.min', '3'),
	('hotel.pets.name.length.max', '15'),
	('hotel.pets.max.room', '10'),
	('hotel.pets.max.inventory', '25'),
	('hotel.freeze.points.freeze', '10'),
	('hotel.freeze.points.block', '1'),
	('hotel.freeze.points.effect', '3'),
	('hotel.freeze.powerup.chance', '33'),
	('hotel.freeze.powerup.max.snowballs', '5'),
	('hotel.freeze.powerup.max.lives', '3'),
	('hotel.freeze.onfreeze.loose.snowballs', '5'),
	('hotel.freeze.onfreeze.loose.explosionboost', '3'),
	('hotel.freeze.onfreeze.time.frozen', '5'),
	('hotel.freeze.powerup.protection.time', '10'),
	('hotel.gifts.special.price', '10'),
	('hotel.freeze.powerup.protection.stack', '1'),
	('callback.post.errors', '1'),
	('callback.post.statistics', '1'),
	('callback.get.version', '1'),
	('hotel.banzai.points.tile.steal', '0'),
	('hotel.banzai.points.tile.fill', '0'),
	('hotel.banzai.points.tile.lock', '1'),
	('hotel.friendcategory', '0'),
	('hotel.roomuser.idle.cycles', '300'),
	('hotel.wordfilter.enabled', '1'),
	('hotel.wordfilter.rooms', '1'),
	('hotel.wordfilter.messenger', '1'),
	('notify.staff.chat.auto.report', '1'),
	('hotel.wordfilter.normalise', '1'),
	('hotel.roomuser.idle.not_dancing.ignore.wired_idle', '0'),
	('pyramids.max.delay', '18'),
	('guardians.minimum.votes', '5'),
	('guardians.accept.timer', '90'),
	('guardians.maximum.resends', '2'),
	('guardians.maximum.guardians.total', '10'),
	('guardians.reporting.cooldown', '900'),
	('pirate_parrot.message.count', '6'),
	('pirate_parrot.message.bubble', '28'),
	('furniture.talking.range', '2'),
	('commands.cmd_chatcolor.banned_numbers', '23;33;34'),
	('seasonal.primary.type', '5'),
	('seasonal.types', '0;1;2;3;4;5;101;102;103;104;105'),
	('catalog.ltd.page.soldout', '761'),
	('bots.visitor.dateformat', 'dd-mm-yyyy HH:mm'),
	('wired.highscores.displaycount', '25'),
	('hotelview.promotional.points.type', '5'),
	('hotelview.promotional.reward.name', 'bonusbag20_2'),
	('hotelview.promotional.reward.id', '11043'),
	('hotelview.promotional.points', '100'),
	('commands.cmd_staffonline.min_rank', '2'),
	('bundle.bots.enabled', '1'),
	('bundle.pets.enabled', '1'),
	('hotel.trading.enabled', '1'),
	('wired.effect.teleport.delay', '100'),
	('hotel.roomuser.idle.cycles.kick', '900'),
	('imager.location.badgeparts', '/var/www/vhosts/gtx-hotel/static/public/c_images/Badgeparts'),
	('imager.location.output.badges', '/var/www/vhosts/gtx-hotel/static/public/c_images/Badgeparts/generated/'),
	('imager.internal.enabled', '1'),
	('db.min.partition.size', '1'),
	('db.max.partition.size', '2'),
	('hotel.auto.pixels.enabled', '1'),
	('hotel.auto.pixels.amount', '100'),
	('hotel.auto.pixels.interval', '600'),
	('hotel.auto.pixels.ignore.idled', '1'),
	('hotel.auto.pixels.ignore.hotelview', '1'),
	('hotel.auto.points.enabled', '1'),
	('hotel.auto.points.amount', '5'),
	('hotel.auto.points.interval', '600'),
	('hotel.auto.points.ignore.idled', '0'),
	('hotel.auto.points.ignore.hotelview', '0'),
	('hotel.auto.credits.enabled', '1'),
	('hotel.auto.credits.amount', '100'),
	('hotel.auto.credits.interval', '600'),
	('hotel.auto.credits.ignore.idled', '0'),
	('hotel.auto.credits.ignore.hotelview', '1'),
	('hotel.max.bots.room', '10'),
	('hotel.messenger.offline.messaging.enabled', '1'),
	('hotel.catalog.discounts.amount', '6'),
	('hotel.rooms.auto.idle', '1'),
	('hotel.room.enter.logs', '1'),
	('debug.mode', '0'),
	('debug.show.packets', '0'),
	('debug.show.packets.undefined', '0'),
	('debug.show.sql.exception', '0'),
	('logging.packets', '0'),
	('logging.packets.undefined', '0'),
	('logging.errors.packets', '0'),
	('logging.errors.sql', '1'),
	('logging.errors.runtime', '1'),
	('logging.debug', '0'),
	('save.room.chats', '1'),
	('save.private.chats', '1'),
	('marketplace.enabled', '1'),
	('hotel.navigator.camera', '1'),
	('camera.enabled', '1'),
	('camera.price.credits', '2'),
	('camera.price.points', '0'),
	('camera.price.points.publish', '10'),
	('camera.item_id', '45970'),
	('camera.extradata', '{"t":%timestamp%, "u":"%id%", "s":%room_id%, "w":"%url%"}'),
	('hotel.navigator.search.maxresults', '35'),
	('hotel.rooms.max.favorite', '30'),
	('catalog.guild.price', '10'),
	('hotel.catalog.recycler.enabled', '1'),
	('debug.show.errors', '0'),
	('hotel.wired.furni.selection.count', '5'),
	('pathfinder.step.maximum.height', '1.1'),
	('pathfinder.step.allow.falling', '1'),
	('hotel.rooms.handitem.time', '100'),
	('imager.url.youtube', 'imager.php?url=http://img.youtube.com/vi/%video%/default.jpg'),
	('hotel.navigator.popular.amount', '35'),
	('hotel.navigator.popular.listtype', '1'),
	('hotel.inventory.max.items', '7500'),
	('hotel.bot.chat.minimum.interval', '5'),
	('hotel.daily.respect', '3'),
	('hotel.daily.respect.pets', '3'),
	('hotel.refill.daily', '86400'),
	('monsterplant.seed.item_id', '4582'),
	('monsterplant.seed_rare.item_id', '4604'),
	('hotel.room.public.doortile.kick', '0'),
	('info.shown', '1'),
	('camera.publish.delay', '180'),
	('hotel.log.trades', '1'),
	('hotel.bot.butler.servedistance', '5'),
	('hotelview.halloffame.query', 'SELECT users.look, users.username, users.id, users_settings.hof_points FROM users_settings INNER JOIN users ON users_settings.user_id = users.id WHERE hof_points > 0 ORDER BY hof_points DESC, users.id ASC LIMIT 10'),
	('hotel.name', 'Habbo Hotel'),
	('hotel.player.name', 'Habbo'),
	('catalog.page.vipgifts', '0'),
	('hotel.rollers.speed.maximum', '100'),
	('seasonal.currency.ducket', '0'),
	('seasonal.currency.pixel', '0'),
	('seasonal.currency.diamond', '5'),
	('seasonal.currency.shell', '4'),
	('seasonal.currency.names', 'ducket;pixel;shell;diamond'),
	('hotel.room.tags.staff', 'staff;official;habbo'),
	('hotel.navigator.popular.category.maxresults', '10'),
	('debug.show.users', '0'),
	('room.chat.delay', '0'),
	('room.chat.prefix.format', '[<font color="%color%">%prefix%</font>] '),
	('camera.use.https', '1'),
	('basejump.url', 'http://localhost/game/BaseJump.swf'),
	('basejump.assets.url', 'http://localhost/gamecenter/gamecenter_basejump/BasicAssets.swf'),
	('hotel.marketplace.currency', '0'),
	('networking.tcp.proxy', '0'),
	('hotel.calendar.enabled', '0'),
	('images.gamecenter.snowwar', 'c_images/gamecenter_snowwar/'),
	('images.gamecenter.basejump', 'c_images/gamecenter_basejump/'),
	('hotel.purchase.ltd.limit.daily.total', '10'),
	('hotel.purchase.ltd.limit.daily.item', '3'),
	('hotel.catalog.ltd.limit.enabled', '1'),
	('hotel.welcome.alert.oldstyle', '0'),
	('hotel.welcome.alert.delay', '10000'),
	('hotel.calendar.starttimestamp', '1593561600'),
	('hotel.room.nooblobby', '3'),
	('hotel.floorplan.max.widthlength', '64'),
	('hotel.floorplan.max.totalarea', '4096'),
	('hotel.bot.max.chatlength', '120'),
	('hotel.bot.max.namelength', '15'),
	('hotel.bot.max.chatdelay', '604800'),
	('hotel.chat.max.length', '100'),
	('hotel.view.ltdcountdown.enabled', '1'),
	('hotel.view.ltdcountdown.timestamp', '1519496132'),
	('hotel.view.ltdcountdown.itemid', '10388'),
	('hotel.view.ltdcountdown.pageid', '13'),
	('hotel.view.ltdcountdown.itemname', 'trophy_netsafety_0'),
	('io.client.multithreaded.handler', '1'),
	('hotel.room.stickypole.prefix', '%timestamp%, %username%:\\r'),
	('hotel.trading.requires.perk', '0'),
	('hotel.targetoffer.id', '1'),
	('hotel.wordfilter.replacement', 'bobba'),
	('debug.show.headers', '0'),
	('hotel.catalog.purchase.cooldown', '1'),
	('hotel.catalog.items.display.ordernum', '1'),
	('hotel.talenttrack.enabled', '1'),
	('hotel.navigator.sort.ordernum', '1'),
	('hotel.wordfilter.automute', '1'),
	('hotel.furni.gym.achievement.olympics_c16_trampoline', 'Trampolinist'),
	('hotel.furni.gym.achievement.olympics_c16_crosstrainer', 'CrossTrainer'),
	('hotel.furni.gym.achievement.olympics_c16_treadmill', 'Jogger'),
	('hotel.furni.gym.forcerot.olympics_c16_trampoline', '0'),
	('hotel.furni.gym.forcerot.olympics_c16_crosstrainer', '1'),
	('hotel.furni.gym.forcerot.olympics_c16_treadmill', '1'),
	('hotel.messenger.search.maxresults', '50'),
	('hotel.alert.oldstyle', '0'),
	('hotel.navigator.staffpicks.categoryid', '1'),
	('hotel.room.rollers.norules', '0'),
	('postit.charlimit', '366'),
	('hotel.rooms.deco_hosting', '1'),
	('hotel.navigator.populartab.publics', '0'),
	('hotel.bot.butler.commanddistance', '5'),
	('catalog.guild.hc_required', '1'),
	('catalog.ltd.random', '1'),
	('commands.plugins.oldstyle', '0'),
	('scripter.modtool.tickets', '1'),
	('invisible.prevent.chat', '0'),
	('discount.max.allowed.items', '100'),
	('discount.batch.size', '6'),
	('discount.batch.free.items', '1'),
	('discount.bonus.min.discounts', '1'),
	('discount.additional.thresholds', '40;99'),
	('team.wired.update.rc-1', 'DO NOT REMOVE THIS SETTING!'),
	('hotel.room.floorplan.check.enabled', '1'),
	('hotel.auto.gotwpoints.enabled', '0'),
	('hotel.auto.gotwpoints.interval', '600'),
	('hotel.auto.gotwpoints.ignore.idled', '1'),
	('hotel.auto.gotwpoints.ignore.hotelview', '1'),
	('hotel.auto.gotwpoints.type', '4'),
	('hotel.auto.gotwpoints.name', 'shell'),
	('camera.url', 'http://localhost/usercontent/camera/'),
	('imager.location.output.camera', '/var/www/vhosts/gtx-hotel/static/public/gamedata/camera/'),
	('imager.location.output.thumbnail', '/var/www/vhosts/gtx-hotel/static/public/gamedata/camera/thumbnail_'),
	('path.furniture.icons', '${image.library.url}/icons/'),
	('bubblealerts.notif_purchase.limited', '0'),
	('bubblealerts.notif_marketplace.enabled', '1'),
	('hotel.room.furni.max', '2500'),
	('hotel.sanctions.enabled', '1'),
	('navigator.eventcategories', '1,Hottest Events,false;2,Parties & Music,true;3,Role Play,true;4,Help Desk,true;5,Trading,true;6,Games,true;7,Debates & Discussions,true;8,Grand Openings,true;9,Friending,true;10,Jobs,true;11,Group Events,true'),
	('room.promotion.badge', 'RADZZ'),
	('camera.price.points.publish.type', '0'),
	('camera.price.points.type', '0'),
	('hotel.bot.placement.messages', 'Yo!;Hello I\'m a real party animal!;Hello!'),
	('rosie.bubble.image.url', '${image.library.url}notifications/generic.png'),
	('rosie.buyroom.currency.type', '5'),
	('allowed.username.characters', 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-=!?@:,.'),
	('essentials.cmd_kill.effect.victim', '93;89'),
	('essentials.cmd_kill.effect.killer', '164;182'),
	('bubblealerts.notif_friendonline.image', '${image.library.url}notifications/figure?p=%figure%'),
	('bubblealerts.notif_friendonline.useimage', '1'),
	('bubblealerts.notif_friendonline.enabled', '1'),
	('gamecenter.snowwar.enabled', 'true'),
	('gamecenter.snowwar.game.background.color', '93d4f3'),
	('gamecenter.snowwar.game.text.color', '000000'),
	('gamecenter.snowwar.game.start.time', '15'),
	('gamecenter.snowwar.players.min', '2'),
	('gamecenter.snowwar.room.id', '0'),
	('gamecenter.snowwar.assets', 'http://localhost/swf/c_images/gamecenter_snowwar/'),
	('gamecenter.snowwar.artic.bg', 'http://localhost/swf/c_images/gamecenter_snowwar/snst_bg_1_a_big.png'),
	('gamecenter.snowwar.dragoncave.bg', 'http://localhost/swf/c_images/gamecenter_snowwar/snst_bg_2_big.png'),
	('gamecenter.snowwar.fightnight.bg', 'http://localhost/swf/c_images/gamecenter_snowwar/snst_bg_3_noscale.png'),
	('gamecenter.fastfood.enabled', 'true'),
	('gamecenter.fastfood.background.color', '68bbd2'),
	('gamecenter.fastfood.text.color', 'ffffff'),
	('gamecenter.fastfood.assets', 'http://localhost/swf/c_images/gamecenter_basejump/'),
	('gamecenter.fastfood.apiKey', ''),
	('gamecenter.fastfood.theme', 'default'),
	('hotel.room.stickies.max', '200'),
	('retro.style.homeroom', '1'),
	('enc.enabled', '0'),
	('enc.e', ''),
	('enc.n', ''),
	('enc.d', ''),
	('db.pool.maxsize', '12'),
	('db.pool.minsize', '8'),
	('hotel.item.trap.pirate_sandtrap', '3000'),
	('hotel.item.trap.hween14_rare2', '3000'),
	('hotel.item.trap.hween_c17_handstrap', '3000'),
	('hotel.item.trap.hween_c17_spiketrap', '3000'),
	('flood.with.rights', '0'),
	('hotel.allow.ignore.staffs', '1'),
	('hotel.gifts.box_types', '0,1,2,3,4,5,6,8'),
	('hotel.gifts.ribbon_types', '0,1,2,3,4,5,6,7,8,9,10'),
	('hotel.flood.mute.time', '30'),
	('hotel.jukebox.limit.large', '20'),
	('hotel.jukebox.limit.normal', '10'),
	('apollyon.cooldown.amount', '250'),
	('ftp.enabled', '0'),
	('ftp.user', 'root'),
	('ftp.password', 'password123'),
	('ftp.host', 'example.com'),
	('hotel.room.rollers.roll_avatars.max', '1'),
	('hotel.nux.gifts.enabled', '0'),
	('subscriptions.hc.payday.enabled', '1'),
	('subscriptions.hc.payday.next_date', '2022-02-15 00:00:00'),
	('subscriptions.hc.payday.interval', '1 month'),
	('subscriptions.hc.payday.query', 'SELECT SUM(cost_credits) AS `amount_spent` FROM `logs_shop_purchases` WHERE `user_id` = @user_id AND `timestamp` > @timestamp_start AND `timestamp` <= @timestamp_end AND `catalog_name` NOT LIKE \'CF_%\' AND `catalog_name` NOT LIKE \'CFC_%\';'),
	('subscriptions.hc.payday.streak', '7=5;30=10;60=15;90=20;180=25;365=30'),
	('subscriptions.hc.payday.currency', 'credits'),
	('subscriptions.hc.payday.percentage', '10'),
	('subscriptions.hc.payday.creditsspent_reset_on_expire', '1'),
	('subscriptions.hc.achievement', 'VipHC'),
	('subscriptions.hc.discount.enabled', '1'),
	('subscriptions.hc.discount.days_before_end', '7'),
	('subscriptions.scheduler.enabled', '1'),
	('subscriptions.scheduler.interval', '10'),
	('hotel.users.clothingvalidation.onhcexpired', '0'),
	('hotel.users.clothingvalidation.onlogin', '0'),
	('hotel.users.clothingvalidation.onchangelooks', '0'),
	('hotel.users.clothingvalidation.onmimic', '0'),
	('hotel.users.clothingvalidation.onmannequin', '0'),
	('hotel.users.clothingvalidation.onfballgate', '0'),
	('gamedata.figuredata.url', 'https://webstatic.gtx-hotel.de/gamedata/figuredata.xml'),
	('hotel.users.max.friends', '300'),
	('hotel.users.max.friends.hc', '1100'),
	('hotel.users.max.rooms', '50'),
	('hotel.users.max.rooms.hc', '75'),
	('hotel.auto.pixels.hc_modifier', '1'),
	('hotel.auto.points.hc_modifier', '1'),
	('hotel.auto.credits.hc_modifier', '1'),
	('hotel.auto.gotwpoints.hc_modifier', '1'),
	('room.chat.mutearea.allow_whisper', '1'),
	('easter_eggs.enabled', '1'),
	('bubblealerts.enabled', '1'),
	('websockets.whitelist', 'game.gtx-hotel.de'),
	('ws.nitro.host', '145.239.104.223'),
	('ws.nitro.port', '3303'),
	('ws.nitro.ip.header', ''),
	('encryption.forced', '0');
/*!40000 ALTER TABLE `emulator_settings` ENABLE KEYS */;

-- Dumping structure for table test.emulator_texts
DROP TABLE IF EXISTS `emulator_texts`;
CREATE TABLE IF NOT EXISTS `emulator_texts` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(4096) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.emulator_texts: 786 rows
/*!40000 ALTER TABLE `emulator_texts` DISABLE KEYS */;
INSERT INTO `emulator_texts` (`key`, `value`) VALUES
	('commands.error.cmd_userinfo.forgot_username', 'Bitte gib einen Username an.'),
	('commands.description.cmd_userinfo', ':userinfo <username>'),
	('commands.description.cmd_shout_all', ':shoutall <message>'),
	('commands.description.cmd_say_all', ':sayall <message>'),
	('commands.error.cmd_shout_all.forgot_message', 'Specify a message!'),
	('commands.error.cmd_control.not_self', 'Du kannst den Command nicht an dir selbst nutzen.'),
	('commands.description.cmd_talk', ':talk <username> <message>'),
	('commands.error.cmd_control.not_found', '%user% konnte nicht gefunden werden!'),
	('commands.succes.cmd_control.controlling', 'Du steuerst nun den %user%!'),
	('commands.error.cmd_alert.forgot_username', 'Bitte gib einen Usernamen an.'),
	('commands.error.cmd_alert.forgot_message', 'Bitte gib eine Nachricht ein.'),
	('commands.succes.cmd_alert.message_send', 'Alert wurde an %user% gesendet!'),
	('commands.error.cmd_alert.user_offline', '%user% scheint nicht online zu sein.'),
	('commands.error.cmd_ban.forgot_user', 'Bitte gib einen Usernamen an.'),
	('commands.error.cmd_ban.forgot_time', 'Bitte gib die Zeit in Sekunden an.'),
	('commands.error.cmd_ban.invalid_time', 'Bitte gib eine gültige Zahl an.'),
	('commands.error.cmd_ban.time_to_short', 'Bannzeit muss länger als 600 Sekunden betragen (10 Minuten.)'),
	('commands.error.cmd_ban.ban_self', 'Du kannst dich nicht selbst bannen.'),
	('commands.error.cmd_ban.user_offline', 'Du kannst diesen User nicht bannen, da dieser offline ist.'),
	('commands.succes.cmd_ban.ban_issued', '%user% wurde für %time% Sekunden wegen %reason% gebannt!'),
	('commands.generic.cmd_coords.title', '<b>Deine aktuellen Koordinaten</b>'),
	('generic.rotation.head', 'Kopfdrehung'),
	('generic.rotation.body', 'Körperdrehung'),
	('generic.sitting', 'Sitting'),
	('generic.yes', 'Ja'),
	('generic.no', 'Nein'),
	('commands.generic.cmd_credits.received', 'Du hast %amount% Taler bekommen!'),
	('commands.succes.cmd_credits.send', '%amount% Taler wurden an %user% gesendet!'),
	('commands.error.cmd_credits.invalid_amount', 'Bitte nehme eine gültige Zahl.'),
	('commands.error.cmd_credits.user_offline', 'User %user% wurde nicht gefunden.'),
	('commands.error.cmd_disconnect.forgot_username', 'Bitte gib einen Usernamen an.'),
	('commands.error.cmd_disconnect.disconnect_self', 'Du kannst dich nicht selbst disconnecten!'),
	('commands.error.cmd_disconnect.user_offline', 'User nicht gefunden.'),
	('commands.succes.cmd_disconnect.disconnected', '%user% wurde disconnected!'),
	('commands.succes.cmd_freeze_bots.frozen', 'Bots sind nun eingefroren'),
	('commands.succes.cmd_freeze_bots.unfrozen', 'Bots können nun durch den Raum laufen.'),
	('generic.cannot_do_that', 'Das kannst du nicht machen.'),
	('commands.error.cmd_ha.forgot_message', 'Bitte gib eine Nachricht ein.'),
	('generic.pet.name', 'Name'),
	('generic.pet.age', 'Alter'),
	('generic.pet.level', 'Level'),
	('commands.generic.cmd_pet_info.stats', '<b>Haustier Statistik:</b>'),
	('generic.pet.scratches', 'Kratzer'),
	('generic.pet.energy', 'Energie'),
	('generic.pet.happyness', 'Glück'),
	('generic.pet.level.thirst', 'Durst'),
	('generic.pet.level.hunger', 'Hunger'),
	('generic.pet.current_action', 'Aktuelle Aktion'),
	('generic.can.walk', 'Kann laufen'),
	('generic.nothing', 'Nichts'),
	('commands.generic.cmd_pet_info.title', '<b>Haustier Info</b>'),
	('generic.pet.days.alive', 'Tage am leben.'),
	('commands.generic.cmd_duckets.received', 'Du hast %amount% Duckets bekommen!'),
	('commands.succes.cmd_duckets.send', '%amount% Duckets wurden an %user% gesendet!'),
	('commands.error.cmd_duckets.invalid_amount', 'Gib eine gültige Zahl ein.'),
	('commands.error.cmd_duckets.user_offline', 'User %user% wurde nicht gefunden.'),
	('commands.succes.cmd_update_catalog', 'Katalog wurde aktualisiert!'),
	('commands.succes.cmd_update_items', 'Items wurden aktualisiert!'),
	('commands.succes.cmd_update_permissions', 'Rechte wurden aktualisiert!'),
	('commands.succes.cmd_update_pet_data', 'Haustiere wurden aktualisiert!'),
	('error.recycler.box.empty', 'Ups! Diese Box scheint keinen Inhalt zu haben. Wir entfernen diese für dich.'),
	('error.catalog.buy.not_yet', 'Dies kannst du gerade nicht kaufen.'),
	('hotel.room.inappropriate.title', 'Inakzeptabel für das Hotelmanagement.'),
	('hotel.alert.message.welcome', 'Willkommen im BlackHabbo %user%!'),
	('commands.error.cmd_say.forgot_username', 'Gib einen Usernamen ein.'),
	('commands.error.cmd_say.user_not_found', 'User wurde nicht gefunden.'),
	('commands.error.cmd_say.hotel_view', '%user% ist nicht in diesem Raum!'),
	('commands.succes.cmd_say', '%user% sagt %message%'),
	('commands.error.cmd_shout.forgot_username', 'User wurde nicht gefunden.'),
	('commands.error.cmd_shout.hotel_view', '%user% ist nicht in diesem Raum!'),
	('commands.error.cmd_shout.user_not_found', 'User nicht gefunden'),
	('commands.succes.cmd_shout', '%user% sagt %message%'),
	('commands.error.cmd_setspeed.invalid_amount', 'Gib eine gültige Zahl ein.'),
	('commands.error.cmd_setspeed.bounds', 'Gib eine Zahl zwischen 0 und 100 ein.'),
	('commands.succes.cmd_setspeed', 'Ausgeführt! Alte Geschwindigkeit: %oldspeed%. Neue Geschwindigkeit: %newspeed%.'),
	('commands.succes.cmd_teleport.enabled', 'Teleport aktiviert!'),
	('commands.succes.cmd_teleport.disabled', 'Teleport deaktiviert!'),
	('error.pets.max.inventory', 'You\'ve reached the maximum amount of pets in your inventory! The Limit is %amount%!'),
	('commands.description.cmd_control', ':control <username>'),
	('commands.error.cmd_say_all.forgot_message', 'Gib eine Nachricht ein!'),
	('commands.succes.cmd_control.stopped', '%user% ist jetzt eine freie Person!'),
	('commands.error.cmd_points.invalid_amount', 'Gib eine gültige Zahl ein!'),
	('commands.error.cmd_points.user_offline', 'User %user% wurde nicht gefunden.'),
	('commands.succes.cmd_points.send', '%amount% %type% an %user% gesendet!'),
	('commands.generic.cmd_points.received', 'Du hast %amount% %type% bekommen!'),
	('commands.error.cmd_update_texts.failed', 'Server-Texte konnten nicht aktualisiert werden!'),
	('commands.succes.cmd_update_texts', 'Server-Texte wurden in der Datenbank aktualisiert!'),
	('commands.description.cmd_hand_item', ':handitem <itemid>'),
	('commands.description.cmd_freeze_bots', ':freezebots'),
	('commands.description.cmd_shout', ':makeshout <username> <text>'),
	('commands.description.cmd_points', ':points <username> <amount> [type]'),
	('commands.description.cmd_enable', ':enable <effect id>'),
	('commands.description.cmd_update_texts', ':update_texts'),
	('commands.description.cmd_ban', ':ban <username> <time in seconds>'),
	('commands.description.cmd_say', ':say <username> <text>'),
	('commands.description.cmd_update_permissions', ':update_permissions'),
	('commands.description.cmd_pet_info', ':petinfo <petname>'),
	('commands.description.cmd_setspeed', ':setspeed <speed>'),
	('commands.description.cmd_update_pet_data', ':update_petdata'),
	('commands.description.cmd_about', ':about'),
	('commands.description.cmd_alert', ':alert <username> <message>'),
	('commands.description.cmd_commands', ':commands'),
	('commands.description.cmd_coords', ':coords'),
	('commands.description.cmd_credits', ':credits <username> <amount>'),
	('commands.description.cmd_disconnect', ':disconnect <username>'),
	('commands.description.cmd_duckets', ':duckets <username> <amount>'),
	('commands.description.cmd_ha', ':ha <message>'),
	('commands.description.cmd_kickall', ':kickall <message>'),
	('commands.description.cmd_setpublic', ':setpublic'),
	('commands.description.cmd_shutdown', ':shutdown'),
	('commands.description.cmd_teleport', ':teleport'),
	('commands.description.cmd_unload', ':unload'),
	('commands.description.cmd_update_catalogue', ':update_catalog'),
	('commands.description.cmd_update_items', ':update_items'),
	('commands.error.cmd_userinfo.not_found', '%user% nicht gefunden!'),
	('commands.error.cmd_masscredits.invalid_amount', 'Gib eine gültige Zahl ein.'),
	('commands.error.cmd_massduckets.invalid_amount', 'Gib eine gültige Zahl ein.'),
	('commands.error.cmd_masspoints.invalid_amount', 'Gib eine gültige Zahl ein.'),
	('commands.description.cmd_masscredits', ':masscredits <amount>'),
	('commands.description.cmd_massduckets', ':massduckets <amount>'),
	('commands.description.cmd_masspoints', ':masspoints <amount> [type] '),
	('commands.description.cmd_sitdown', ':sitdown'),
	('commands.succes.cmd_pull.pull', '* Zieht %user% zu sich %gender_name% *'),
	('gender.him', ''),
	('gender.her', ''),
	('commands.error.cmd_pull.not_found', '%user% nicht gefunden!'),
	('commands.succes.cmd_push.push', '* Schubst %user% von sich %gender_name% *'),
	('commands.error.cmd_pull.cant_reach', 'User %user% ist zu weit weg!'),
	('commands.error.cmd_push.cant_reach', 'User %user% ist zu weit weg!'),
	('commands.description.cmd_pull', ':pull <username>'),
	('commands.description.cmd_push', ':push <username>'),
	('commands.error.cmd_pull.pull_self', 'Du kannst dich nicht selbst ziehen!'),
	('commands.error.cmd_push.push_self', 'Du kannst dich nicht selber schubsen!'),
	('commands.error.cmd_push.not_found', '%user% could not be found!'),
	('commands.description.cmd_superpull', ':spull <username>'),
	('commands.error.cmd_mute.not_found', '%user% nicht gefunden!'),
	('commands.error.cmd_danceall.invalid_dance', 'Gib eine gültige Zahl ein.'),
	('commands.error.cmd_danceall.outside_bounds', 'Benutze eine Zahl zwischen 0 und 4.'),
	('commands.error.cmd_freeze.not_found', 'User %user% konnte nicht gefunden werden.'),
	('commands.succes.cmd_freeze.user_frozen', 'User %user% eingefroren!'),
	('commands.succes.cmd_freeze.user_unfrozen', 'User %user% aufgetaut!'),
	('commands.succes.cmd_freeze.frozen', 'Du hast die Person eingefroren!'),
	('commands.succes.cmd_freeze.unfrozen', 'Du hast die Person aufgetaut!'),
	('commands.description.cmd_danceall', ':danceall <dance id>'),
	('commands.description.cmd_freeze', ':freeze <username>'),
	('commands.error.cmd_mimic.not_found', '%user% kann nicht gefunden werden!'),
	('commands.error.cmd_mimic.not_self', 'Du kannst dein Outfit nicht kopieren!'),
	('commands.description.cmd_mimic', ':mimic <username>'),
	('commands.error.cmd_mimic.blocked', 'Du kannst das Aussehen von %user% %gender_name% nicht kopieren!'),
	('commands.succes.cmd_mimic.copied', 'Du kopierst %user% %gender_name% Aussehen!'),
	('commands.error.cmd_mute.not_specified', 'Gib den Namen des Users an, welchen du stummschalten möchtest.'),
	('commands.succes.cmd_mute.muted', 'User %user% ist jetzt stummgeschalten.'),
	('commands.succes.cmd_mute.unmuted', 'User %user% wurde entstummt.'),
	('commands.error.cmd_mute.self', 'Du kannst dich nicht selber stummschalten. '),
	('commands.description.cmd_mute', ':mute <username>'),
	('commands.error.cmd_badge.forgot_username', 'Gib den Namen des Users an, welchem du das Badge schicken möchtest.'),
	('commands.error.cmd_badge.forgot_badge', 'Gib den richtigen Badgecode ein um dieses an %user% zu senden.'),
	('commands.error.cmd_badge.already_owns', '%user% besitzt %badge% bereits.'),
	('commands.succes.cmd_badge.given', 'Du hast das Badge %badge% an %user% gesendet!'),
	('commands.description.cmd_badge', ':badge <username> <badge>'),
	('commands.error.cmd_enable.not_allowed', 'Du hast keine Rechte für diesen Effekt!'),
	('commands.keys.cmd_about', 'info;about;help'),
	('commands.keys.cmd_alert', 'alert;warning'),
	('commands.keys.cmd_badge', 'badge;givebadge'),
	('commands.keys.cmd_ban', 'ban'),
	('commands.keys.cmd_commands', 'commands;cmds'),
	('commands.keys.cmd_control', 'control'),
	('commands.keys.cmd_coords', 'coords;cordinates;coordinates;position'),
	('commands.keys.cmd_credits', 'credits;coins'),
	('commands.keys.cmd_disconnect', 'dc;disconnect;kill'),
	('commands.keys.cmd_enable', 'enable;effect'),
	('commands.keys.cmd_freeze_bots', 'freeze_bot;freezebot;freezebots;freeze_bots'),
	('commands.keys.cmd_freeze', 'freeze'),
	('commands.keys.cmd_hand_item', 'handitem;item;hand'),
	('commands.keys.cmd_ha', 'hotelalert;ha'),
	('commands.keys.cmd_masscredits', 'mass_credits;masscredits'),
	('commands.keys.cmd_massduckets', 'mass_duckets;massduckets;mass_pixels;masspixels'),
	('commands.keys.cmd_masspoints', 'mass_points;masspoints'),
	('commands.keys.cmd_mimic', 'mimic;copy'),
	('commands.keys.cmd_mute', 'mute;shutup'),
	('commands.keys.cmd_pet_info', 'pet;pet_info;petinfo'),
	('commands.keys.cmd_duckets', 'pixels;duckets'),
	('commands.keys.cmd_points', 'diamonds;points'),
	('commands.keys.cmd_pull', 'pull'),
	('commands.keys.cmd_push', 'push'),
	('commands.keys.cmd_danceall', 'danceall;room_dance;roomdance'),
	('commands.keys.cmd_kickall', 'room_kick;kickall;roomkick;kick_all'),
	('commands.keys.cmd_say_all', 'sayall;say_all'),
	('commands.keys.cmd_say', 'say;makesay'),
	('commands.keys.cmd_setspeed', 'speed;setspeed'),
	('commands.keys.cmd_shout_all', 'shoutall;shout_all;roomshout;room_shout'),
	('commands.keys.cmd_shout', 'makeshout'),
	('commands.keys.cmd_shutdown', 'stop;shutdown'),
	('commands.keys.cmd_sitdown', 'sitall;sitdown'),
	('commands.keys.cmd_superpull', 'spull;superpull'),
	('commands.keys.cmd_teleport', 'tele;teleport'),
	('commands.keys.cmd_unload', 'crash;unload'),
	('commands.keys.cmd_update_catalogue', 'reload_catalogue;reload_cata;update_catalogue;update_cata;update_catalog;update_shop'),
	('commands.keys.cmd_update_items', 'update_items;reload_items'),
	('commands.keys.cmd_update_permissions', 'update_permissions;update_perms'),
	('commands.keys.cmd_update_pet_data', 'update_pet_data;update_petdata'),
	('commands.keys.cmd_update_texts', 'update_texts;reload_texts;aktualisiere_texte'),
	('commands.keys.cmd_userinfo', 'userinfo;user_info'),
	('commands.keys.cmd_sit', 'sit'),
	('commands.description.cmd_sit', ':sit'),
	('total', 'Total'),
	('generic.bot.name', 'Bot'),
	('generic.bot.id', 'ID'),
	('commands.description.cmd_bots', ':bots'),
	('commands.keys.cmd_bots', 'bots'),
	('generic.shutdown', 'Der Server wird heruntergefahren. Alle Änderungen werden ab jetzt nicht mehr gespeichert.'),
	('generic.reason.specified', 'Gib bitte einen Grund an!'),
	('generic.warning', 'WARNUNG!'),
	('wired.variable.username', '%username%'),
	('wired.variable.credits', '%credits%'),
	('wired.variable.points', '%points%'),
	('wired.variable.pixels', '%pixels%'),
	('commands.error.cmd_ban.target_rank_higher', 'Den Habbo welchen du bannen wolltest, hat einen höheren Rang als du.'),
	('commands.error.cmd_unban.not_specified', 'Gib den richtigen Usernamen an!'),
	('commands.error.cmd_unban.success', '%user% wurde im Hotel entbannt.'),
	('commands.error.cmd_unban.not_found', 'Keine Banns für %user% gefunden.'),
	('unbanned', 'entbannt'),
	('commands.description.cmd_unban', ':unban <username>'),
	('commands.keys.cmd_unban', 'unban;entbannen'),
	('stalk.failed.same.room', '%user% ist bereits im gleichen Raum wie du!'),
	('commands.keys.cmd_trash', 'trash;tornado;sharknado'),
	('commands.succes.cmd_empty.cleared', 'Das gesamte Inventar wurde geleert!'),
	('commands.succes.cmd_empty.verify', 'Achtung! Du möchtest wirklich alle Items löschen? Schreibe :empty %generic.yes% um fortzufahren!'),
	('commands.succes.cmd_update_wordfilter', 'Der Wordfilter wurde aktualisiert!'),
	('warning.auto.report', 'Achtung! %user% löst den Wordfilter aus mit: %word%'),
	('commands.keys.cmd_empty', 'empty'),
	('commands.keys.update_wordfilter', 'update_wordfilter;update_filter;update_word_filter'),
	('commands.description.acc_debug', ':test [header] i:1 s:a b:1'),
	('commands.description.cmd_trash', ':trash'),
	('commands.description.cmd_update_wordfilter', ':update_word_filter'),
	('commands.keys.cmd_update_config', 'update_config;update_configuration'),
	('scripter.warning.room.delete', '%username% versucht den Raum %roomname% zu löschen, welcher %roomowner% gehört.'),
	('commands.succes.cmd_update_config', 'Konfiguration neu geladen!'),
	('commands.keys.cmd_update_guildparts', 'update_guildparts;update_guild_parts'),
	('commands.description.cmd_update_guildparts', ':update_guild_parts'),
	('commands.description.cmd_update_config', ':update_config'),
	('commands.description.cmd_empty', ':empty <username>'),
	('commands.keys.cmd_update_plugins', 'update_plugins;updateplugins'),
	('commands.description.cmd_update_plugins', ':update_plugins'),
	('commands.succes.cmd_update_plugins', 'Reloaded %count% plugins!'),
	('commands.keys.cmd_happyhour', 'happyhour;happy_hour'),
	('commands.error.cmd_danceall.no_dance', 'Wähle einen Tanz mit der Nummer zwischen 0 und 4!'),
	('commands.keys.cmd_roomeffect', 'roomeffect;room_effect'),
	('commands.error.cmd_roomeffect.no_effect', 'Kein Effekt gefunden!'),
	('commands.error.cmd_roomeffect.numbers_only', 'Nur Zahlen benutzen!'),
	('commands.error.cmd_roomeffect.positive', 'Nur richtige Zahlen nutzen!'),
	('commands.error.cmd_staffonline.numbers_only', 'Nur Zahlen bitte!'),
	('commands.error.cmd_staffonline.positive_only', 'Nur richtige Zahlen bitte!'),
	('commands.generic.cmd_staffonline.staffs', '<b>Staffs online:</b>'),
	('commands.description.cmd_staffonline', ':staffonline [minrank]'),
	('commands.description.cmd_roomeffect', ':roomeffect [effect id]'),
	('commands.keys.cmd_staffonline', 'staffonline;staffs'),
	('commands.description.cmd_happyhour', ':happyhour'),
	('commands.keys.cmd_summon', 'summon'),
	('commands.description.cmd_summon', ':summon <username>'),
	('commands.error.cmd_summon.forgot_username', 'Gib den Namen des Users an, welchen du teleportieren möchtest.'),
	('commands.error.cmd_summon.not_found', '%user% ist nicht online!'),
	('commands.generic.cmd_summon.same_room', '%user% ist schon in diesem Raum!'),
	('commands.succes.cmd_summon.summoned', '%user% wurde zu dir gezogen!'),
	('commands.generic.cmd_summon.been_summoned', 'Du wurdest von %user%! gezogen!'),
	('commands.generic.cmd_summon.summoning', '%user% wird zu dir teleportiert!'),
	('commands.error.cmd_roomitem.no_item', 'Diese Item ID gibt es nicht!'),
	('commands.error.cmd_roomitem.positive', 'Nur richtige Zahlen!'),
	('commands.succes.cmd_roomitem.given', 'Handitem %item% gegeben!'),
	('commands.succes.cmd_roomitem.removed', 'Handitems entfernt!'),
	('commands.keys.cmd_roomitem', 'roomitem;room_item'),
	('commands.description.cmd_roomitem', ':roomitem [itemid]'),
	('pirate_parrot.message.0', 'Arrr'),
	('pirate_parrot.message.1', 'Ahoi Matrose'),
	('pirate_parrot.message.2', 'Landratten in Sicht, Landratten in Sicht!'),
	('pirate_parrot.message.3', 'Kartoffeln?'),
	('commands.keys.cmd_chatcolor', 'chat;chatcolor'),
	('commands.error.cmd_chatcolor.numbers', 'Überprüfe die Zahl, welche du angegeben hast.'),
	('commands.error.cmd_chatcolor.no_number', 'Nutze eine gültige Farb-ID!'),
	('commands.error.cmd_chatcolor.banned', 'Sorry, diese Farbe ist nicht erlaubt.'),
	('commands.succes.cmd_chatcolor.set', 'Deine neue Chat-Farbe ist: %chat%'),
	('commands.succes.cmd_chatcolor.reset', 'Chat wurde zurück gesetzt.'),
	('commands.description.cmd_chatcolor', ':chat [colorid = 0]'),
	('commands.error.cmd_masspoints.invalid_type', 'Falsche Währung. Wähle aus zwischen: %types%'),
	('seasonal.name.0', 'Enten'),
	('seasonal.name.105', 'Diamanten'),
	('seasonal.name.101', 'Muscheln'),
	('seasonal.name.104', 'Wolken'),
	('seasonal.name.4', 'ERROR'),
	('commands.error.cmd_points.invalid_type', 'Falsche Währung. Wähle aus zwischen: %types%'),
	('pirate_parrot.message.4', 'Land in Sicht, Land in Sicht!'),
	('bots.visitor.no_visits', 'Es gab keine Besucher während deiner Abwesenheit.'),
	('bots.visitor.visits', 'Es waren %count% Besucher seit deiner Abwesenheit hier. Wenn ich sie dir verraten soll, schreib: %positive%'),
	('bots.visitor.list', 'Letzte Besuche %count% waren: %list%'),
	('generic.time.at', 'um'),
	('bots.butler.given', 'Hier ist dein %key% %username%'),
	('commands.keys.cmd_multi', 'multi'),
	('commands.description.cmd_multi', ':multi'),
	('commands.error.cmd_stalk.not_found', '%user% scheint offline zu sein!'),
	('commands.error.cmd_stalk.not_room', '%user% scheint in der Hotelansicht zu sein!'),
	('commands.generic.cmd_stalk.same_room', '%user% ist offenbar bereits im Raum!'),
	('commands.keys.cmd_stalk', 'stalk;follow;rape'),
	('commands.description.cmd_stalk', ':stalk <username>'),
	('commands.generic.cmd_summonrank.error', 'Das hat leider nicht funktioniert.'),
	('commands.keys.cmd_summonrank', 'summonrank;summonall'),
	('commands.description.cmd_summonrank', ':summonrank <rankid>'),
	('commands.generic.cmd_summon.self', 'Das hat leider nicht funktioniert.'),
	('commands.generic.cmd_stalk.self', 'Das hat leider nicht funktioniert.'),
	('commands.keys.cmd_bundle', 'bundle;roombundle'),
	('commands.description.cmd_bundle', ':bundle'),
	('commands.error.cmd_bundle.missing_params', 'Die richtige Verwendung ist :bundle <parent_id> <credits> <points> <points_type>'),
	('commands.error.cmd_bundle.duplicate', 'Ups! Es scheint, als wäre der Raum bereits im Angebot.'),
	('commands.error.cmd_mute.time', 'Die Stummschaltung muss länger als 1 Sekunde dauern.'),
	('scripter.warning.catalog.count', 'Achtung! %username% versucht %itemname% von %pagename% zu manipulieren.'),
	('scripter.warning.look.gender', 'Achtung! %username% versucht ein Script aus: \'%gender%\''),
	('scripter.warning.catalog.page', 'Achtung! %username% versucht einen Zugriff, auf eine für ihn verbotene Seite: %pagename%'),
	('scripter.warning.guild.buy.owner', 'Achtung! %username% versucht mehrere Räume %roomname% von %owner% zu kaufen.'),
	('scripter.warning.roomsettings.category.nonexisting', 'Achtung! %username% versucht seinen Raum in eine nicht vorhandene Kategorie zu ordnen.'),
	('scripter.warning.roomsettings.category.permission', 'Achtung! %username% versucht seinen Raum in eine verbotene Kategorie zu ordnen: %category%'),
	('commands.keys.cmd_event', 'event;roomevent'),
	('commands.description.cmd_event', ':event <text>'),
	('scripter.warning.catalog.badge_display', 'Achtung! %username% versucht eine Badge Vitrine mit dem Badge %badge% zu kaufen!'),
	('scripter.warning.modtools.alert', 'Achtung! %username% versucht einen Alert (\'%message%\') ohne Erlaubnis des MOD-Tools zu senden!'),
	('scripter.warning.modtools.ban', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools zu bannen!'),
	('scripter.warning.modtools.roomsettings', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools einen Raum zu bearbeiten.'),
	('scripter.warning.modtools.ticket.close', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools, Hilferufe zu schließen.'),
	('scripter.warning.modtools.kick', 'Achtung! %username% versucht User ohne Erlaubnis des MOD-Tools zu kicken.'),
	('scripter.warning.modtools.ticket.pick', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools Hilferufe zu bearbeiten.'),
	('scripter.warning.modtools.ticket.release', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools Hilferufe freizuschalten.'),
	('scripter.warning.modtools.chatlog', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools das Chatlog einzusehen.'),
	('scripter.warning.modtools.roominfo', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools die Rauminfo einzusehen.'),
	('scripter.warning.userinfo', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools Userinfos einzusehen.'),
	('scripter.warning.roomalert', 'Achtung! %username% versucht ohne Erlaubnis des MOD-Tools einen Raumalert zu senden.'),
	('commands.succes.cmd_blockalert', 'Alerts are now turned %state%'),
	('generic.on', 'on'),
	('generic.off', 'off'),
	('commands.keys.cmd_blockalert', 'blockalerts;blockalert;ignorealerts;ignore_alerts'),
	('commands.description.cmd_blockalert', ':blockalert'),
	('commands.keys.cmd_faceless', 'faceless;face'),
	('commands.description.cmd_faceless', ':faceless'),
	('commands.keys.cmd_moonwalk', 'moonwalk;mj;moon_walk'),
	('commands.description.cmd_moonwalk', ':moonwalk'),
	('commands.keys.cmd_fastwalk', 'fastwalk;supersonic'),
	('commands.description.cmd_fastwalk', ':fastwalk'),
	('commands.keys.cmd_redeem', 'redeem;exchange'),
	('commands.description.cmd_redeem', ':redeem'),
	('generic.redeemed', 'Redeemed: '),
	('generic.credits', 'Taler'),
	('generic.pixels', 'Duckets'),
	('commands.error.cmd_gift.not_a_number', 'Nur gültige Zahlen!'),
	('commands.keys.cmd_gift', 'gift'),
	('commands.error.cmd_gift.not_found', '%itemid% wurde nicht gefunden!'),
	('commands.error.cmd_gift.user_not_found', '%username% ist nicht online.'),
	('commands.succes.cmd_gift', 'Schickte %itemname% an %username%!'),
	('commands.description.cmd_gift', ':gift <username> <itemid>'),
	('commands.keys.cmd_massgift', 'massgift'),
	('commands.description.cmd_massgift', ':massgift <itemid>'),
	('commands.error.cmd_badge.already_owned', '%user% already owns %badge%'),
	('commands.error.cmd_massbadge.no_badge', 'Es wurde kein Badge ausgewählt!'),
	('commands.keys.cmd_massbadge', 'massbadge;hotelbadge'),
	('commands.generic.cmd_badge.received', 'Spitze! Du hast ein Badge erhalten!'),
	('commands.keys.cmd_pickall', 'pickall;pickupall'),
	('commands.keys.cmd_ejectall', '%itemid% wurde nicht gefunden!'),
	('commands.keys.cmd_update_bots', 'update_bots;updatebots'),
	('commands.description.cmd_ejectall', ':ejectall'),
	('commands.description.cmd_pickall', ':pickall'),
	('', ''),
	('commands.keys.cmd_staffalert', 'sa;staffalert'),
	('commands.generic.cmd_staffalert.title', '<b>Staff Alert:</b>'),
	('commands.error.cmd_staffalert.forgot_message', 'Bitte gib eine gültige Nachricht ein um diese an die Staffs zu senden!'),
	('commands.keys.cmd_plugins', 'plugins'),
	('commands.keys.cmd_update_hotel_view', 'update_view;update_hotel_view;update_hotelview'),
	('commands.description.cmd_update_hotel_view', ':update_hotel_view'),
	('commands.succes.cmd_update_hotel_view', 'Hotelansicht wurde aktualisiert.'),
	('commands.succes.cmd_bundle', 'Raumbündel erfolgreich mit der ID %id% generiert.'),
	('commands.error.cmd_kick.unkickable', '%username% kann nicht gekickt werden.'),
	('camera.disabled', 'Sorry! Die Funktion der Kamera ist deaktiviert.'),
	('commands.keys.cmd_update_navigator', 'update_navigator;update_nav'),
	('commands.succes.cmd_update_navigator', 'Navigator wurde aktualisiert.'),
	('commands.description.cmd_plugins', ':plugins'),
	('commands.description.cmd_massbadge', ':massbadge <badge>'),
	('commands.description.cmd_update_bots', ':update_bots'),
	('commands.description.cmd_update_navigator', ':update_navigator'),
	('commands.keys.cmd_ip_ban', 'ipban;banip;ip_ban;ban_ip'),
	('commands.description.cmd_ip_ban', ':ipban <username> [reason]'),
	('commands.keys.cmd_machine_ban', 'machineban;banmachine;banmac;macban'),
	('commands.description.cmd_machine_ban', ':machineban <username> [reason]'),
	('commands.keys.cmd_super_ban', 'superban;megaban'),
	('commands.description.cmd_super_ban', ':superban <username> [reason]'),
	('commands.succes.cmd_machine_ban', '%count% accounts have been MAC banned!'),
	('commands.succes.cmd_ip_ban', '%count% accounts have been IP banned!'),
	('commands.succes.cmd_super_ban', '%count% accounts have been Super banned!'),
	('commands.error.cmd_ip_ban.ban_self', 'Vorsicht! Du kannst deine eigene IP-Adresse nicht bannen!'),
	('commands.error.cmd_machine_ban.ban_self', 'Vorsicht! Du kannst deine eigene MAC-Adresse nicht bannen!'),
	('commands.error.cmd_super_ban.ban_self', 'Vorsicht! Du kannst dich nicht selbst bannen.'),
	('commands.succes.cmd_alert.cmd_connect_camera', 'Kamera neu gestartet!'),
	('commands.keys.cmd_connect_camera', 'connectcamera;connect_camera;cameraconnect'),
	('commands.error.cmd_disconnect.higher_rank', 'Achtung! Der Habbo, welchen du disconnecten möchtest besitzt einen höheren Rang.'),
	('commands.keys.cmd_diagonal', 'diagonal;disablediagonal;diagonally'),
	('commands.description.cmd_diagonal', ':diagonal'),
	('commands.succes.cmd_diagonal.disabled', 'Du läufst nicht länger diagonal.'),
	('commands.keys.cmd_word_quiz', 'wordquiz;quiz'),
	('commands.description.cmd_word_quiz', ':wordquiz <question>'),
	('scripter.warning.marketplace.forbidden', 'Achtung! %username% versuchte %itemname% für %credits% zu verkaufen, welches nicht auf dem Marktplatz erlaubt ist!'),
	('inventory.full', 'Du hast das Inventar-Limit erreicht. Leere dein Inventar mit :empty oder platziere Möbel in deinen Räumen.'),
	('commands.error.cmd_setmax.invalid_number', 'Ungültige Zahl. Wähle eine Zahl zwischen 0 und 9999.'),
	('commands.error.cmd_setmax.forgot_number', 'Ungültige Zahl. Versuche es erneut.'),
	('commands.keys.cmd_setmax', 'setmax;set_max'),
	('commands.description.cmd_setmax', ':setmax <amount>'),
	('commands.description.cmd_staffalert', ':sA <message>'),
	('commands.description.cmd_take_badge', ':takebadge <username> <badge>'),
	('commands.keys.cmd_take_badge', 'takebadge;take_badge;remove_badge;removebadge'),
	('commands.error.cmd_take_badge.forgot_badge', 'Kein Badge angegeben!'),
	('commands.error.cmd_take_badge.forgot_username', 'Kein Username angegeben!'),
	('commands.error.cmd_take_badge.no_badge', '%username% hat dieses Badge %badge% nicht.'),
	('commands.succes.cmd_take_badge', 'Das Badge wurde entfernt!'),
	('camera.permission', 'Du hast keine Berechtigung die Kamera zu nutzen.'),
	('floorplan.permission', 'Du hast keine Berechtigung den Floor-Editor zu nutzen.'),
	('commands.keys.cmd_update_polls', 'update_polls;reload_polls'),
	('commands.description.cmd_update_polls', ':update_polls'),
	('commands.keys.cmd_set_poll', 'setpoll;set_poll'),
	('commands.description.cmd_set_poll', ':setpoll <id>'),
	('commands.succes.cmd_set_poll', 'Raum Umfrage wurden aktualisiert.'),
	('commands.error.cmd_set_poll.invalid_number', 'Wähle eine gültige Zahl. Nutze 0 um die Umfrage zu stoppen.'),
	('commands.error.cmd_set_poll.missing_arg', 'Ungültige Umfrage ID. Nutze 0 um die Umfrage zu stoppen.'),
	('commands.keys.cmd_roomcredits', 'roomcredits;room_credits;roomcoins;room_coins'),
	('commands.description.cmd_roomcredits', ':roomcredits <amount>'),
	('commands.keys.cmd_roompixels', 'roompixels;room_pixels;roomduckets;room_duckets'),
	('commands.description.cmd_roompixels', ':roompixels <amount>'),
	('commands.keys.cmd_roomgift', 'roomgift;room_gift'),
	('commands.description.cmd_roomgift', ':roomgift <item_id> [message]'),
	('commands.succes.cmd_update_polls', 'Raum Umfragen wurden aktualisiert.'),
	('commands.error.cmd_set_poll.not_found', 'Umfrage %id% wurde nicht gefunden!'),
	('commands.error.cmd_unmute.not_specified', 'Es gibt keinen User zum entstummen.'),
	('commands.error.cmd_unmute.not_found', '%user% ist nicht online!'),
	('commands.succes.cmd_unmute', '%user% wurde entstummt!'),
	('commands.keys.cmd_unmute', 'unmute'),
	('commands.description.cmd_unmute', ':unmute <username>'),
	('commands.keys.cmd_give_rank', 'giverank;setrank;give_rank;set_rank'),
	('commands.description.cmd_give_rank', ':giverank <username> <rank>'),
	('commands.error.cmd_give_rank.not_found', 'Rang %id% konnte nicht gefunden werden'),
	('commands.succes.cmd_give_rank.updated', '%username% wurde der Rang %id% zugeordnet!'),
	('commands.error.cmd_give_rank.higher', 'Du kannst %username% keinen höheren Rang als dir geben.'),
	('commands.error.cmd_give_rank.user_offline', '%username% ist nicht online!'),
	('commands.error.cmd_give_rank.missing_rank', 'Fehlender Rang. Usage: '),
	('commands.error.cmd_give_rank.missing_username', 'Fehlender Username. Usage: '),
	('commands.generic.cmd_give_rank.new_rank', 'Dein Rang wurde zu %id% aktualisiert.'),
	('commands.keys.cmd_roommute', 'roommute;room_mute'),
	('commands.description.cmd_roommute', ':roommute'),
	('commands.succes.cmd_roommute.unmuted', 'Der Raum ist entstummt. Du kannst wieder reden!'),
	('commands.succes.cmd_roommute.muted', 'Der Raum ist stummgeschalten. Du kannst jetzt nicht reden!'),
	('commands.keys.cmd_lay', 'lay'),
	('commands.description.cmd_lay', ':lay'),
	('camera.wait', 'Warte %seconds% Sekunden bevor du ein neues Foto machen kannst.'),
	('loggedin.elsewhere', 'Huch! Du wurdest ausgeloggt, weil du dich wo anders eingeloggt hast.'),
	('commands.keys.cmd_mute_pets', 'mutepets;ignorepets;mute_pets;ignore_pets'),
	('commands.succes.cmd_mute_pets.ignored', 'Du ignorierst nun die Haustiere.'),
	('commands.succes.cmd_mute_pets.unignored', 'Du ignorierst nicht länger die Haustiere.'),
	('commands.keys.cmd_mute_bots', 'mutebots;ignorebots;mute_bots;ignore_bots'),
	('commands.succes.cmd_mute_bots.ignored', 'Du ignorierst nun die Bots.'),
	('commands.succes.cmd_mute_bots.unignored', 'Du ignorierst nicht länger die Bots.'),
	('commands.description.cmd_roomalert', ':roomalert <message>'),
	('commands.error.cmd_roomalert.empty', 'Gib eine Nachricht ein.'),
	('commands.keys.cmd_roomalert', 'roomalert;room_alert;ra'),
	('commands.keys.cmd_roompoints', 'roompoints;room_points'),
	('commands.generic.cmd_transform.title', 'Folgende Haustiere sind verfügbar:'),
	('commands.generic.cmd_transform.line', '%name%'),
	('commands.description.cmd_transform', ':transform <name> <race> <color>'),
	('commands.keys.cmd_transform', 'transform;becomepet'),
	('commands.description.cmd_connect_camera', ':connectcamera'),
	('commands.description.cmd_roompoints', ':roompoints <amount>'),
	('generic.gift.received.anonymous', 'Wow! Du hast ein Geschenk erhalten!'),
	('generic.gift.received', '%username% hat dir ein Geschenk geschickt.'),
	('generic.user.not_found', '%user% nicht gefunden.'),
	('commands.keys.cmd_reload_room', 'reload_room;reload;reloadroom'),
	('commands.description.cmd_reload_room', ':reload_room'),
	('scripter.warning.packet.closedice', 'Achtung! %username% versucht Möbel mithilfe von Würfeln zu manipulieren %id% %itemname%!'),
	('commands.succes.cmd_update_guildparts', 'Super! Das Gruppenbadge wurde aktualisiert und funktioniert nun wieder.'),
	('ban.info.user_id', 'User ID: '),
	('ban.info.type', 'Bann Kategorie: '),
	('ban.info.reason', 'Grund: '),
	('ban.info.staff_id', 'Staff ID: '),
	('ban.info.date_issued', 'Bann Datum: '),
	('ban.info.date_expire', 'Bann Ablaufdatum: '),
	('ban.info.ip', 'IP: '),
	('ban.info.machine', 'MAC: '),
	('command.cmd_userinfo.user_id', 'ID'),
	('command.cmd_userinfo.user_name', 'Username'),
	('command.cmd_userinfo.motto', 'Mission'),
	('command.cmd_userinfo.rank', 'Rang'),
	('command.cmd_userinfo.online', 'Online'),
	('command.cmd_userinfo.email', 'Email'),
	('command.cmd_userinfo.ip_register', 'Registrations-IP'),
	('command.cmd_userinfo.ip_current', 'Aktuelle IP'),
	('command.cmd_userinfo.banned', 'Gebannt'),
	('command.cmd_userinfo.currencies', 'Währung'),
	('command.cmd_userinfo.achievement_score', 'Aktivitätspunkte'),
	('command.cmd_userinfo.credits', 'Taler'),
	('command.cmd_userinfo.current_activity', 'Aktuelle Tätigkeit'),
	('command.cmd_userinfo.room', 'Raum'),
	('command.cmd_userinfo.respect_left', 'Verbleibende Lobe'),
	('command.cmd_userinfo.pet_respect_left', 'Verbleinde Krauler'),
	('command.cmd_userinfo.allow_trade', 'Handeln erlaubt'),
	('command.cmd_userinfo.allow_follow', 'Folgen erlaubt'),
	('command.cmd_userinfo.allow_friend_request', 'Freundschaftsanfragen erlaubt'),
	('command.cmd_userinfo.total_bans', 'Bannanzahl'),
	('command.cmd_userinfo.ban_info', 'Vorherige Bann Info'),
	('command.cmd_userinfo.userinfo', 'Userinfo'),
	('commands.error.cmd_pet_info.pet_not_found', '"Gib einen Haustier-Namen an!"'),
	('commands.description.cmd_hal', ':hal <url> <message>'),
	('commands.keys.cmd_hal', 'hal;halink'),
	('commands.succes.cmd_empty_bots.cleared', 'Bots wurden verschrottet!'),
	('commands.succes.cmd_empty_bots.verify', 'Achtung! Bist du dir sicher, dass du alle Bots entsorgen willst? Schreibe :emptybots %generic.yes% um fortzufahren!'),
	('commands.keys.cmd_empty_bots', 'emptybots;empty_bots;deletebots'),
	('commands.description.cmd_empty_bots', ':emptybots'),
	('commands.succes.cmd_empty_pets.cleared', 'Haustiere wurden freigelassen!'),
	('commands.succes.cmd_empty_pets.verify', 'Achtung! Bist du dir sicher, dass du alle Haustiere freilassen willst? Schreibe :emptypets %generic.yes% um fortzufahren!'),
	('commands.keys.cmd_empty_pets', 'emptypets;empty_pets;deletepets'),
	('commands.description.cmd_empty_pets', ':emptypets'),
	('nux.step.1', 'Dies ist der Hotelview-Button, er führt dich zur Hotelansicht!'),
	('nux.step.2', 'Das ist der Navigator, von hier kannst du andere Räume besuchen!'),
	('nux.step.3', 'Wenn du mit anderen reden möchtest, gib hier deine Nachricht ein!'),
	('nux.step.4', 'Hast du ein Gespräch verpasst? Hier kannst du alle Nachrichten lesen!'),
	('nux.step.5', 'Zeit für eine Veränderung? Hier kannst du dein Outfit zusammen stellen!'),
	('nux.step.6', 'Mach es dir gemütlich! Im Katalog kannst du dich mit Möbeln ausstatten.'),
	('nux.step.7', 'Möbelstücke können mit Talern bezahlt und gekauft werden.'),
	('nux.step.8', '...Duckets,'),
	('nux.step.9', 'oder Diamanten.'),
	('nux.step.10', 'Deine Freunde findest du hier!'),
	('nux.step.11', 'Na los! Fangen wir an, dass Hotel zu entdecken.'),
	('alert.superwired.invalid', 'Falsche Superwired Einstellung. Stelle sicher das der Befehl <b>;</b> im richtigen Feld eingetragen wurde.'),
	('commands.description.cmd_allow_trading', ':tradelock (Ein | Aus)'),
	('commands.keys.cmd_allow_trading', 'tradelock;blocktrading'),
	('commands.error.cmd_allow_trading.forgot_username', 'Gib den richtigen Namen an für welchen du das Tauschen erlauben oder deaktivieren willst!'),
	('commands.error.cmd_allow_trading.forgot_trade', 'Gib den richtigen Namen an für wen du das Tauschen freischalten möchtest %username%!'),
	('commands.succes.cmd_allow_trading.enabled', 'Tauschen wurde für %username% freigeschaltet!'),
	('commands.succes.cmd_allow_trading.disabled', 'Tauschen wurde für %username% deaktiviert!'),
	('commands.error.cmd_allow_trading.user_not_found', 'Dieser Habbo existiert nicht. Noch nicht!'),
	('commands.error.cmd_allow_trading.incorrect_setting', 'Bitte nutze %enabled% tum Tauschen zu aktivieren. Nutze %disabled% um es zu deaktivieren.'),
	('commands.error.cmd_give_rank.higher.other', '%username% besitzt einen höheren Rang. Du kannst dies also nicht tun.'),
	('commands.error.cmd_unmute.not_muted', '%user% ist entstummt.'),
	('supporttools.not_ticket_owner', 'Du besitzt keine Berechtigungen um Hilferufe zu bearbeiten.'),
	('commands.success.cmd_setmax', 'Mega! Es können nun %value% User in deinen Raum.'),
	('commands.description.cmd_changename', ':changename'),
	('commands.keys.cmd_changename', 'changename;flagme;change_name;namechange'),
	('commands.error.cmd_credits.user_not_found', 'Du konntest %amount% Taler nicht an %user% senden. %user% exestiert nicht.'),
	('commands.error.cmd_pull.invalid', 'Du kannst %username% nicht zu dir ziehen.'),
	('commands.error.cmd_push.invalid', 'Du kannst %username% nicht weg schubsen.'),
	('hotel.wired.superwired.info', 'Superwired Info: Belohnungen:<br/>badge: BADGE CODE<br/>Credits: credits#amount<br/>Pixels: pixels#amount<br/>Points: points#amount<br/>Respect: respect#amount<br/>Furniture: furni#FurnitureID<br/>Catalog Item: cata#CatalogItemID'),
	('hotel.wired.kickexception.unkickable', 'Wired Kick Exception: Nicht kickbar'),
	('hotel.wired.kickexception.owner', 'Wired Kick Exception: Raumbesitzer'),
	('error.catalog.buy.limited.daily.item', 'Du hast das Limit an %itemname% für den heutigen Tag mit %limit% überschritten. Komm morgen wieder.'),
	('error.catalog.buy.limited.daily.total', 'Du hast das Maximum an limitierten Möbeln mit %limit% für heute erreicht. Komm morgen wieder.'),
	('commands.keys.cmd_calendar', 'calendar'),
	('commands.description.cmd_calendar', ':calendar'),
	('scripter.warning.chat.length', '%username% versuchte eine Nachricht mit einer länge von %length% zu senden. Lediglich 100 Zeichen sind möglich.'),
	('commands.keys.cmd_invisible', 'invisible;hideme'),
	('commands.description.cmd_invisible', ':invisible'),
	('commands.succes.cmd_invisible.updated', 'Du bist jetzt unsichtbar, reloade den Raum um dies zu beenden.'),
	('commands.keys.cmd_hidewired', 'hidewired;hidemywired;wiredbegone'),
	('commands.succes.cmd_hidewired.hidden', 'Die Wireds sind nun versteckt.'),
	('commands.succes.cmd_hidewired.shown', 'Die Wireds werden wieder angezeigt.'),
	('commands.errors.cmd_hidewired.permission', 'Du hast keine Berechtigung um Wireds in diesem Raum zu verstecken.'),
	('support.ticket.picked.failed', 'Ups! <br>Der Hilferuf wird bereits bearbeitet oder wurde geschlossen.'),
	('camera.error.creation', 'Oh nein! Das Foto ist stecken geblieben! Es konnte nicht bearbeitet werden.'),
	('scripter.warning.sticky.size', 'Achtung! %username% versucht ein Notizzettel mit %amount% Zeichen zu schreiben. %limit% Zeichen sind erlaubt!'),
	('commands.keys.cmd_promote_offer', 'promoteoffer;promotetargetoffer;promote_offer'),
	('commands.description.cmd_promote_offer', ':promoteoffer <offer_id> [info]'),
	('commands.cmd_promote_offer.info', 'info'),
	('commands.error.cmd_promote_offer.not_found', 'Das Angebot konnte nicht gefunden werden. Nutze :promoteoffer info um eine Liste der aktuellen Angebot zu erhalten.'),
	('commands.cmd_promote_offer.list', 'Alle aktuellen Angebote: (%amount%):<br>%list%'),
	('commands.cmd_promote_offer.list.entry', '%id%: %title% %description%'),
	('commands.succes.cmd_promote_offer', 'Das angekündigte Angebot wurde geändert: %id%: %title%'),
	('commands.keys.cmd_filterword', 'filter;banword;filterword'),
	('commands.error.cmd_filterword.missing_word', 'Gib eine Alternative für das gesperrte Wort ein um dieses zu filtern.'),
	('commands.error.cmd_filterword.error', 'Das Wort konnte dem Wordfilter nicht hinzufügen werden. Ist dieses Wort bereits eingetragen?'),
	('commands.succes.cmd_filterword.added', 'Das Wort %word% im Wordfilter wurde mit dem Wort %replacement% zensiert!'),
	('commands.description.cmd_filterword', ':filter <word> [replacement]'),
	('debug.show.headers', ''),
	('generic.tile.not.exists', 'Diese Fliese exestiert nicht.'),
	('commands.errors.cmd_give_rank.not_found', 'Rang %id% konnte nicht an %username% gegeben werden. Dieser Rang exestiert nicht.'),
	('hotel.wired.giveachievement.invalid.points', 'Dies ist keine Zahl!'),
	('hotel.wired.giveachievement.invalid.achievement', '%achievement% exestiert nicht.'),
	('hotel.error.roomads.nopermission', 'Du kannst keine Room ADS bearbeiten.'),
	('commands.keys.cmd_update_achievements', 'uach;update_achievements'),
	('commands.description.cmd_update_achievements', ':update_achievements'),
	('commands.succes.cmd_update_achievements.updated', 'Erfolg wurde aktualisiert!'),
	('invisible.prevent.chat.error', 'Du bist unsichtbar und kannst dich deshalb nicht bewegen!'),
	('commands.succes.cmd_invisible.updated.back', 'Du bist wieder sichtbar.'),
	('commands.error.cmd_mimic.forbidden_clothing', 'Dieser User hat Kleider, welche du nicht besitzt.'),
	('commands.keys.cmd_update_youtube_playlists', 'update_youtube;update_youtube_playlists'),
	('commands.succes.cmd_update_youtube_playlists', 'Die YouTube Playlist wurde aktualisiert.'),
	('commands.keys.cmd_add_youtube_playlist', 'add_youtube;add_playlist;add_youtube_playlist'),
	('commands.error.cmd_add_youtube_playlist.usage', 'Usage: base_item_id youtube_playlist_id'),
	('commands.error.cmd_add_youtube_playlist.no_base_item', 'Das funktioniert leider nicht. Probiere es erneut.'),
	('commands.error.cmd_add_youtube_playlist.failed_playlist', 'Diese YouTube Playlist kann nicht abgespielt werden.'),
	('commands.succes.cmd_add_youtube_playlist', 'Die Playlist wurde erfolgreicht eingereiht.'),
	('generic.furniture.bought', 'Du hast %amount%%is_limited%%itemname%%limited_display% gekauft!'),
	('generic.furniture.sold', 'Das Item %item% ist ausverkauft. Klick hier um deine Taler zurückzuerhalten.'),
	('commands.generic.cmd_commands.text', 'Deine Commands'),
	('commands.keys.cmd_stand', 'stand'),
	('commands.description.cmd_setstate', ':ss'),
	('be.cmd_buildheight.invalid_height', 'Ungültige Höhe! Die Bau-Höhe muss zwischen 0 - 40 liegen!'),
	('be.cmd_buildheight.disabled', 'Bau-Höhe entfernt.'),
	('commands.description.cmd_buildheight', ':buildheight [Höhe]'),
	('be.cmd_setrotation.keys', 'rot;setrotation'),
	('be.cmd_setrotation.not_specified', 'Keine Rotation festgelegt. Muss zwischen 0 - 6 liegen.'),
	('be.cmd_setstate.changed', 'Zustand geändert in %extra_data%'),
	('be.cmd_setrotation.disabled', 'Möbel-Rotation entfernt.'),
	('commands.description.cmd_setrotation', ':rot;rotation'),
	('be.cmd_setrotation.changed', 'Möbel-Rotation geändert zu: %rot%.'),
	('be.cmd_buildheight.not_specified', 'Keine Bau-Höhe festgelegt. Die Bau-Höhe muss zwischen 0 - 40 liegen.'),
	('commands.description.cmd_buyroom', ':buyroom'),
	('commands.description.cmd_sellroom', ':sellroom <diamonds>'),
	('rosie.sellroom.keys', 'sellroom'),
	('rosie.sellroom.removed', 'Dieser Raum wurde aus dem Verkauf genommen.'),
	('rosie.sellroom.invalid_credits', '%diamonds% Diamanten sind ungültig.'),
	('rosie.sellroom.has_guild', 'Der Raum kann nicht verkauft werden. Lösche zuerst die vorhandene Gruppe.'),
	('rosie.sellroom.confirmed', 'Der Raum wird jetzt für %currency% Diamanten verkauft!'),
	('rosie.sellroom.usage', 'Schreibe: :sellroom <diamonds>'),
	('rosie.sellroom.forsale', 'Der Raum wird von %ownername% für %currency% Diamanten verkauft! Willst du ihn haben? Schreibe :buyroom confirm.'),
	('rosie.sellroom.notforsale', 'Dieser Raum wird nicht verkauft.'),
	('rosie.sellroom.confirmkey', 'confirm'),
	('rosie.buyroom.has_guild', 'Der Raum hat eine Gruppe und kann nicht gekauft werden.'),
	('rosie.sellroom.bubble.thisroom', 'Der Raum wird verkauft für %currency% Diamanten!'),
	('rosie.buyroom.bubble.message', 'Der Raum wurde von %oldowner% an %newowner% verkauft!'),
	('rosie.buyroom.bubble.message.bought', '%roomname% wurde von %newowner% gekauft!'),
	('rosie.buyroom.invalid_amount', 'Du hast nicht genügend Diamanten um diesen Raum zu kaufen.'),
	('rosie.sellroom.owneroffline', 'Der Besitzer dieses Raumes, %username%, ist offline.'),
	('rosie.sellroom.selfbuy', 'Huch! %username%. Du kannst deinen eigenen Raum nicht kaufen.'),
	('rosie.sellroom.buyroom.usage', 'Um einen Raum zu kaufen nutze :%key% %confirmkey%'),
	('rosie.buyroom.keys', 'buyroom'),
	('rosie.roomforsale.alert', 'Dieser Raum wird verkauft. Tippe :buyroom für mehr Informationen!'),
	('essentials.cmd_pay.keys', 'pay;transfer'),
	('essentials.cmd_pay.incorrect.usage', 'Du hast den Befehl falsch geschrieben! Schreibe ihn richtig.'),
	('commands.description.cmd_pay', ':pay <username> <amount> <currency>'),
	('generic.habbo.notfound', 'Habbo nicht gefunden.'),
	('essentials.cmd_pay.self', 'Du kannst dich nicht selber kaufen.'),
	('essentials.cmd_pay.invalid_amount', 'Falsche Anzahl. Nutze eine richtige Anzahl.'),
	('essentials.cmd_pay.not_enough', 'Du kannst %username% nicht bezahlen. Du hast nicht genügend %amount% %type%!'),
	('essentials.cmd_pay.invalid_type', ' %type% exestiert nicht.'),
	('essentials.cmd_pay.received', '%username% hat dir %amount% %type% gezahlt!'),
	('essentials.cmd_pay.transferred', 'Du hast %username% %amount% %type% bezahlt!'),
	('commands.description.cmd_kill', ':kill <username>'),
	('essentials.cmd_kill.keys', 'kill;murder'),
	('essentials.cmd_kill.killmessages.killer', '* ermordert %victim% *;* %victim% wurde von %killer% getötet*;* bringt %victim%s um die Ecke *'),
	('essentials.cmd_kill.killmessages.victim', '* verblutet gerade am Boden. *; * Oh nein. %killer% hat mich umgebracht. *'),
	('commands.description.cmd_hoverboard', ':hoverboard'),
	('essentials.cmd_hoverboard.keys', 'hoverboard'),
	('essentials.cmd_hoverboard.texts', '* Schnappt sich das Hoverboard und fliegt davon. *;* Springt auf das Hoverboard *;* Ein schöner Tag zum fliegen nicht wahr? *;* Packt das Hoverboard aus und erkundet jetzt das Hotel *'),
	('commands.description.cmd_kiss', ':kiss <username>'),
	('essentials.kissedmessages.kissedperson', '* %kissedperson% wurde von %kisser% geküsst *'),
	('essentials.kissedmessages.kisser', '* küsst %kissedperson% mit viel Leidenschaft *'),
	('essentials.cmd_kiss.keys', 'kiss;frenchkiss'),
	('essentials.kissmessages.tofar', '%kissedperson% ist zu weit weg um deine Liebe zu empfangen!'),
	('commands.description.cmd_hug', ':hug <username>'),
	('essentials.cmd_hug.keys', 'hug;cuddle'),
	('essentials.hugmessages.huggedperson', '* Bekommt eine liebevolle Umarmung von %hugger% *'),
	('essentials.hugmessages.hugger', '* umarmt %huggedperson% wärmend *'),
	('essentials.hugmessages.tofar', '%huggedperson% ist zu weit weg. Geh etwas näher ran und versuche es erneut!'),
	('commands.description.cmd_welcome', ':welcome <username>'),
	('essentials.cmd_welcome.keys', 'welcome;willkommen;welkom;bienvenue;bienvenida;bem-vindo'),
	('essentials.cmd_welcome.text', 'Hallo %username%! Willkommen im %hotelname%.;Mein Name ist %greeter_username% und ich bin %greeter_rank% im %hotelname%!;Momentan sind %onlinecount% %hotelplayername%s online!;Solltest du Fragen haben, kannst du dich jederzeit an mich oder einen Staff wenden.;Staffs tragen ein besonderes Badge, an welchem du sie erkennst.;Viel Spaß im %hotelname% %username%!'),
	('commands.description.cmd_disable_effects', ':disableffects'),
	('essentials.cmd_disable_effects.keys', 'antieffects;disableffects'),
	('essentials.cmd_disable_effects.effects_enabled', 'Effekt wurde in diesem Raum aktiviert.'),
	('essentials.cmd_disable_effects.effects_disabled', 'Effekt wurde in diesem Raum deaktiviert.'),
	('commands.description.cmd_brb', ':afk'),
	('essentials.cmd_brb.keys', 'afk;brb;'),
	('essentials.cmd_brb.brb', '* %username% ist jetzt abwesend! *'),
	('essentials.cmd_brb.back', '* %username% ist jetzt wieder zurück! *'),
	('essentials.cmd_brb.time', '* %username% ist seit %time% Minuten abwesend. *'),
	('commands.description.cmd_nuke', ':nuke <username>'),
	('essentials.cmd_nuke.keys', 'nuke;nade;grenade;explode;boom'),
	('essentials.nuke.self', 'Du kannst dich nicht selbst sprengen!'),
	('essentials.nuke.action', '* sprengt %username% in die Luft!*'),
	('essentials.nuke.nuked', '* %username% scheidete aus dieser Welt *'),
	('essentials.cmd_buildheight.keys', 'essentialsbuildheight'),
	('essentials.cmd_buildheight.invalid_height', '[essentials] Ungültige Höhe! Höhe muss zwischen 0 - 40 liegen!'),
	('essentials.cmd_buildheight.changed', '[essentials] Höhe geändert in %height%'),
	('essentials.cmd_buildheight.disabled', '[essentials] Höhe wurde zurückgesetzt.'),
	('essentials.cmd_buildheight.not_specified', '[essentials] Keine Höhe festgelegt. Höhe muss zwischen 0 - 40 liegen!'),
	('commands.description.cmd_slime', ':slime <username>'),
	('essentials.cmd_slime.keys', 'slime;slimed;goop;nickelodeon'),
	('essentials.cmd_slime.throws', '* wirft mit Schleim in %username%s Richtung *'),
	('essentials.cmd_slime.missed', '* verfehlte %username%s Gesicht *'),
	('essentials.cmd_slime.slimed', '* wurde von %username% in Schleim gehüllt*'),
	('commands.description.cmd_explain', ':explain <command>'),
	('essentials.cmd_explain.keys', 'explain;commandinfo;commandhelp;aliases'),
	('essentials.cmd_explain.help', 'Wähle einen Command, welchen du dir näher erklären lassen möchtest. Beispiel: :explain mimic'),
	('essentials.cmd_explain.notfound', 'Schade! \'%command%\'-command scheint nicht zu exestieren.'),
	('essentials.cmd_explain.nopermission', 'Du hast keine Berechtigung für %command%'),
	('essentials.cmd_explain.info', 'Informationen zum \'%command%\'-Command:\rUsage: %description%\rKeys / Aliases:%keys%'),
	('essentials.sellroom.keys', 'sellroom'),
	('essentials.sellroom.removed', 'Der Raum wurde aus dem Verkauf genommen.'),
	('essentials.sellroom.invalid_credits', '%credits% Taler sind ungültig.'),
	('essentials.sellroom.has_guild', 'Raum kann nicht verkauft werden, da dieser einer Gruppe gehört.'),
	('essentials.sellroom.confirmed', 'Der Raum wird nun für %credits% Taler verkauft!'),
	('essentials.sellroom.usage', 'Tippe: :sellroom <credits>'),
	('essentials.sellroom.forsale', 'Der Raum wird von %ownername% für %credits% Taler verkauft.'),
	('essentials.sellroom.notforsale', 'Dieser Raum wird nicht verkauft.'),
	('essentials.sellroom.confirmkey', 'confirm'),
	('essentials.buyroom.has_guild', 'Dieser Raum hat eine Gruppe und kann nicht verkauft werden.'),
	('essentials.sellroom.owneroffline', 'Der Besitzer %username% des Raumes ist offline.'),
	('essentials.sellroom.selfbuy', 'Huch! %username%. Du kannst deinen eigenen Raum nicht kaufen.'),
	('essentials.sellroom.buyroom.usage', 'Um einen Raum zu kaufen, tippe :%key% %confirmkey%'),
	('essentials.buyroom.keys', 'buyroom'),
	('commands.description.cmd_closedice', ':closedice [all]'),
	('essentials.cmd_closedice.keys', 'closedice;cd;sluitdices'),
	('essentials.cmd_closedice.keywordall', 'all'),
	('essentials.cmd_closedice.closed', '* Schließt %count% Würfel *'),
	('commands.description.cmd_set', ':set info'),
	('essentials.cmd_set.keys', 'set;changefurni'),
	('essentials.cmd_set.error', 'Tippe \':set info\' um mehr Informationen zu erhalten!'),
	('essentials.cmd_set.invalid', 'Falsche Item ID %value%'),
	('essentials.cmd_set.notfound', 'Item nicht gefunden.'),
	('essentials.cmd_set.wrong', 'Etwas ist schief gelaufen!'),
	('essentials.cmd_set.succes', 'Aktualisiert!'),
	('commands.description.cmd_furnidata', ':furnidata'),
	('furnidata.cmd_furnidata.keys', 'furnidata'),
	('furnidata.cmd_furnidata.on', 'Furnidata wurde erfolgreich aktiviert.'),
	('furnidata.cmd_furnidata.off', 'Furnidata wurde erfolgreich deaktiviert.'),
	('bubblealerts.notif_friendonline.message', '%username% hat sich eingeloggt. Sag Hallo!'),
	('bubblealerts.notif_mention.message', '%username% hat dich erwähnt. Klick hier um %username% in %room_name% zu folgen!'),
	('commands.keys.cmd_softkick', 'softkick'),
	('commands.error.cmd_softkick_not_found', '%user% nicht gefunden.'),
	('commands.error.cmd_softkick_error_self', 'Du kannst dich nicht selbst kicken.'),
	('scripter.warning.item.bgtoner.permission', 'Achtung! %username% versuchte den Raumhintergrund in %room% von %owner% zu ändern.'),
	('generic.error.ignore_higher_rank', 'Du kannst diesen User nicht ignorieren.'),
	('error.bots.max.inventory', 'Du kannst keine weiteren Bots aufnehmen. Das Maximum an Bots sind %amount%.'),
	('clickable_links.created.link', 'Link entdeckt!'),
	('clickable_links.created.link.press', 'Klick mich!'),
	('seasonal.name.5', 'Diamanten'),
	('seasonal.name.1', 'ERROR'),
	('seasonal.name.2', 'ERROR'),
	('seasonal.name.3', 'Geld'),
	('seasonal.name.102', 'Nüsse'),
	('seasonal.name.-1', 'Admin Taler'),
	('seasonal.name.103', 'Sterne'),
	('be.cmd_buildheight.keys', 'buildheight;bh;sh'),
	('be.cmd_buildheight.changed', 'Bau-Höhe gesetzt auf %height%.'),
	('commands.description.cmd_findfurni', ':findfurni'),
	('findfurni.cmd_findfurni.keys', 'findfurni'),
	('findfurni.cmd_findfurni.on', 'FindFurni Aktiviert!'),
	('findfurni.cmd_findfurni.off', 'FindFurni Deaktiviert!'),
	('findfurni.cmd_findfurni.clicked', 'Klicke hier um das Möbel aus dem Katalog zu kaufen!'),
	('findfurni.cmd_findfurni.rank', 'Dieses Möbel kannst du nicht kaufen!'),
	('commands.keys.cmd_leaderboard', 'leaderboard;lb;leader'),
	('habbopages.leaderboard.header', 'Leaderboard'),
	('habbopages.leaderboard.credits', 'Taler Leaderboard:'),
	('habbopages.leaderboard.duckets', 'Duckets Leaderboard:'),
	('habbopages.leaderboard.diamonds', 'Diamanten Leaderboard:'),
	('commands.keys.cmd_roompublic', 'roompublic'),
	('commands.description.cmd_roompublic', ':roompublic <roomid>'),
	('commands.error.cmd_roompublic.positive', 'Das ist keine gültige Room-ID!'),
	('commands.error.cmd_roompublic.no_roomid', 'Bitte gib eine Room-ID an'),
	('commands.error.cmd_roompublic.room_not_found', 'Room ID: %id% nicht gefunden!'),
	('commands.success.cmd_roompublic.set', 'Room ID: %id% wurde zu den öffentlich Räumen hinzugefügt: %status%'),
	('commands.description.cmd_hidewired', ':hidewireds (An | Aus)'),
	('commands.description.cmd_leaderboard', ':leaderboard'),
	('commands.description.cmd_update_youtube_playlists', ':update_youtube'),
	('commands.description.cmd_softkick', ':softkick'),
	('commands.keys.cmd_subscription', 'subscription;sub'),
	('commands.error.cmd_subscription.invalid_action', 'Invalid action specified. Must be add, +, remove or -'),
	('commands.description.cmd_add_youtube_playlist', ':add_youtube (base_item_id) (youtube_playlist_id)'),
	('commands.error.cmd_subscription.type_not_found', '%subscription% is not a valid subscription type'),
	('commands.error.cmd_subscription.invalid_params_time', 'Invalid time span, try: x minutes/days/weeks/months'),
	('commands.error.cmd_subscription.success_add_time', 'Successfully added %time% seconds to %subscription% on %user%'),
	('commands.error.cmd_subscription.user_not_have', '%user% does not have the %subscription% subscription'),
	('commands.error.cmd_subscription.success_remove_time', 'Successfully removed %time% seconds from %subscription% on %user%'),
	('commands.error.cmd_subscription.success_remove_sub', 'Successfully removed %subscription% sub from %user%'),
	('commands.error.cmd_subscription.user_not_found', '%user% was not found'),
	('commands.error.cmd_subscription.invalid_params', 'Invalid command format'),
	('subscriptions.hc.payday.message', 'Woohoo HC Payday has arrived! You have received %amount% credits to your purse. Enjoy!'),
	('hotel.room.tent.prefix', 'Tent'),
	('commands.error.cmd_roombadge.no_badge', 'No badge specified!'),
	('commands.keys.cmd_roombadge', 'roombadge'),
	('commands.description.cmd_roombadge', ':roombadge <badge>'),
	('wired.variable.name', '%name%'),
	('wired.variable.roomname', '%roomname%'),
	('wired.variable.user_count', '%user_count%'),
	('wired.variable.owner', '%owner%'),
	('wired.variable.item_count', '%item_count%'),
	('be.cmd_setstate.disabled', 'Zustand entfernt.'),
	('be.cmd_setstate.keys', 'ss;setstate'),
	('be.cmd_setstate.not_specified', 'Kein Zustand ausgewählt. Zustand muss zwischen 0 - 40 liegen.');
/*!40000 ALTER TABLE `emulator_texts` ENABLE KEYS */;

-- Dumping structure for table test.gift_wrappers
DROP TABLE IF EXISTS `gift_wrappers`;
CREATE TABLE IF NOT EXISTS `gift_wrappers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `sprite_id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL,
    `type` enum('gift','wrapper') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wrapper',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.gift_wrappers: 0 rows
/*!40000 ALTER TABLE `gift_wrappers` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_wrappers` ENABLE KEYS */;

-- Dumping structure for table test.groups_items
DROP TABLE IF EXISTS `groups_items`;
CREATE TABLE IF NOT EXISTS `groups_items` (
                                              `type` enum('base','symbol','color','color2','color3') COLLATE utf8mb4_unicode_ci NOT NULL,
    `id` int(255) NOT NULL,
    `firstvalue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `secondvalue` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
    `enabled` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    PRIMARY KEY (`id`,`type`) USING BTREE,
    KEY `type` (`type`) USING BTREE,
    KEY `id` (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.groups_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `groups_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_items` ENABLE KEYS */;

-- Dumping structure for table test.guilds
DROP TABLE IF EXISTS `guilds`;
CREATE TABLE IF NOT EXISTS `guilds` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `room_id` int(11) NOT NULL DEFAULT 0,
    `state` int(3) NOT NULL DEFAULT 0,
    `rights` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `color_one` int(11) NOT NULL DEFAULT 0,
    `color_two` int(11) NOT NULL DEFAULT 0,
    `badge` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `date_created` int(11) NOT NULL,
    `forum` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `read_forum` enum('EVERYONE','MEMBERS','ADMINS') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EVERYONE',
    `post_messages` enum('EVERYONE','MEMBERS','ADMINS','OWNER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EVERYONE',
    `post_threads` enum('EVERYONE','MEMBERS','ADMINS','OWNER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EVERYONE',
    `mod_forum` enum('ADMINS','OWNER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ADMINS',
    PRIMARY KEY (`id`) USING BTREE,
    KEY `id` (`id`) USING BTREE,
    KEY `data` (`room_id`,`user_id`) USING BTREE,
    KEY `name` (`name`) USING BTREE,
    KEY `description` (`description`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.guilds: ~2 rows (approximately)
/*!40000 ALTER TABLE `guilds` DISABLE KEYS */;
INSERT INTO `guilds` (`id`, `user_id`, `name`, `description`, `room_id`, `state`, `rights`, `color_one`, `color_two`, `badge`, `date_created`, `forum`, `read_forum`, `post_messages`, `post_threads`, `mod_forum`) VALUES
	(1, 2, 'GTX-Hotel', '', 0, 0, '0', 0, 0, '', 1641988151, '1', 'EVERYONE', 'EVERYONE', 'EVERYONE', 'OWNER'),
	(15, 2, 'Testroomgruppe', '', 1001, 0, '0', 91, 79, 'b011244s028094', 1642472140, '0', 'EVERYONE', 'EVERYONE', 'EVERYONE', 'ADMINS');
/*!40000 ALTER TABLE `guilds` ENABLE KEYS */;

-- Dumping structure for table test.guilds_elements
DROP TABLE IF EXISTS `guilds_elements`;
CREATE TABLE IF NOT EXISTS `guilds_elements` (
    `id` int(11) NOT NULL,
    `firstvalue` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
    `secondvalue` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `enabled` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    UNIQUE KEY `id` (`id`,`type`) USING BTREE,
    UNIQUE KEY `data` (`id`,`type`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.guilds_elements: ~480 rows (approximately)
/*!40000 ALTER TABLE `guilds_elements` DISABLE KEYS */;
INSERT INTO `guilds_elements` (`id`, `firstvalue`, `secondvalue`, `type`, `enabled`) VALUES
	(1, 'ffffff', '', 'background_color', '1'),
	(1, 'base_basic_1.gif', '', 'base', '1'),
	(1, 'ffd601', '', 'base_color', '1'),
	(1, 'symbol_background_1.gif', '', 'symbol', '1'),
	(1, 'ffffff', '', 'symbol_color', '1'),
	(2, 'e5e5e5', '', 'background_color', '1'),
	(2, 'base_basic_2.gif', '', 'base', '1'),
	(2, 'ec7600', '', 'base_color', '1'),
	(2, 'symbol_background_2.gif', '', 'symbol', '1'),
	(2, 'ebebeb', '', 'symbol_color', '1'),
	(3, 'bfbfbf', '', 'background_color', '1'),
	(3, 'base_basic_3.gif', '', 'base', '1'),
	(3, '84de00', '', 'base_color', '1'),
	(3, 'symbol_background_3_part2.gif', 'symbol_background_3_part1.gif', 'symbol', '1'),
	(3, 'd4d4d4', '', 'symbol_color', '1'),
	(4, '999999', '', 'background_color', '1'),
	(4, 'base_basic_4.gif', '', 'base', '1'),
	(4, '589a00', '', 'base_color', '1'),
	(4, 'symbol_ball_1_part2.gif', 'symbol_ball_1_part1.gif', 'symbol', '1'),
	(4, 'bdbdbd', '', 'symbol_color', '1'),
	(5, '737373', '', 'background_color', '1'),
	(5, 'base_basic_5.gif', '', 'base', '1'),
	(5, '50c1fb', '', 'base_color', '1'),
	(5, 'symbol_ball_2_part2.gif', 'symbol_ball_2_part1.gif', 'symbol', '1'),
	(5, 'a6a6a6', '', 'symbol_color', '1'),
	(6, '4c4c4c', '', 'background_color', '1'),
	(6, 'base_advanced_1.gif', '', 'base', '1'),
	(6, '006fcf', '', 'base_color', '1'),
	(6, 'symbol_bobba.gif', '', 'symbol', '1'),
	(6, '8f8f8f', '', 'symbol_color', '1'),
	(7, '589a00', '', 'background_color', '1'),
	(7, 'base_advanced_2.gif', '', 'base', '1'),
	(7, 'ff98e3', '', 'base_color', '1'),
	(7, 'symbol_bomb_part2.gif', 'symbol_bomb_part1.gif', 'symbol', '1'),
	(7, '787878', '', 'symbol_color', '1'),
	(8, '4f8a00', '', 'background_color', '1'),
	(8, 'base_advanced_3.gif', '', 'base', '1'),
	(8, 'f334bf', '', 'base_color', '1'),
	(8, 'symbol_bow.gif', '', 'symbol', '1'),
	(8, '616161', '', 'symbol_color', '1'),
	(9, '427300', '', 'background_color', '1'),
	(9, 'base_advanced_4.gif', '', 'base', '1'),
	(9, 'ff2d2d', '', 'base_color', '1'),
	(9, 'symbol_box_1.gif', '', 'symbol', '1'),
	(9, '4c4c4c', '', 'symbol_color', '1'),
	(10, '355c00', '', 'background_color', '1'),
	(10, 'base_gold_1_part2.gif', 'base_gold_1_part1.gif', 'base', '1'),
	(10, 'af0a0a', '', 'base_color', '1'),
	(10, 'symbol_box_2.gif', '', 'symbol', '1'),
	(10, '589a00', '', 'symbol_color', '1'),
	(11, '284500', '', 'background_color', '1'),
	(11, 'base_gold_2_part2.gif', 'base_gold_2_part1.gif', 'base', '1'),
	(11, 'ffffff', '', 'base_color', '1'),
	(11, 'symbol_bunting_1.gif', '', 'symbol', '1'),
	(11, '518e00', '', 'symbol_color', '1'),
	(12, '1a2e00', '', 'background_color', '1'),
	(12, 'base_pin_part2.gif', 'base_pin_part1.gif', 'base', '1'),
	(12, 'c0c0c0', '', 'base_color', '1'),
	(12, 'symbol_bunting_2.gif', '', 'symbol', '1'),
	(12, '498000', '', 'symbol_color', '1'),
	(13, '84de00', '', 'background_color', '1'),
	(13, 'base_gradient_1.gif', '', 'base', '1'),
	(13, '373737', '', 'base_color', '1'),
	(13, 'symbol_butterfly_part2.gif', 'symbol_butterfly_part1.gif', 'symbol', '1'),
	(13, '417200', '', 'symbol_color', '1'),
	(14, '77c700', '', 'background_color', '1'),
	(14, 'base_gradient_2.gif', '', 'base', '1'),
	(14, 'fbe7ac', '', 'base_color', '1'),
	(14, 'symbol_cowskull_part2.gif', 'symbol_cowskull_part1.gif', 'symbol', '1'),
	(14, '396400', '', 'symbol_color', '1'),
	(15, '63a600', '', 'background_color', '1'),
	(15, 'base_circles_1.gif', '', 'base', '1'),
	(15, '977641', '', 'base_color', '1'),
	(15, 'symbol_cross.gif', '', 'symbol', '1'),
	(15, '315600', '', 'symbol_color', '1'),
	(16, '4f8500', '', 'background_color', '1'),
	(16, 'base_circles_2.gif', '', 'base', '1'),
	(16, 'c2eaff', '', 'base_color', '1'),
	(16, 'symbol_diamond.gif', '', 'symbol', '1'),
	(16, '294800', '', 'symbol_color', '1'),
	(17, '3c6400', '', 'background_color', '1'),
	(17, 'base_ornament_1_part2.gif', 'base_ornament_1_part1.gif', 'base', '1'),
	(17, 'fff165', '', 'base_color', '1'),
	(17, 'symbol_diploma_part2.gif', 'symbol_diploma_part1.gif', 'symbol', '1'),
	(17, '213b00', '', 'symbol_color', '1'),
	(18, '274200', '', 'background_color', '1'),
	(18, 'base_ornament_2_part2.gif', 'base_ornament_2_part1.gif', 'base', '1'),
	(18, 'aaff7d', '', 'base_color', '1'),
	(18, 'symbol_eyeball_part2.gif', 'symbol_eyeball_part1.gif', 'symbol', '1'),
	(18, '1a2e00', '', 'symbol_color', '1'),
	(19, 'c2eaff', '', 'background_color', '1'),
	(19, 'base_misc_1_part2.gif', 'base_misc_1_part1.gif', 'base', '1'),
	(19, '87e6c8', '', 'base_color', '1'),
	(19, 'symbol_fist.gif', '', 'symbol', '1'),
	(19, '84de00', '', 'symbol_color', '1'),
	(20, 'aed2e5', '', 'background_color', '1'),
	(20, 'base_misc_2.gif', '', 'base', '1'),
	(20, '9844e7', '', 'base_color', '1'),
	(20, 'symbol_flame_1.gif', '', 'symbol', '1'),
	(20, '7acd00', '', 'symbol_color', '1'),
	(21, '91afbf', '', 'background_color', '1'),
	(21, 'base_beams_part2.gif', 'base_beams_part1.gif', 'base', '1'),
	(21, 'dea9ff', '', 'base_color', '1'),
	(21, 'symbol_flame_2.gif', '', 'symbol', '1'),
	(21, '6eb900', '', 'symbol_color', '1'),
	(22, '748c99', '', 'background_color', '1'),
	(22, 'base_ring.gif', '', 'base', '1'),
	(22, 'ffb579', '', 'base_color', '1'),
	(22, 'symbol_flash.gif', '', 'symbol', '1'),
	(22, '62a500', '', 'symbol_color', '1'),
	(23, '576a73', '', 'background_color', '1'),
	(23, 'base_simplestar_part2.gif', 'base_simplestar_part1.gif', 'base', '1'),
	(23, 'c3aa6e', '', 'base_color', '1'),
	(23, 'symbol_flower_1_part2.gif', 'symbol_flower_1_part1.gif', 'symbol', '1'),
	(23, '569100', '', 'symbol_color', '1'),
	(24, '3a464c', '', 'background_color', '1'),
	(24, 'base_spiral.gif', '', 'base', '1'),
	(24, '7a7a7a', '', 'base_color', '1'),
	(24, 'symbol_flower_2.gif', '', 'symbol', '1'),
	(24, '4a7c00', '', 'symbol_color', '1'),
	(25, '50c1fb', '', 'background_color', '1'),
	(25, 'base_book.gif', '', 'base', '1'),
	(25, 'symbol_flower_3.gif', '', 'symbol', '1'),
	(25, '3e6800', '', 'symbol_color', '1'),
	(26, '48ade1', '', 'background_color', '1'),
	(26, 'base_egg.gif', '', 'base', '1'),
	(26, 'symbol_flower_4.gif', '', 'symbol', '1'),
	(26, '325400', '', 'symbol_color', '1'),
	(27, '3c91bc', '', 'background_color', '1'),
	(27, 'base_ornament.gif', '', 'base', '1'),
	(27, 'symbol_football.gif', '', 'symbol', '1'),
	(27, '274200', '', 'symbol_color', '1'),
	(28, '307497', '', 'background_color', '1'),
	(28, 'base_shield_part2.gif', 'base_shield_part1.gif', 'base', '1'),
	(28, 'symbol_heart_1_part2.gif', 'symbol_heart_1_part1.gif', 'symbol', '1'),
	(28, 'c2eaff', '', 'symbol_color', '1'),
	(29, '245771', '', 'background_color', '1'),
	(29, 'symbol_heart_2_part2.gif', 'symbol_heart_2_part1.gif', 'symbol', '1'),
	(29, 'b3d8eb', '', 'symbol_color', '1'),
	(30, '183a4b', '', 'background_color', '1'),
	(30, 'symbol_jingjang_part2.gif', 'symbol_jingjang_part1.gif', 'symbol', '1'),
	(30, 'a1c3d4', '', 'symbol_color', '1'),
	(31, '006fcf', '', 'background_color', '1'),
	(31, 'symbol_lips_part2.gif', 'symbol_lips_part1.gif', 'symbol', '1'),
	(31, '90adbd', '', 'symbol_color', '1'),
	(32, '0064ba', '', 'background_color', '1'),
	(32, 'symbol_note.gif', '', 'symbol', '1'),
	(32, '7e98a6', '', 'symbol_color', '1'),
	(33, '00539b', '', 'background_color', '1'),
	(33, 'symbol_peace.gif', '', 'symbol', '1'),
	(33, '6d838f', '', 'symbol_color', '1'),
	(34, '00437c', '', 'background_color', '1'),
	(34, 'symbol_planet_part2.gif', 'symbol_planet_part1.gif', 'symbol', '1'),
	(34, '5b6e78', '', 'symbol_color', '1'),
	(35, '00325d', '', 'background_color', '1'),
	(35, 'symbol_rainbow_part2.gif', 'symbol_rainbow_part1.gif', 'symbol', '1'),
	(35, '4a5961', '', 'symbol_color', '1'),
	(36, '00213e', '', 'background_color', '1'),
	(36, 'symbol_rosete.gif', '', 'symbol', '1'),
	(36, '3a464c', '', 'symbol_color', '1'),
	(37, '9844e7', '', 'background_color', '1'),
	(37, 'symbol_shape.gif', '', 'symbol', '1'),
	(37, '50c1fb', '', 'symbol_color', '1'),
	(38, '893dcf', '', 'background_color', '1'),
	(38, 'symbol_star_1.gif', '', 'symbol', '1'),
	(38, '4ab2e7', '', 'symbol_color', '1'),
	(39, '7233ad', '', 'background_color', '1'),
	(39, 'symbol_star_2.gif', '', 'symbol', '1'),
	(39, '43a0d1', '', 'symbol_color', '1'),
	(40, '5b298b', '', 'background_color', '1'),
	(40, 'symbol_sword_1_part2.gif', 'symbol_sword_1_part1.gif', 'symbol', '1'),
	(40, '3b8fba', '', 'symbol_color', '1'),
	(41, '451f68', '', 'background_color', '1'),
	(41, 'symbol_sword_2_part2.gif', 'symbol_sword_2_part1.gif', 'symbol', '1'),
	(41, '347ea3', '', 'symbol_color', '1'),
	(42, '2d1445', '', 'background_color', '1'),
	(42, 'symbol_sword_3_part2.gif', 'symbol_sword_3_part1.gif', 'symbol', '1'),
	(42, '2d6c8d', '', 'symbol_color', '1'),
	(43, 'dea9ff', '', 'background_color', '1'),
	(43, 'symbol_wings_1.gif', '', 'symbol', '1'),
	(43, '265b76', '', 'symbol_color', '1'),
	(44, 'c798e5', '', 'background_color', '1'),
	(44, 'symbol_wings_2.gif', '', 'symbol', '1'),
	(44, '1e495f', '', 'symbol_color', '1'),
	(45, 'a67fbf', '', 'background_color', '1'),
	(45, 'symbol_arrow_down.gif', '', 'symbol', '1'),
	(45, '183a4b', '', 'symbol_color', '1'),
	(46, '856599', '', 'background_color', '1'),
	(46, 'symbol_arrow_left.gif', '', 'symbol', '1'),
	(46, '006fcf', '', 'symbol_color', '1'),
	(47, '644c73', '', 'background_color', '1'),
	(47, 'symbol_arrow_right.gif', '', 'symbol', '1'),
	(47, '0066bf', '', 'symbol_color', '1'),
	(48, '42324c', '', 'background_color', '1'),
	(48, 'symbol_arrow_up.gif', '', 'symbol', '1'),
	(48, '005cac', '', 'symbol_color', '1'),
	(49, 'ff98e3', '', 'background_color', '1'),
	(49, 'symbol_arrowbig_up.gif', '', 'symbol', '1'),
	(49, '005299', '', 'symbol_color', '1'),
	(50, 'e589cc', '', 'background_color', '1'),
	(50, 'symbol_axe_part2.gif', 'symbol_axe_part1.gif', 'symbol', '1'),
	(50, '004887', '', 'symbol_color', '1'),
	(51, 'bf72aa', '', 'background_color', '1'),
	(51, 'symbol_bug_part2.gif', 'symbol_bug_part1.gif', 'symbol', '1'),
	(51, '003e74', '', 'symbol_color', '1'),
	(52, '995b88', '', 'background_color', '1'),
	(52, 'symbol_capsbig_part2.gif', 'symbol_capsbig_part1.gif', 'symbol', '1'),
	(52, '003461', '', 'symbol_color', '1'),
	(53, '734566', '', 'background_color', '1'),
	(53, 'symbol_capssmall_part2.gif', 'symbol_capssmall_part1.gif', 'symbol', '1'),
	(53, '002a4f', '', 'symbol_color', '1'),
	(54, '4c2d44', '', 'background_color', '1'),
	(54, 'symbol_cloud.gif', '', 'symbol', '1'),
	(54, '00213e', '', 'symbol_color', '1'),
	(55, 'f334bf', '', 'background_color', '1'),
	(55, 'symbol_crown_part2.gif', 'symbol_crown_part1.gif', 'symbol', '1'),
	(55, '9844e7', '', 'symbol_color', '1'),
	(56, 'da2fac', '', 'background_color', '1'),
	(56, 'symbol_diamsmall2.gif', '', 'symbol', '1'),
	(56, '8c3fd5', '', 'symbol_color', '1'),
	(57, 'b6278f', '', 'background_color', '1'),
	(57, 'symbol_diamsmall.gif', '', 'symbol', '1'),
	(57, '7e39c0', '', 'symbol_color', '1'),
	(58, '921f73', '', 'background_color', '1'),
	(58, 'symbol_drop.gif', '', 'symbol', '1'),
	(58, '7132ab', '', 'symbol_color', '1'),
	(59, '6e1756', '', 'background_color', '1'),
	(59, 'symbol_fingersheavy.gif', '', 'symbol', '1'),
	(59, '632c96', '', 'symbol_color', '1'),
	(60, '480f39', '', 'background_color', '1'),
	(60, 'symbol_fingersv.gif', '', 'symbol', '1'),
	(60, '552682', '', 'symbol_color', '1'),
	(61, 'ff2d2d', '', 'background_color', '1'),
	(61, 'symbol_gtr_part2.gif', 'symbol_gtr_part1.gif', 'symbol', '1'),
	(61, '48206d', '', 'symbol_color', '1'),
	(62, 'e52828', '', 'background_color', '1'),
	(62, 'symbol_hat.gif', '', 'symbol', '1'),
	(62, '3a1a58', '', 'symbol_color', '1'),
	(63, 'bf2222', '', 'background_color', '1'),
	(63, 'symbol_oval_part2.gif', 'symbol_oval_part1.gif', 'symbol', '1'),
	(63, '2d1445', '', 'symbol_color', '1'),
	(64, '991b1b', '', 'background_color', '1'),
	(64, 'symbol_pawprint.gif', '', 'symbol', '1'),
	(64, 'dea9ff', '', 'symbol_color', '1'),
	(65, '731414', '', 'background_color', '1'),
	(65, 'symbol_screw.gif', '', 'symbol', '1'),
	(65, 'cd9ceb', '', 'symbol_color', '1'),
	(66, '4c0d0d', '', 'background_color', '1'),
	(66, 'symbol_stickL_part2.gif', 'symbol_stickL_part1.gif', 'symbol', '1'),
	(66, 'b98dd4', '', 'symbol_color', '1'),
	(67, 'ffb579', '', 'background_color', '1'),
	(67, 'symbol_stickR_part2.gif', 'symbol_stickR_part1.gif', 'symbol', '1'),
	(67, 'a57dbd', '', 'symbol_color', '1'),
	(68, 'e5a36d', '', 'background_color', '1'),
	(68, 'symbol_alligator.gif', '', 'symbol', '1'),
	(68, '916ea6', '', 'symbol_color', '1'),
	(69, 'bf885b', '', 'background_color', '1'),
	(69, 'symbol_americanfootball_part2.gif', 'symbol_americanfootball_part1.gif', 'symbol', '1'),
	(69, '7c5f8f', '', 'symbol_color', '1'),
	(70, '996d49', '', 'background_color', '1'),
	(70, 'symbol_award_part2.gif', 'symbol_award_part1.gif', 'symbol', '1'),
	(70, '685078', '', 'symbol_color', '1'),
	(71, '735237', '', 'background_color', '1'),
	(71, 'symbol_bananapeel.gif', '', 'symbol', '1'),
	(71, '544061', '', 'symbol_color', '1'),
	(72, '4c3624', '', 'background_color', '1'),
	(72, 'symbol_battleball.gif', '', 'symbol', '1'),
	(72, '42324c', '', 'symbol_color', '1'),
	(73, 'ec7600', '', 'background_color', '1'),
	(73, 'symbol_biohazard.gif', '', 'symbol', '1'),
	(73, 'ff98e3', '', 'symbol_color', '1'),
	(74, 'd46a00', '', 'background_color', '1'),
	(74, 'symbol_bird.gif', '', 'symbol', '1'),
	(74, 'eb8cd1', '', 'symbol_color', '1'),
	(75, 'b15800', '', 'background_color', '1'),
	(75, 'symbol_bishop.gif', '', 'symbol', '1'),
	(75, 'd47ebd', '', 'symbol_color', '1'),
	(76, '8e4700', '', 'background_color', '1'),
	(76, 'symbol_coalion.gif', '', 'symbol', '1'),
	(76, 'bd71a8', '', 'symbol_color', '1'),
	(77, '6a3500', '', 'background_color', '1'),
	(77, 'symbol_cocoamug.gif', '', 'symbol', '1'),
	(77, 'a66394', '', 'symbol_color', '1'),
	(78, '462300', '', 'background_color', '1'),
	(78, 'symbol_dashflag.gif', '', 'symbol', '1'),
	(78, '8f557f', '', 'symbol_color', '1'),
	(79, 'ffd601', '', 'background_color', '1'),
	(79, 'symbol_diamondring_part2.gif', 'symbol_diamondring_part1.gif', 'symbol', '1'),
	(79, '78486b', '', 'symbol_color', '1'),
	(80, 'e5c001', '', 'background_color', '1'),
	(80, 'symbol_discoball_part2.gif', 'symbol_discoball_part1.gif', 'symbol', '1'),
	(80, '613a56', '', 'symbol_color', '1'),
	(81, 'bfa001', '', 'background_color', '1'),
	(81, 'symbol_dog.gif', '', 'symbol', '1'),
	(81, '4c2d44', '', 'symbol_color', '1'),
	(82, '998001', '', 'background_color', '1'),
	(82, 'symbol_electricguitarh_part2.gif', 'symbol_electricguitarh_part1.gif', 'symbol', '1'),
	(82, 'f334bf', '', 'symbol_color', '1'),
	(83, '736100', '', 'background_color', '1'),
	(83, 'symbol_electricguitarv_part2.gif', 'symbol_electricguitarv_part1.gif', 'symbol', '1'),
	(83, 'e030b0', '', 'symbol_color', '1'),
	(84, '4c4000', '', 'background_color', '1'),
	(84, 'symbol_film.gif', '', 'symbol', '1'),
	(84, 'ca2b9f', '', 'symbol_color', '1'),
	(85, 'c3aa6e', '', 'background_color', '1'),
	(85, 'symbol_flame_part2.gif', 'symbol_flame_part1.gif', 'symbol', '1'),
	(85, 'b4278e', '', 'symbol_color', '1'),
	(86, 'af9963', '', 'background_color', '1'),
	(86, 'symbol_gamepad.gif', '', 'symbol', '1'),
	(86, '9e227c', '', 'symbol_color', '1'),
	(87, '927f52', '', 'background_color', '1'),
	(87, 'symbol_gem1_part2.gif', 'symbol_gem1_part1.gif', 'symbol', '1'),
	(87, '881d6b', '', 'symbol_color', '1'),
	(88, '756642', '', 'background_color', '1'),
	(88, 'symbol_gem2_part2.gif', 'symbol_gem2_part1.gif', 'symbol', '1'),
	(88, '72185a', '', 'symbol_color', '1'),
	(89, '584d32', '', 'background_color', '1'),
	(89, 'symbol_gem3_part2.gif', 'symbol_gem3_part1.gif', 'symbol', '1'),
	(89, '5c1449', '', 'symbol_color', '1'),
	(90, '3a3321', '', 'background_color', '1'),
	(90, 'symbol_hawk.gif', '', 'symbol', '1'),
	(90, '480f39', '', 'symbol_color', '1'),
	(91, '977641', '', 'background_color', '1'),
	(91, 'symbol_hearts_down.gif', '', 'symbol', '1'),
	(91, 'ff2d2d', '', 'symbol_color', '1'),
	(92, '886a3a', '', 'background_color', '1'),
	(92, 'symbol_hearts_up.gif', '', 'symbol', '1'),
	(92, 'eb2929', '', 'symbol_color', '1'),
	(93, '715831', '', 'background_color', '1'),
	(93, 'symbol_horseshoe.gif', '', 'symbol', '1'),
	(93, 'd42525', '', 'symbol_color', '1'),
	(94, '5b4727', '', 'background_color', '1'),
	(94, 'symbol_inksplatter.gif', '', 'symbol', '1'),
	(94, 'bd2121', '', 'symbol_color', '1'),
	(95, '44351d', '', 'background_color', '1'),
	(95, 'symbol_leaf.gif', '', 'symbol', '1'),
	(95, 'a61d1d', '', 'symbol_color', '1'),
	(96, '2d2313', '', 'background_color', '1'),
	(96, 'symbol_micstand.gif', '', 'symbol', '1'),
	(96, '8f1919', '', 'symbol_color', '1'),
	(97, 'c0c0c0', '', 'background_color', '1'),
	(97, 'symbol_mirror_part2.gif', 'symbol_mirror_part1.gif', 'symbol', '1'),
	(97, '781515', '', 'symbol_color', '1'),
	(98, 'acacac', '', 'background_color', '1'),
	(98, 'symbol_monkeywrench.gif', '', 'symbol', '1'),
	(98, '611111', '', 'symbol_color', '1'),
	(99, '909090', '', 'background_color', '1'),
	(99, 'symbol_note1.gif', '', 'symbol', '1'),
	(99, '4c0d0d', '', 'symbol_color', '1'),
	(100, '737373', '', 'background_color', '1'),
	(100, 'ffb579', '', 'symbol_color', '1'),
	(101, '575757', '', 'background_color', '1'),
	(101, 'eba770', '', 'symbol_color', '1'),
	(102, '393939', '', 'background_color', '1'),
	(102, 'd49665', '', 'symbol_color', '1'),
	(103, '7a7a7a', '', 'background_color', '1'),
	(103, 'bd865a', '', 'symbol_color', '1'),
	(104, '6e6e6e', '', 'background_color', '1'),
	(104, 'a6764f', '', 'symbol_color', '1'),
	(105, '5b5b5b', '', 'background_color', '1'),
	(105, '8f6644', '', 'symbol_color', '1'),
	(106, '494949', '', 'background_color', '1'),
	(106, '785539', '', 'symbol_color', '1'),
	(107, '373737', '', 'background_color', '1'),
	(107, '61452e', '', 'symbol_color', '1'),
	(108, '242424', '', 'background_color', '1'),
	(108, '4c3624', '', 'symbol_color', '1'),
	(109, 'ec7600', '', 'symbol_color', '1'),
	(110, 'd96d00', '', 'symbol_color', '1'),
	(111, 'c46200', '', 'symbol_color', '1'),
	(112, 'af5700', '', 'symbol_color', '1'),
	(113, '9a4d00', '', 'symbol_color', '1'),
	(114, '844200', '', 'symbol_color', '1'),
	(115, '6f3800', '', 'symbol_color', '1'),
	(116, '5a2d00', '', 'symbol_color', '1'),
	(117, '462300', '', 'symbol_color', '1'),
	(118, 'ffd601', '', 'symbol_color', '1'),
	(119, 'ebc501', '', 'symbol_color', '1'),
	(120, 'd4b201', '', 'symbol_color', '1'),
	(121, 'bd9f01', '', 'symbol_color', '1'),
	(122, 'a68b01', '', 'symbol_color', '1'),
	(123, '8f7801', '', 'symbol_color', '1'),
	(124, '786500', '', 'symbol_color', '1'),
	(125, '615100', '', 'symbol_color', '1'),
	(126, '4c4000', '', 'symbol_color', '1'),
	(127, 'c3aa6e', '', 'symbol_color', '1'),
	(128, 'b49d65', '', 'symbol_color', '1'),
	(129, 'a28d5b', '', 'symbol_color', '1'),
	(130, '917e52', '', 'symbol_color', '1'),
	(131, '7f6f48', '', 'symbol_color', '1'),
	(132, '6d5f3e', '', 'symbol_color', '1'),
	(133, '5c5034', '', 'symbol_color', '1'),
	(134, '4a412a', '', 'symbol_color', '1'),
	(135, '3a3321', '', 'symbol_color', '1'),
	(136, '977641', '', 'symbol_color', '1'),
	(137, '8b6d3c', '', 'symbol_color', '1'),
	(138, '7e6236', '', 'symbol_color', '1'),
	(139, '705730', '', 'symbol_color', '1'),
	(140, '624d2a', '', 'symbol_color', '1'),
	(141, '554224', '', 'symbol_color', '1'),
	(142, '47381f', '', 'symbol_color', '1'),
	(143, '392d19', '', 'symbol_color', '1'),
	(144, '2d2313', '', 'symbol_color', '1'),
	(145, 'c0c0c0', '', 'symbol_color', '1'),
	(146, 'b1b1b1', '', 'symbol_color', '1'),
	(147, 'a0a0a0', '', 'symbol_color', '1'),
	(148, '8e8e8e', '', 'symbol_color', '1'),
	(149, '7d7d7d', '', 'symbol_color', '1'),
	(150, '6c6c6c', '', 'symbol_color', '1'),
	(151, '5a5a5a', '', 'symbol_color', '1'),
	(152, '494949', '', 'symbol_color', '1'),
	(153, '393939', '', 'symbol_color', '1'),
	(154, 'symbol_note2.gif', '', 'symbol', '1'),
	(154, '7a7a7a', '', 'symbol_color', '1'),
	(155, 'symbol_note3.gif', '', 'symbol', '1'),
	(155, '707070', '', 'symbol_color', '1'),
	(156, 'symbol_nursecross.gif', '', 'symbol', '1'),
	(156, '656565', '', 'symbol_color', '1'),
	(157, 'symbol_pencil_part2.gif', 'symbol_pencil_part1.gif', 'symbol', '1'),
	(157, '5a5a5a', '', 'symbol_color', '1'),
	(158, 'symbol_queen.gif', '', 'symbol', '1'),
	(158, '4f4f4f', '', 'symbol_color', '1'),
	(159, 'symbol_rock.gif', '', 'symbol', '1'),
	(159, '444444', '', 'symbol_color', '1'),
	(160, 'symbol_rook.gif', '', 'symbol', '1'),
	(160, '393939', '', 'symbol_color', '1'),
	(161, 'symbol_skate.gif', '', 'symbol', '1'),
	(161, '2e2e2e', '', 'symbol_color', '1'),
	(162, 'symbol_smallring_part2.gif', 'symbol_smallring_part1.gif', 'symbol', '1'),
	(162, '242424', '', 'symbol_color', '1'),
	(163, 'symbol_snowstorm_part2.gif', 'symbol_snowstorm_part1.gif', 'symbol', '1'),
	(164, 'symbol_sphere.gif', '', 'symbol', '1'),
	(165, 'symbol_spraycan_part2.gif', 'symbol_spraycan_part1.gif', 'symbol', '1'),
	(166, 'symbol_stars1.gif', '', 'symbol', '1'),
	(167, 'symbol_stars2.gif', '', 'symbol', '1'),
	(168, 'symbol_stars3.gif', '', 'symbol', '1'),
	(169, 'symbol_stars4.gif', '', 'symbol', '1'),
	(170, 'symbol_stars5.gif', '', 'symbol', '1'),
	(171, 'symbol_waterdrop_part2.gif', 'symbol_waterdrop_part1.gif', 'symbol', '1'),
	(172, 'symbol_wolverine.gif', '', 'symbol', '1'),
	(173, 'symbol_0.gif', '', 'symbol', '1'),
	(174, 'symbol_1.gif', '', 'symbol', '1'),
	(175, 'symbol_2.gif', '', 'symbol', '1'),
	(176, 'symbol_3.gif', '', 'symbol', '1'),
	(177, 'symbol_4.gif', '', 'symbol', '1'),
	(178, 'symbol_5.gif', '', 'symbol', '1'),
	(179, 'symbol_6.gif', '', 'symbol', '1'),
	(180, 'symbol_7.gif', '', 'symbol', '1'),
	(181, 'symbol_8.gif', '', 'symbol', '1'),
	(182, 'symbol_9.gif', '', 'symbol', '1'),
	(183, 'symbol_a.gif', '', 'symbol', '1'),
	(184, 'symbol_b.gif', '', 'symbol', '1'),
	(185, 'symbol_c.gif', '', 'symbol', '1'),
	(186, 'symbol_d.gif', '', 'symbol', '1'),
	(187, 'symbol_e.gif', '', 'symbol', '1'),
	(188, 'symbol_f.gif', '', 'symbol', '1'),
	(189, 'symbol_g.gif', '', 'symbol', '1'),
	(190, 'symbol_h.gif', '', 'symbol', '1'),
	(191, 'symbol_i.gif', '', 'symbol', '1'),
	(192, 'symbol_j.gif', '', 'symbol', '1'),
	(193, 'symbol_k.gif', '', 'symbol', '1'),
	(194, 'symbol_l.gif', '', 'symbol', '1'),
	(195, 'symbol_m.gif', '', 'symbol', '1'),
	(196, 'symbol_n.gif', '', 'symbol', '1'),
	(197, 'symbol_o.gif', '', 'symbol', '1'),
	(198, 'symbol_p.gif', '', 'symbol', '1'),
	(199, 'symbol_q.gif', '', 'symbol', '1'),
	(200, 'symbol_r.gif', '', 'symbol', '1'),
	(201, 'symbol_s.gif', '', 'symbol', '1'),
	(202, 'symbol_t.gif', '', 'symbol', '1'),
	(203, 'symbol_u.gif', '', 'symbol', '1'),
	(204, 'symbol_v.gif', '', 'symbol', '1'),
	(205, 'symbol_w.gif', '', 'symbol', '1'),
	(206, 'symbol_x.gif', '', 'symbol', '1'),
	(207, 'symbol_y.gif', '', 'symbol', '1'),
	(208, 'symbol_z.gif', '', 'symbol', '1'),
	(209, 'symbol_pixel_part2.gif', 'symbol_pixel_part1.gif', 'symbol', '1'),
	(210, 'symbol_credit_part2.gif', 'symbol_credit_part1.gif', 'symbol', '1'),
	(211, 'symbol_hc_part2.gif', 'symbol_hc_part1.gif', 'symbol', '1'),
	(212, 'symbol_vip_part2.gif', 'symbol_vip_part1.gif', 'symbol', '1');
/*!40000 ALTER TABLE `guilds_elements` ENABLE KEYS */;

-- Dumping structure for table test.guilds_forums_comments
DROP TABLE IF EXISTS `guilds_forums_comments`;
CREATE TABLE IF NOT EXISTS `guilds_forums_comments` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `thread_id` int(11) NOT NULL DEFAULT 0,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` int(11) NOT NULL DEFAULT 0,
    `state` int(11) NOT NULL DEFAULT 0,
    `admin_id` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `id` (`id`) USING BTREE,
    KEY `thread_data` (`thread_id`,`user_id`,`created_at`,`state`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Dumping data for table test.guilds_forums_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `guilds_forums_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `guilds_forums_comments` ENABLE KEYS */;

-- Dumping structure for table test.guilds_forums_threads
DROP TABLE IF EXISTS `guilds_forums_threads`;
CREATE TABLE IF NOT EXISTS `guilds_forums_threads` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `guild_id` int(11) DEFAULT 0,
    `opener_id` int(11) DEFAULT 0,
    `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `posts_count` int(11) DEFAULT 0,
    `created_at` int(11) DEFAULT 0,
    `updated_at` int(11) DEFAULT 0,
    `state` int(11) DEFAULT 0,
    `pinned` tinyint(4) DEFAULT 0,
    `locked` tinyint(4) DEFAULT 0,
    `admin_id` int(11) DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Dumping data for table test.guilds_forums_threads: ~0 rows (approximately)
/*!40000 ALTER TABLE `guilds_forums_threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `guilds_forums_threads` ENABLE KEYS */;

-- Dumping structure for table test.guilds_members
DROP TABLE IF EXISTS `guilds_members`;
CREATE TABLE IF NOT EXISTS `guilds_members` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `guild_id` int(11) NOT NULL DEFAULT 0,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `level_id` int(3) NOT NULL DEFAULT 0,
    `member_since` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `id` (`id`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE,
    KEY `guild_id` (`guild_id`) USING BTREE,
    KEY `userdata` (`user_id`,`guild_id`) USING BTREE,
    KEY `level_id` (`level_id`) USING BTREE,
    KEY `member_since` (`member_since`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.guilds_members: ~0 rows (approximately)
/*!40000 ALTER TABLE `guilds_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `guilds_members` ENABLE KEYS */;

-- Dumping structure for table test.guild_forum_views
DROP TABLE IF EXISTS `guild_forum_views`;
CREATE TABLE IF NOT EXISTS `guild_forum_views` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `guild_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.guild_forum_views: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_forum_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_forum_views` ENABLE KEYS */;

-- Dumping structure for table test.hotelview_news
DROP TABLE IF EXISTS `hotelview_news`;
CREATE TABLE IF NOT EXISTS `hotelview_news` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `text` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `button_text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `button_type` enum('client','web') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
    `button_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.hotelview_news: ~0 rows (approximately)
/*!40000 ALTER TABLE `hotelview_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotelview_news` ENABLE KEYS */;

-- Dumping structure for table test.items
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `room_id` int(11) NOT NULL DEFAULT 0,
    `item_id` int(11) DEFAULT 0,
    `wall_pos` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `x` int(11) NOT NULL DEFAULT 0,
    `y` int(11) NOT NULL DEFAULT 0,
    `z` double(10,6) NOT NULL DEFAULT 0.000000,
    `rot` int(11) NOT NULL DEFAULT 0,
    `extra_data` varchar(2096) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `wired_data` varchar(14000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `limited_data` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0:0',
    `guild_id` int(32) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `itemsdata` (`room_id`,`item_id`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE,
    KEY `room_id` (`room_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.items: ~0 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table test.items_base
DROP TABLE IF EXISTS `items_base`;
CREATE TABLE IF NOT EXISTS `items_base` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `sprite_id` int(11) NOT NULL DEFAULT 0,
    `public_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `item_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` enum('s','i','e','h','v','r','b','p') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 's',
    `width` int(11) NOT NULL DEFAULT 1,
    `length` int(11) NOT NULL DEFAULT 1,
    `stack_height` double(4,2) NOT NULL DEFAULT 0.00,
    `allow_stack` tinyint(1) NOT NULL DEFAULT 1,
    `allow_sit` tinyint(1) NOT NULL DEFAULT 0,
    `allow_lay` tinyint(1) NOT NULL DEFAULT 0,
    `allow_walk` tinyint(1) NOT NULL DEFAULT 0,
    `allow_gift` tinyint(1) NOT NULL DEFAULT 0,
    `allow_trade` tinyint(1) NOT NULL DEFAULT 0,
    `allow_recycle` tinyint(1) NOT NULL DEFAULT 0,
    `allow_marketplace_sell` tinyint(1) NOT NULL DEFAULT 0,
    `allow_inventory_stack` tinyint(1) NOT NULL DEFAULT 1,
    `interaction_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
    `interaction_modes_count` int(13) NOT NULL DEFAULT 1,
    `vending_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `multiheight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `customparams` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `effect_id_male` int(3) NOT NULL DEFAULT 0,
    `effect_id_female` int(3) NOT NULL DEFAULT 0,
    `clothing_on_walk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`) USING BTREE,
    KEY `sprite_id` (`sprite_id`),
    KEY `type` (`type`),
    FULLTEXT KEY `item_name` (`item_name`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.items_base: ~0 rows (approximately)
/*!40000 ALTER TABLE `items_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_base` ENABLE KEYS */;

-- Dumping structure for table test.items_crackable
DROP TABLE IF EXISTS `items_crackable`;
CREATE TABLE IF NOT EXISTS `items_crackable` (
    `item_id` int(11) NOT NULL,
    `item_name` varchar(255) NOT NULL COMMENT 'Item name for identification',
    `count` int(11) NOT NULL,
    `prizes` varchar(255) NOT NULL DEFAULT '179:1' COMMENT 'Used in the format of item_id:chance;item_id_2:chance. item_id must be id in the items_base table. Default value for chance is 100.',
    `achievement_tick` varchar(64) NOT NULL,
    `achievement_cracked` varchar(64) NOT NULL,
    `required_effect` int(3) NOT NULL DEFAULT 0,
    `subscription_duration` int(3) DEFAULT NULL,
    `subscription_type` varchar(255) DEFAULT NULL COMMENT 'hc for Habbo Club, bc for Builders Club',
    PRIMARY KEY (`item_id`) USING BTREE,
    UNIQUE KEY `id` (`item_id`) USING BTREE,
    KEY `data` (`count`,`prizes`,`achievement_tick`,`achievement_cracked`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.items_crackable: 0 rows
/*!40000 ALTER TABLE `items_crackable` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_crackable` ENABLE KEYS */;

-- Dumping structure for table test.items_highscore_data
DROP TABLE IF EXISTS `items_highscore_data`;
CREATE TABLE IF NOT EXISTS `items_highscore_data` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `item_id` int(11) NOT NULL,
    `user_ids` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `score` int(11) NOT NULL,
    `is_win` tinyint(1) DEFAULT 0,
    `timestamp` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `id` (`id`) USING BTREE,
    KEY `data` (`item_id`,`user_ids`) USING BTREE,
    KEY `status` (`is_win`,`score`,`timestamp`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.items_highscore_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `items_highscore_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_highscore_data` ENABLE KEYS */;

-- Dumping structure for table test.items_hoppers
DROP TABLE IF EXISTS `items_hoppers`;
CREATE TABLE IF NOT EXISTS `items_hoppers` (
    `item_id` int(11) NOT NULL,
    `base_item` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.items_hoppers: 0 rows
/*!40000 ALTER TABLE `items_hoppers` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_hoppers` ENABLE KEYS */;

-- Dumping structure for table test.items_presents
DROP TABLE IF EXISTS `items_presents`;
CREATE TABLE IF NOT EXISTS `items_presents` (
    `item_id` int(11) NOT NULL,
    `base_item_reward` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.items_presents: 0 rows
/*!40000 ALTER TABLE `items_presents` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_presents` ENABLE KEYS */;

-- Dumping structure for table test.items_teleports
DROP TABLE IF EXISTS `items_teleports`;
CREATE TABLE IF NOT EXISTS `items_teleports` (
    `teleport_one_id` int(11) NOT NULL,
    `teleport_two_id` int(11) NOT NULL,
    KEY `teleport_one_id` (`teleport_one_id`) USING BTREE,
    KEY `teleport_two_id` (`teleport_two_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.items_teleports: 0 rows
/*!40000 ALTER TABLE `items_teleports` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_teleports` ENABLE KEYS */;

-- Dumping structure for table test.logs_hc_payday
DROP TABLE IF EXISTS `logs_hc_payday`;
CREATE TABLE IF NOT EXISTS `logs_hc_payday` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `timestamp` int(10) unsigned DEFAULT NULL,
    `user_id` int(10) unsigned DEFAULT NULL,
    `hc_streak` int(10) unsigned DEFAULT NULL,
    `total_coins_spent` int(10) unsigned DEFAULT NULL,
    `reward_coins_spent` int(10) unsigned DEFAULT NULL,
    `reward_streak` int(10) unsigned DEFAULT NULL,
    `total_payout` int(10) unsigned DEFAULT NULL,
    `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `claimed` tinyint(1) DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `timestamp` (`timestamp`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.logs_hc_payday: ~0 rows (approximately)
/*!40000 ALTER TABLE `logs_hc_payday` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_hc_payday` ENABLE KEYS */;

-- Dumping structure for table test.logs_shop_purchases
DROP TABLE IF EXISTS `logs_shop_purchases`;
CREATE TABLE IF NOT EXISTS `logs_shop_purchases` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `timestamp` int(10) unsigned DEFAULT NULL,
    `user_id` int(10) unsigned DEFAULT NULL,
    `catalog_item_id` int(10) unsigned DEFAULT NULL,
    `item_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `catalog_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `cost_credits` int(10) DEFAULT NULL,
    `cost_points` int(10) DEFAULT NULL,
    `points_type` int(10) DEFAULT NULL,
    `amount` int(10) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `timestamp` (`timestamp`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.logs_shop_purchases: ~0 rows (approximately)
/*!40000 ALTER TABLE `logs_shop_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_shop_purchases` ENABLE KEYS */;

-- Dumping structure for table test.marketplace_items
DROP TABLE IF EXISTS `marketplace_items`;
CREATE TABLE IF NOT EXISTS `marketplace_items` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `item_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `price` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL,
    `sold_timestamp` int(11) NOT NULL DEFAULT 0,
    `state` int(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `itemdata` (`item_id`,`user_id`) USING BTREE,
    KEY `price` (`price`) USING BTREE,
    KEY `time` (`timestamp`,`sold_timestamp`) USING BTREE,
    KEY `status` (`state`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.marketplace_items: 0 rows
/*!40000 ALTER TABLE `marketplace_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_items` ENABLE KEYS */;

-- Dumping structure for table test.messenger_friendrequests
DROP TABLE IF EXISTS `messenger_friendrequests`;
CREATE TABLE IF NOT EXISTS `messenger_friendrequests` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_to_id` int(11) NOT NULL DEFAULT 0,
    `user_from_id` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `id` (`id`) USING BTREE,
    KEY `users` (`user_to_id`,`user_from_id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.messenger_friendrequests: ~0 rows (approximately)
/*!40000 ALTER TABLE `messenger_friendrequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_friendrequests` ENABLE KEYS */;

-- Dumping structure for table test.messenger_friendships
DROP TABLE IF EXISTS `messenger_friendships`;
CREATE TABLE IF NOT EXISTS `messenger_friendships` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_one_id` int(11) NOT NULL DEFAULT 0,
    `user_two_id` int(11) NOT NULL DEFAULT 0,
    `relation` int(1) NOT NULL DEFAULT 0,
    `friends_since` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `id` (`id`) USING BTREE,
    KEY `user_one_id` (`user_one_id`) USING BTREE,
    KEY `user_two_id` (`user_two_id`) USING BTREE,
    KEY `userdata` (`user_one_id`,`user_two_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.messenger_friendships: ~0 rows (approximately)
/*!40000 ALTER TABLE `messenger_friendships` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_friendships` ENABLE KEYS */;

-- Dumping structure for table test.messenger_offline
DROP TABLE IF EXISTS `messenger_offline`;
CREATE TABLE IF NOT EXISTS `messenger_offline` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `user_from_id` int(11) NOT NULL DEFAULT 0,
    `message` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `sended_on` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.messenger_offline: ~0 rows (approximately)
/*!40000 ALTER TABLE `messenger_offline` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_offline` ENABLE KEYS */;

-- Dumping structure for table test.namechange_log
DROP TABLE IF EXISTS `namechange_log`;
CREATE TABLE IF NOT EXISTS `namechange_log` (
    `user_id` int(11) NOT NULL,
    `old_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
    `new_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
    `timestamp` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.namechange_log: 0 rows
/*!40000 ALTER TABLE `namechange_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `namechange_log` ENABLE KEYS */;

-- Dumping structure for table test.navigator_filter
DROP TABLE IF EXISTS `navigator_filter`;
CREATE TABLE IF NOT EXISTS `navigator_filter` (
    `key` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `field` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
    `compare` enum('equals','equals_ignore_case','contains') COLLATE utf8mb4_unicode_ci NOT NULL,
    `database_query` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`key`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.navigator_filter: 7 rows
/*!40000 ALTER TABLE `navigator_filter` DISABLE KEYS */;
INSERT INTO `navigator_filter` (`key`, `field`, `compare`, `database_query`) VALUES
	('owner', 'getOwnerName', 'equals_ignore_case', 'SELECT * FROM rooms WHERE owner_name LIKE ?'),
	('anything', 'filterAnything', 'contains', 'SELECT rooms.*, CONCAT_WS(rooms.owner_name, rooms.name, rooms.description, rooms.tags, guilds.name, guilds.description) as whole FROM rooms LEFT JOIN guilds ON rooms.guild_id = guilds.id HAVING whole LIKE ? '),
	('roomname', 'getName', 'contains', 'SELECT * FROM rooms WHERE name COLLATE UTF8_GENERAL_CI LIKE ? '),
	('tag', 'getTags', 'equals', 'SELECT * FROM rooms WHERE tags LIKE CONCAT(?, ";%") '),
	('group', 'getGuildName', 'contains', 'SELECT rooms.* FROM guilds INNER JOIN rooms ON guilds.room_id = rooms.id WHERE CONCAT(guilds.name, guilds.description) LIKE ?'),
	('desc', 'getDescription', 'contains', 'SELECT * FROM rooms WHERE description LIKE ?'),
	('promo', 'getPromotionDesc', 'contains', 'SELECT rooms.* FROM rooms INNER JOIN room_promotions ON rooms.id = room_promotions.id WHERE room_promotions.end_timestamp >= UNIX_TIMESTAMP() AND CONCAT (room_promotions.title, room_promotions.description) LIKE ?');
/*!40000 ALTER TABLE `navigator_filter` ENABLE KEYS */;

-- Dumping structure for table test.navigator_flatcats
DROP TABLE IF EXISTS `navigator_flatcats`;
CREATE TABLE IF NOT EXISTS `navigator_flatcats` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `min_rank` int(11) NOT NULL DEFAULT 0,
    `caption_save` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'caption_save',
    `caption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `can_trade` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `max_user_count` int(11) NOT NULL DEFAULT 100,
    `public` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `list_type` int(11) NOT NULL DEFAULT 0 COMMENT 'Display mode in the navigator. 0 for list, 1 for thumbnails.',
    `order_num` int(3) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.navigator_flatcats: ~9 rows (approximately)
/*!40000 ALTER TABLE `navigator_flatcats` DISABLE KEYS */;
INSERT INTO `navigator_flatcats` (`id`, `min_rank`, `caption_save`, `caption`, `can_trade`, `max_user_count`, `public`, `list_type`, `order_num`) VALUES
	(1, 1, 'caption_save', '${navigator.flatcategory.global.BC}', '0', 100, '0', 0, 0),
	(2, 1, 'caption_save_building', '${navigator.flatcategory.global.BUILDING}', '0', 100, '0', 0, 0),
	(3, 1, 'caption_save_chat', '${navigator.flatcategory.global.CHAT}', '0', 100, '0', 0, 0),
	(4, 1, 'caption_save_fansite', '${navigator.flatcategory.global.FANSITE}', '0', 100, '0', 0, 0),
	(5, 1, 'caption_save_games', '${navigator.flatcategory.global.GAMES}', '0', 100, '0', 0, 0),
	(6, 1, 'caption_save_help', '${navigator.flatcategory.global.HELP}', '0', 100, '0', 0, 0),
	(7, 1, 'caption_save_life', '${navigator.flatcategory.global.LIFE}', '0', 100, '0', 0, 0),
	(8, 7, 'caption_save_official', '${navigator.flatcategory.global.OFFICIAL}', '0', 100, '1', 0, 0),
	(9, 1, 'caption_save_party', '${navigator.flatcategory.global.PARTY}', '0', 100, '0', 0, 0);
/*!40000 ALTER TABLE `navigator_flatcats` ENABLE KEYS */;

-- Dumping structure for table test.navigator_publiccats
DROP TABLE IF EXISTS `navigator_publiccats`;
CREATE TABLE IF NOT EXISTS `navigator_publiccats` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Staff Picks',
    `image` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `visible` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `order_num` int(3) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.navigator_publiccats: 6 rows
/*!40000 ALTER TABLE `navigator_publiccats` DISABLE KEYS */;
INSERT INTO `navigator_publiccats` (`id`, `name`, `image`, `visible`, `order_num`) VALUES
	(1, 'Staff Picks', '0', '1', 0),
	(2, 'Official Games', '0', '1', 0),
	(3, 'Official Fansites', '0', '1', 0),
	(4, 'BAW: Builders at Work', '0', '1', 0),
	(5, 'Room Bundles', '0', '1', 0),
	(6, 'Safety', '0', '1', 0);
/*!40000 ALTER TABLE `navigator_publiccats` ENABLE KEYS */;

-- Dumping structure for table test.navigator_publics
DROP TABLE IF EXISTS `navigator_publics`;
CREATE TABLE IF NOT EXISTS `navigator_publics` (
    `public_cat_id` int(11) NOT NULL,
    `room_id` int(11) NOT NULL,
    `visible` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.navigator_publics: 0 rows
/*!40000 ALTER TABLE `navigator_publics` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigator_publics` ENABLE KEYS */;

-- Dumping structure for table test.nux_gifts
DROP TABLE IF EXISTS `nux_gifts`;
CREATE TABLE IF NOT EXISTS `nux_gifts` (
    `id` int(3) NOT NULL AUTO_INCREMENT,
    `type` enum('item','room') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'item',
    `value` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'If type item then items.item_name. If type room then room id to copy.',
    `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.nux_gifts: 0 rows
/*!40000 ALTER TABLE `nux_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `nux_gifts` ENABLE KEYS */;

-- Dumping structure for table test.old_guilds_forums
DROP TABLE IF EXISTS `old_guilds_forums`;
CREATE TABLE IF NOT EXISTS `old_guilds_forums` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `guild_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `subject` mediumtext NOT NULL,
    `message` longtext NOT NULL,
    `state` enum('OPEN','CLOSED','HIDDEN_BY_ADMIN','HIDDEN_BY_STAFF') NOT NULL DEFAULT 'OPEN',
    `admin_id` int(11) NOT NULL DEFAULT 0,
    `pinned` enum('0','1') NOT NULL DEFAULT '0',
    `locked` enum('0','1') NOT NULL DEFAULT '0',
    `timestamp` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.old_guilds_forums: ~0 rows (approximately)
/*!40000 ALTER TABLE `old_guilds_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `old_guilds_forums` ENABLE KEYS */;

-- Dumping structure for table test.old_guilds_forums_comments
DROP TABLE IF EXISTS `old_guilds_forums_comments`;
CREATE TABLE IF NOT EXISTS `old_guilds_forums_comments` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `thread_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL,
    `message` longtext NOT NULL,
    `state` enum('OPEN','CLOSED','HIDDEN_BY_ADMIN','HIDDEN_BY_STAFF') NOT NULL DEFAULT 'OPEN',
    `admin_id` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.old_guilds_forums_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `old_guilds_forums_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `old_guilds_forums_comments` ENABLE KEYS */;

-- Dumping structure for table test.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `rank_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
    `badge` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `level` int(2) NOT NULL DEFAULT 1,
    `room_effect` int(11) NOT NULL DEFAULT 0,
    `log_commands` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `prefix` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
    `prefix_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
    `cmd_about` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_alert` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_allow_trading` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_badge` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_ban` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_blockalert` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_bots` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_bundle` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_calendar` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_changename` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_chatcolor` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_commands` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_connect_camera` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_control` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_coords` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_credits` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_subscription` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
    `cmd_danceall` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_diagonal` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_disconnect` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_duckets` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_ejectall` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_empty` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_empty_bots` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_empty_pets` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_enable` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_event` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_faceless` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_fastwalk` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_filterword` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_freeze` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_freeze_bots` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_gift` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_give_rank` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_ha` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_can_stalk` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_hal` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_invisible` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_ip_ban` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_machine_ban` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_hand_item` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_happyhour` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_hidewired` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_kickall` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_softkick` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_massbadge` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roombadge` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_masscredits` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_massduckets` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_massgift` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_masspoints` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_moonwalk` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_mimic` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_multi` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_mute` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_pet_info` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_pickall` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_plugins` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_points` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_promote_offer` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_pull` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_push` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_redeem` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_reload_room` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_roomalert` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roomcredits` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roomeffect` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roomgift` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roomitem` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roommute` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roompixels` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_roompoints` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_say` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_say_all` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_setmax` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_set_poll` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_setpublic` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_setspeed` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_shout` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_shout_all` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_shutdown` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_sitdown` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_staffalert` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_staffonline` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_summon` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_summonrank` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_super_ban` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_stalk` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_superpull` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_take_badge` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_talk` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_teleport` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_trash` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_transform` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_unban` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_unload` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_unmute` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_achievements` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_bots` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_catalogue` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_config` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_guildparts` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_hotel_view` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_items` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_navigator` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_permissions` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_pet_data` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_plugins` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_polls` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_texts` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_wordfilter` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_userinfo` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_word_quiz` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_warp` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_anychatcolor` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_anyroomowner` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_empty_others` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_enable_others` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_see_whispers` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_see_tentchat` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_superwired` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_supporttool` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_unkickable` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_guildgate` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_moverotate` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_placefurni` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_unlimited_bots` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Overrides the bot restriction to the inventory and room.',
    `acc_unlimited_pets` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Overrides the pet restriction to the inventory and room.',
    `acc_hide_ip` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_hide_mail` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_not_mimiced` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_chat_no_flood` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_staff_chat` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_staff_pick` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_enteranyroom` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_fullrooms` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_infinite_credits` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_infinite_pixels` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_infinite_points` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_ambassador` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_debug` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_chat_no_limit` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'People with this permission node are always heard and can see all chat in the room regarding of maximum hearing distance in the room settings (In game)',
    `acc_chat_no_filter` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_nomute` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_guild_admin` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_catalog_ids` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_modtool_ticket_q` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_modtool_user_logs` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_modtool_user_alert` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_modtool_user_kick` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_modtool_user_ban` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_modtool_room_info` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_modtool_room_logs` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_trade_anywhere` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_update_notifications` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_helper_use_guide_tool` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_helper_give_guide_tours` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_helper_judge_chat_reviews` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_floorplan_editor` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_camera` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_ads_background` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_wordquiz` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_room_staff_tags` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_infinite_friends` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `acc_mimic_unredeemed` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_update_youtube_playlists` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_add_youtube_playlist` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `auto_credits_amount` int(11) DEFAULT 0,
    `auto_pixels_amount` int(11) DEFAULT 0,
    `auto_gotw_amount` int(11) DEFAULT 0,
    `auto_points_amount` int(11) DEFAULT 0,
    `acc_mention` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_setstate` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_buildheight` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_setrotation` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_sellroom` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_buyroom` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_pay` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_kill` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_hoverboard` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_kiss` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_hug` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_welcome` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `cmd_disable_effects` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_brb` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_nuke` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_slime` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_explain` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_closedice` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `acc_closedice_room` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
    `cmd_set` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `cmd_furnidata` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `kiss_cmd` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.permissions: ~7 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `rank_name`, `badge`, `level`, `room_effect`, `log_commands`, `prefix`, `prefix_color`, `cmd_about`, `cmd_alert`, `cmd_allow_trading`, `cmd_badge`, `cmd_ban`, `cmd_blockalert`, `cmd_bots`, `cmd_bundle`, `cmd_calendar`, `cmd_changename`, `cmd_chatcolor`, `cmd_commands`, `cmd_connect_camera`, `cmd_control`, `cmd_coords`, `cmd_credits`, `cmd_subscription`, `cmd_danceall`, `cmd_diagonal`, `cmd_disconnect`, `cmd_duckets`, `cmd_ejectall`, `cmd_empty`, `cmd_empty_bots`, `cmd_empty_pets`, `cmd_enable`, `cmd_event`, `cmd_faceless`, `cmd_fastwalk`, `cmd_filterword`, `cmd_freeze`, `cmd_freeze_bots`, `cmd_gift`, `cmd_give_rank`, `cmd_ha`, `acc_can_stalk`, `cmd_hal`, `cmd_invisible`, `cmd_ip_ban`, `cmd_machine_ban`, `cmd_hand_item`, `cmd_happyhour`, `cmd_hidewired`, `cmd_kickall`, `cmd_softkick`, `cmd_massbadge`, `cmd_roombadge`, `cmd_masscredits`, `cmd_massduckets`, `cmd_massgift`, `cmd_masspoints`, `cmd_moonwalk`, `cmd_mimic`, `cmd_multi`, `cmd_mute`, `cmd_pet_info`, `cmd_pickall`, `cmd_plugins`, `cmd_points`, `cmd_promote_offer`, `cmd_pull`, `cmd_push`, `cmd_redeem`, `cmd_reload_room`, `cmd_roomalert`, `cmd_roomcredits`, `cmd_roomeffect`, `cmd_roomgift`, `cmd_roomitem`, `cmd_roommute`, `cmd_roompixels`, `cmd_roompoints`, `cmd_say`, `cmd_say_all`, `cmd_setmax`, `cmd_set_poll`, `cmd_setpublic`, `cmd_setspeed`, `cmd_shout`, `cmd_shout_all`, `cmd_shutdown`, `cmd_sitdown`, `cmd_staffalert`, `cmd_staffonline`, `cmd_summon`, `cmd_summonrank`, `cmd_super_ban`, `cmd_stalk`, `cmd_superpull`, `cmd_take_badge`, `cmd_talk`, `cmd_teleport`, `cmd_trash`, `cmd_transform`, `cmd_unban`, `cmd_unload`, `cmd_unmute`, `cmd_update_achievements`, `cmd_update_bots`, `cmd_update_catalogue`, `cmd_update_config`, `cmd_update_guildparts`, `cmd_update_hotel_view`, `cmd_update_items`, `cmd_update_navigator`, `cmd_update_permissions`, `cmd_update_pet_data`, `cmd_update_plugins`, `cmd_update_polls`, `cmd_update_texts`, `cmd_update_wordfilter`, `cmd_userinfo`, `cmd_word_quiz`, `cmd_warp`, `acc_anychatcolor`, `acc_anyroomowner`, `acc_empty_others`, `acc_enable_others`, `acc_see_whispers`, `acc_see_tentchat`, `acc_superwired`, `acc_supporttool`, `acc_unkickable`, `acc_guildgate`, `acc_moverotate`, `acc_placefurni`, `acc_unlimited_bots`, `acc_unlimited_pets`, `acc_hide_ip`, `acc_hide_mail`, `acc_not_mimiced`, `acc_chat_no_flood`, `acc_staff_chat`, `acc_staff_pick`, `acc_enteranyroom`, `acc_fullrooms`, `acc_infinite_credits`, `acc_infinite_pixels`, `acc_infinite_points`, `acc_ambassador`, `acc_debug`, `acc_chat_no_limit`, `acc_chat_no_filter`, `acc_nomute`, `acc_guild_admin`, `acc_catalog_ids`, `acc_modtool_ticket_q`, `acc_modtool_user_logs`, `acc_modtool_user_alert`, `acc_modtool_user_kick`, `acc_modtool_user_ban`, `acc_modtool_room_info`, `acc_modtool_room_logs`, `acc_trade_anywhere`, `acc_update_notifications`, `acc_helper_use_guide_tool`, `acc_helper_give_guide_tours`, `acc_helper_judge_chat_reviews`, `acc_floorplan_editor`, `acc_camera`, `acc_ads_background`, `cmd_wordquiz`, `acc_room_staff_tags`, `acc_infinite_friends`, `acc_mimic_unredeemed`, `cmd_update_youtube_playlists`, `cmd_add_youtube_playlist`, `auto_credits_amount`, `auto_pixels_amount`, `auto_gotw_amount`, `auto_points_amount`, `acc_mention`, `cmd_setstate`, `cmd_buildheight`, `cmd_setrotation`, `cmd_sellroom`, `cmd_buyroom`, `cmd_pay`, `cmd_kill`, `cmd_hoverboard`, `cmd_kiss`, `cmd_hug`, `cmd_welcome`, `cmd_disable_effects`, `cmd_brb`, `cmd_nuke`, `cmd_slime`, `cmd_explain`, `cmd_closedice`, `acc_closedice_room`, `cmd_set`, `cmd_furnidata`, `kiss_cmd`) VALUES
	(1, 'Member', '', 1, 0, '0', '', '', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '2', '1', '1', '1', '1', '1', '2', '1', '0', '0'),
	(2, 'VIP', '', 2, 0, '0', '', '', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '2', '1', '1', '1', '1', '1', '2', '1', '0', '0'),
	(3, 'X', '', 3, 0, '0', '', '', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '2', '1', '1', '1', '1', '1', '2', '1', '0', '0'),
	(4, 'Support', '', 4, 0, '0', '', '', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '2', '1', '1', '1', '1', '1', '2', '1', '0', '0'),
	(5, 'Moderator', '', 5, 0, '0', '', '', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '2', '1', '1', '1', '1', '1', '2', '1', '0', '0'),
	(6, 'Super Mod', '', 6, 0, '0', '', '', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '2', '1', '1', '1', '1', '1', '2', '1', '0', '0'),
	(7, 'Administrator', 'ADM', 7, 0, '0', 'ADM', '#A1A1A1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table test.pet_actions
DROP TABLE IF EXISTS `pet_actions`;
CREATE TABLE IF NOT EXISTS `pet_actions` (
    `pet_type` int(2) NOT NULL AUTO_INCREMENT,
    `pet_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
    `offspring_type` int(3) NOT NULL DEFAULT -1,
    `happy_actions` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `tired_actions` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `random_actions` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `can_swim` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT '0',
    PRIMARY KEY (`pet_type`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.pet_actions: 0 rows
/*!40000 ALTER TABLE `pet_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_actions` ENABLE KEYS */;

-- Dumping structure for table test.pet_breeding
DROP TABLE IF EXISTS `pet_breeding`;
CREATE TABLE IF NOT EXISTS `pet_breeding` (
    `pet_id` int(2) NOT NULL,
    `offspring_id` int(2) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.pet_breeding: 0 rows
/*!40000 ALTER TABLE `pet_breeding` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_breeding` ENABLE KEYS */;

-- Dumping structure for table test.pet_breeding_races
DROP TABLE IF EXISTS `pet_breeding_races`;
CREATE TABLE IF NOT EXISTS `pet_breeding_races` (
    `pet_type` int(2) NOT NULL,
    `rarity_level` int(2) NOT NULL,
    `breed` int(2) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.pet_breeding_races: 0 rows
/*!40000 ALTER TABLE `pet_breeding_races` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_breeding_races` ENABLE KEYS */;

-- Dumping structure for table test.pet_breeds
DROP TABLE IF EXISTS `pet_breeds`;
CREATE TABLE IF NOT EXISTS `pet_breeds` (
    `race` int(11) NOT NULL,
    `color_one` int(11) NOT NULL,
    `color_two` int(11) NOT NULL,
    `has_color_one` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `has_color_two` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    UNIQUE KEY `idx_name` (`race`,`color_one`,`color_two`,`has_color_one`,`has_color_two`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.pet_breeds: 0 rows
/*!40000 ALTER TABLE `pet_breeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_breeds` ENABLE KEYS */;

-- Dumping structure for table test.pet_commands
DROP TABLE IF EXISTS `pet_commands`;
CREATE TABLE IF NOT EXISTS `pet_commands` (
    `pet_id` int(11) NOT NULL,
    `command_id` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.pet_commands: 0 rows
/*!40000 ALTER TABLE `pet_commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_commands` ENABLE KEYS */;

-- Dumping structure for table test.pet_commands_data
DROP TABLE IF EXISTS `pet_commands_data`;
CREATE TABLE IF NOT EXISTS `pet_commands_data` (
    `command_id` int(3) NOT NULL,
    `text` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
    `required_level` int(2) NOT NULL,
    `reward_xp` int(3) NOT NULL DEFAULT 5,
    `cost_happyness` int(3) NOT NULL DEFAULT 0,
    `cost_energy` int(3) NOT NULL DEFAULT 0,
    PRIMARY KEY (`command_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.pet_commands_data: 0 rows
/*!40000 ALTER TABLE `pet_commands_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_commands_data` ENABLE KEYS */;

-- Dumping structure for table test.pet_drinks
DROP TABLE IF EXISTS `pet_drinks`;
CREATE TABLE IF NOT EXISTS `pet_drinks` (
    `pet_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Leave 0 to have it affect all pet types.',
    `item_id` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.pet_drinks: 0 rows
/*!40000 ALTER TABLE `pet_drinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_drinks` ENABLE KEYS */;

-- Dumping structure for table test.pet_foods
DROP TABLE IF EXISTS `pet_foods`;
CREATE TABLE IF NOT EXISTS `pet_foods` (
    `pet_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Leave 0 to have it affect all pet types.',
    `item_id` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.pet_foods: 0 rows
/*!40000 ALTER TABLE `pet_foods` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_foods` ENABLE KEYS */;

-- Dumping structure for table test.pet_items
DROP TABLE IF EXISTS `pet_items`;
CREATE TABLE IF NOT EXISTS `pet_items` (
    `pet_id` int(11) NOT NULL COMMENT 'Leave 0 to have it affect all pet types.',
    `item_id` int(11) NOT NULL COMMENT 'Item id of a item having one of the following interactions: nest, pet_food, pet_drink'
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.pet_items: 0 rows
/*!40000 ALTER TABLE `pet_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_items` ENABLE KEYS */;

-- Dumping structure for table test.pet_vocals
DROP TABLE IF EXISTS `pet_vocals`;
CREATE TABLE IF NOT EXISTS `pet_vocals` (
    `pet_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Leave 0 to have it apply to all pet types.',
    `type` enum('DISOBEY','DRINKING','EATING','GENERIC_HAPPY','GENERIC_NEUTRAL','GENERIC_SAD','GREET_OWNER','HUNGRY','LEVEL_UP','MUTED','PLAYFUL','SLEEPING','THIRSTY','TIRED','UNKNOWN_COMMAND') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GENERIC_HAPPY',
    `message` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.pet_vocals: 0 rows
/*!40000 ALTER TABLE `pet_vocals` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_vocals` ENABLE KEYS */;

-- Dumping structure for table test.polls
DROP TABLE IF EXISTS `polls`;
CREATE TABLE IF NOT EXISTS `polls` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hey! We''d appreciate it if you could take some time to answer these questions. It will help improve our hotel.',
    `thanks_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `reward_badge` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.polls: 0 rows
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;

-- Dumping structure for table test.polls_answers
DROP TABLE IF EXISTS `polls_answers`;
CREATE TABLE IF NOT EXISTS `polls_answers` (
    `poll_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `question_id` int(11) NOT NULL,
    `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    UNIQUE KEY `unique_index` (`poll_id`,`user_id`,`question_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.polls_answers: 0 rows
/*!40000 ALTER TABLE `polls_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_answers` ENABLE KEYS */;

-- Dumping structure for table test.polls_questions
DROP TABLE IF EXISTS `polls_questions`;
CREATE TABLE IF NOT EXISTS `polls_questions` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `parent_id` int(11) NOT NULL DEFAULT 0,
    `poll_id` int(11) NOT NULL,
    `order` int(11) NOT NULL,
    `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` int(11) NOT NULL DEFAULT 2,
    `min_selections` int(11) NOT NULL DEFAULT 1,
    `options` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.polls_questions: 0 rows
/*!40000 ALTER TABLE `polls_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_questions` ENABLE KEYS */;

-- Dumping structure for table test.recycler_prizes
DROP TABLE IF EXISTS `recycler_prizes`;
CREATE TABLE IF NOT EXISTS `recycler_prizes` (
    `rarity` int(11) NOT NULL,
    `item_id` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.recycler_prizes: 0 rows
/*!40000 ALTER TABLE `recycler_prizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recycler_prizes` ENABLE KEYS */;

-- Dumping structure for table test.rooms
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `owner_id` int(11) NOT NULL DEFAULT 0,
    `owner_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `model` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'model_a',
    `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `state` enum('open','locked','password','invisible') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
    `users` int(11) NOT NULL DEFAULT 0,
    `users_max` int(11) NOT NULL DEFAULT 25,
    `guild_id` int(11) NOT NULL DEFAULT 0,
    `category` int(11) NOT NULL DEFAULT 1,
    `score` int(11) NOT NULL DEFAULT 0,
    `paper_floor` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0',
    `paper_wall` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0',
    `paper_landscape` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0',
    `thickness_wall` int(1) NOT NULL DEFAULT 0,
    `wall_height` int(2) NOT NULL DEFAULT -1,
    `thickness_floor` int(1) NOT NULL DEFAULT 0,
    `moodlight_data` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2,1,1,#000000,255;2,3,1,#000000,255;2,3,1,#000000,255;',
    `tags` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `is_public` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `is_staff_picked` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `allow_other_pets` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `allow_other_pets_eat` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `allow_walkthrough` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `allow_hidewall` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `chat_mode` int(11) NOT NULL DEFAULT 0,
    `chat_weight` int(11) NOT NULL DEFAULT 1,
    `chat_speed` int(11) NOT NULL DEFAULT 1,
    `chat_hearing_distance` int(11) NOT NULL DEFAULT 50,
    `chat_protection` int(11) NOT NULL DEFAULT 2,
    `override_model` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `who_can_mute` int(11) NOT NULL DEFAULT 0,
    `who_can_kick` int(11) NOT NULL DEFAULT 0,
    `who_can_ban` int(11) NOT NULL DEFAULT 0,
    `poll_id` int(11) NOT NULL DEFAULT 0,
    `roller_speed` int(3) NOT NULL DEFAULT 4,
    `promoted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `trade_mode` int(11) NOT NULL DEFAULT 2,
    `move_diagonally` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `jukebox_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `hidewired` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `is_forsale` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE,
    KEY `name` (`name`) USING BTREE,
    KEY `owner_name` (`owner_name`) USING BTREE,
    KEY `owner_id` (`owner_id`) USING BTREE,
    KEY `guild_id` (`guild_id`) USING BTREE,
    KEY `category` (`category`) USING BTREE,
    KEY `public_status` (`is_public`,`is_staff_picked`) USING BTREE,
    KEY `togehter_data` (`name`,`owner_name`,`guild_id`) USING BTREE,
    KEY `tags` (`tags`) USING BTREE,
    KEY `state` (`state`) USING BTREE,
    KEY `description` (`description`) USING BTREE,
    KEY `users` (`users`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.rooms: ~0 rows (approximately)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

-- Dumping structure for table test.room_bans
DROP TABLE IF EXISTS `room_bans`;
CREATE TABLE IF NOT EXISTS `room_bans` (
    `room_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `ends` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.room_bans: 0 rows
/*!40000 ALTER TABLE `room_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_bans` ENABLE KEYS */;

-- Dumping structure for table test.room_enter_log
DROP TABLE IF EXISTS `room_enter_log`;
CREATE TABLE IF NOT EXISTS `room_enter_log` (
    `room_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL,
    `exit_timestamp` int(11) NOT NULL DEFAULT 0,
    KEY `room_enter_log_room_id` (`room_id`) USING BTREE,
    KEY `room_enter_log_user_entry` (`user_id`,`timestamp`) USING BTREE,
    KEY `room_id` (`room_id`) USING BTREE,
    KEY `exit_timestamp` (`exit_timestamp`) USING BTREE,
    KEY `timestamps` (`timestamp`,`exit_timestamp`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.room_enter_log: 0 rows
/*!40000 ALTER TABLE `room_enter_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_enter_log` ENABLE KEYS */;

-- Dumping structure for table test.room_game_scores
DROP TABLE IF EXISTS `room_game_scores`;
CREATE TABLE IF NOT EXISTS `room_game_scores` (
    `room_id` int(32) NOT NULL,
    `game_start_timestamp` int(11) NOT NULL,
    `game_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `user_id` int(11) NOT NULL,
    `team_id` int(11) NOT NULL,
    `score` int(11) NOT NULL,
    `team_score` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_game_scores: 0 rows
/*!40000 ALTER TABLE `room_game_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_game_scores` ENABLE KEYS */;

-- Dumping structure for table test.room_models
DROP TABLE IF EXISTS `room_models`;
CREATE TABLE IF NOT EXISTS `room_models` (
    `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `door_x` int(11) NOT NULL,
    `door_y` int(11) NOT NULL,
    `door_dir` int(4) NOT NULL DEFAULT 2,
    `heightmap` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
    `public_items` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
    `club_only` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`name`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_models: 60 rows
/*!40000 ALTER TABLE `room_models` DISABLE KEYS */;
INSERT INTO `room_models` (`name`, `door_x`, `door_y`, `door_dir`, `heightmap`, `public_items`, `club_only`) VALUES
	('model_basa', 0, 15, 2, 'xxxxxxxxxxxxxxxxxxxxxx\r\nx22222222222222222222x\r\nx22222222222222222222x\r\nx22222222222222222222x\r\nx22222222222222222222x\r\nx22222222222222222222x\r\nx22222222222222222222x\r\nx22222222222222222222x\r\nx000x11xxxxxxxx11x000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nx00000000000000000000x\r\nxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_4', 0, 12, 2, 'xxxxxxxxxxxxxxxxxxxxxxx\r\nxXXXXXXXX9999999999999x\r\nxXXXXXXXX9999999999999x\r\nxXXXXXXXX9999999999999x\r\nxXXXXXXXX9999999999999x\r\nx00000000XXXXXXX999999x\r\nx00000000XXXXXXX999999x\r\nx00000000XXXXXXX999999x\r\nx00000000XXXXXXX999999x\r\nx000000000000000999999x\r\nx000000000000000999999x\r\nx000000000000000999999x\r\n0000000000000000999999x\r\nx000000000000000XXXXXXx\r\nx000000000000000XXXXXXx\r\nx000000000000000XXXXXXx\r\nx000000000000000XXXXXXx\r\nx000000000000000XXXXXXx\r\nx000000000000000XXXXXXx\r\nxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_3', 0, 10, 2, 'XXXXXXXXXXXXXXXXX\r\nXXX0000000000000X\r\nXXX0000000000000X\r\nXXX0000000000000X\r\nXXX0000000000000X\r\nXXX0000000000000X\r\nXXX0000000000000X\r\nX000000000000000X\r\nX000000000000000X\r\nX000000000000000X\r\n0000000000000000X\r\nX000000000000000X\r\nX000000000000000X\r\nX000000000000000X\r\nXXXXXXXXXXXXXXXXX', '', '1'),
	('model_b2g', 0, 0, 2, 'xxxxxxxxxxxxxx\r\nx00000x000000x\r\nx000000000000x\r\nx00000x000000x\r\nx00000x000000x\r\nx00000x000000x\r\nx00000x000000x\r\nxxx0xxx000000x\r\nx000000000000x\r\nx000000000000x\r\nx000000000000x\r\nx000000000000x\r\nx000000000000x\r\nx000000000000x\r\nx000000000000x\r\nx000000000000x\r\nx000000000000x\r\nx00000xx00000x\r\nxxxxxxxxxxxxxx', '', '1'),
	('model_opening', 0, 23, 2, 'xxxxxxxxxxxxxxxxxxx\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx2222xx111111111111\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\n22222xx000000000000\r\nx2222xx000000000000\r\nxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_y', 0, 3, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx00000000xx0000000000xx0000x\r\nx00000000xx0000000000xx0000x\r\n000000000xx0000000000xx0000x\r\nx00000000xx0000000000xx0000x\r\nx00000000xx0000xx0000xx0000x\r\nx00000000xx0000xx0000xx0000x\r\nx00000000xx0000xx0000000000x\r\nx00000000xx0000xx0000000000x\r\nxxxxx0000xx0000xx0000000000x\r\nxxxxx0000xx0000xx0000000000x\r\nxxxxx0000xx0000xxxxxxxxxxxxx\r\nxxxxx0000xx0000xxxxxxxxxxxxx\r\nx00000000xx0000000000000000x\r\nx00000000xx0000000000000000x\r\nx00000000xx0000000000000000x\r\nx00000000xx0000000000000000x\r\nx0000xxxxxxxxxxxxxxxxxx0000x\r\nx0000xxxxxxxxxxxxxxxxxx0000x\r\nx00000000000000000000000000x\r\nx00000000000000000000000000x\r\nx00000000000000000000000000x\r\nx00000000000000000000000000x\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_oscar', 0, 15, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx11111111xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxx11xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111x11111111x00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111x11111111x00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111x11111111x00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111111111111100000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111111111111100000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111x11111111x00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111x11111111x00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111111x11111111x00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxx11xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_u', 0, 17, 2, 'xxxxxxxxxxxxxxxxxxxxxxxx\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\n11111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nx1111100000000000000000x\r\nxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_z', 0, 9, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxx00000000000000000000\r\nxxxxxxxxxxx00000000000000000000\r\nxxxxxxxxxxx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\n000000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nx00000000xx00000000000000000000\r\nxxxxxxxxxxx00000000000000000000\r\nxxxxxxxxxxx00000000000000000000\r\nxxxxxxxxxxx00000000000000000000\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_w', 0, 3, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx2222xx1111111111xx11111111\r\nx2222xx1111111111xx11111111\r\n222222111111111111111111111\r\nx22222111111111111111111111\r\nx22222111111111111111111111\r\nx22222111111111111111111111\r\nx2222xx1111111111xx11111111\r\nx2222xx1111111111xx11111111\r\nx2222xx1111111111xxxx1111xx\r\nx2222xx1111111111xxxx0000xx\r\nxxxxxxx1111111111xx00000000\r\nxxxxxxx1111111111xx00000000\r\nx22222111111111111000000000\r\nx22222111111111111000000000\r\nx22222111111111111000000000\r\nx22222111111111111000000000\r\nx2222xx1111111111xx00000000\r\nx2222xx1111111111xx00000000\r\nx2222xxxx1111xxxxxxxxxxxxxx\r\nx2222xxxx0000xxxxxxxxxxxxxx\r\nx2222x0000000000xxxxxxxxxxx\r\nx2222x0000000000xxxxxxxxxxx\r\nx2222x0000000000xxxxxxxxxxx\r\nx2222x0000000000xxxxxxxxxxx\r\nx2222x0000000000xxxxxxxxxxx\r\nx2222x0000000000xxxxxxxxxxx', '', '1'),
	('model_x', 0, 12, 2, 'xxxxxxxxxxxxxxxxxxxx\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nxxx00xxx0000xxx00xxx\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\n0000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000xxxxxx000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('park_b', 11, 2, 6, '0000x0000000\r\n0000xx000000\r\n000000000000\r\n00000000000x\r\n000000000000\r\n00x0000x0000', '', '0'),
	('model_0', 0, 4, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx00000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx00000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx00000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000\r\n000000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000\r\nx00000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000\r\nx00000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000\r\nx00000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx00000000xx00000000xx00000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_v', 0, 3, 2, 'xxxxxxxxxxxxxxxxxxxx\r\nx222221111111111111x\r\nx222221111111111111x\r\n2222221111111111111x\r\nx222221111111111111x\r\nx222221111111111111x\r\nx222221111111111111x\r\nxxxxxxxx1111xxxxxxxx\r\nxxxxxxxx0000xxxxxxxx\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx00000000000x000000x\r\nx00000000000x000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nxxxxxxxx00000000000x\r\nx000000x00000000000x\r\nx000000x0000xxxxxxxx\r\nx00000000000x000000x\r\nx00000000000x000000x\r\nx00000000000x000000x\r\nx00000000000x000000x\r\nxxxxxxxx0000x000000x\r\nx000000x0000x000000x\r\nx000000x0000x000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nx000000000000000000x\r\nxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_t', 0, 3, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx222222222222222222222222222x\r\nx222222222222222222222222222x\r\n2222222222222222222222222222x\r\nx222222222222222222222222222x\r\nx2222xxxxxx222222xxxxxxx2222x\r\nx2222xxxxxx111111xxxxxxx2222x\r\nx2222xx111111111111111xx2222x\r\nx2222xx111111111111111xx2222x\r\nx2222xx11xxx1111xxxx11xx2222x\r\nx2222xx11xxx0000xxxx11xx2222x\r\nx22222111x00000000xx11xx2222x\r\nx22222111x00000000xx11xx2222x\r\nx22222111x00000000xx11xx2222x\r\nx22222111x00000000xx11xx2222x\r\nx22222111x00000000xx11xx2222x\r\nx22222111x00000000xx11xx2222x\r\nx2222xx11xxxxxxxxxxx11xx2222x\r\nx2222xx11xxxxxxxxxxx11xx2222x\r\nx2222xx111111111111111xx2222x\r\nx2222xx111111111111111xx2222x\r\nx2222xxxxxxxxxxxxxxxxxxx2222x\r\nx2222xxxxxxxxxxxxxxxxxxx2222x\r\nx222222222222222222222222222x\r\nx222222222222222222222222222x\r\nx222222222222222222222222222x\r\nx222222222222222222222222222x\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_s', 0, 3, 2, 'xxxxxx\r\nx00000\r\nx00000\r\n000000\r\nx00000\r\nx00000\r\nx00000\r\nx00000', '', '0'),
	('park_a', 2, 15, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0xxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00xxxxxxxxxxxx\r\nxxxxxxxxxxxxx0x00xxxxxxxxxxx0x000xxxxxxxxxxx\r\nxxxxxxxxxxxx0000000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxx000000000000000000000000xxxxxxxxx\r\nxxxxxxxxxxx0000000000000000000000000xxxxxxxx\r\nxxxxxxxxxxx00000000000000000000000000xxxxxxx\r\nxxxxxxxx000000000000000000000000000000xxxxxx\r\nxxxxxxx00000000000000000000000000000000xxxxx\r\nxxxxxxx000000000000000000000000000000000xxxx\r\nxxxxxxx0000000000000000000000000000000000xxx\r\nxxxxxxxxx000000000000000000000000000000000xx\r\n00000000000000000000xx00000000000000000000xx\r\n0000000000000000000xxxx00000000000xxxxxxx0xx\r\n0000000000000000000xxxx00000000000x00000xxxx\r\nxxxxx00x0000000000xxxxx0xxxxxx0000x0000000xx\r\nxxxxx0000000000000xxxxx0xx000x0000x000000xxx\r\nxxxxx0000000000000xxxxx0x000000000x00000xxxx\r\nxxxxx000000x0000000xxxx0x000000000xxx00xxxxx\r\nxxxxxxxx000x0000000xxx00xxx000000x0000xxxxxx\r\nxxxxxxxx000x000000xxxx0x0000000000000xxxxxxx\r\nxxxxxxxx000x000000011100000000000000xxxxxxxx\r\nxxxxxxxx000x00000001110000000000000xxxxxxxxx\r\nxxxxxxxxx00x0000000111x00000000x00xxxxxxxxxx\r\nxxxxxxxxxx0x0000000xxx0000000xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxx000000xxxx0000000xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxx000000xxx00xxxxx00xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxx0xx000x00xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxx0x000000xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxxxx00000xxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxxxx00xxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxx0xxxxxxxxxxxxxxxxxxxx', 'RPHN527parkfence2SFQAHHHN529parkfence2QGQAHHHM619parkfence1SDRAHHHO620parkfence3PERAHPAHO621parkfence3QERAHPAHO622parkfence3RERAHPAHN623parkfence2SERAHPAHO624parkfence3PFRAHPAHO625parkfence3QFRAHPAHO626parkfence3RFRAHPAHM627parkfence1SFRAHJHO629parkfence3QGRAHJHN717parkfence2QDSAHHHO719parkfence3SDSAHJHO723parkfence3SESAHJHO727parkfence3SFSAHJHO729parkfence3QGSAHJHO817parkfence3QDPBHJHO819parkfence3SDPBHJHN821parkfence2QEPBHHHO823parkfence3SEPBHJHN825parkfence2QFPBHHHO827parkfence3SFPBHJHO829parkfence3QGPBHJHL98bench2PBQBHPAHK99benchQBQBHPAHO917parkfence3QDQBHJHN919parkfence2SDQBHRAHO921parkfence3QEQBHJHN923parkfence2SEQBHRAHO925parkfence3QFQBHJHN927parkfence2SFQBHRAHO929parkfence3QGQBHJHO1017parkfence3QDRBHJHO1021parkfence3QERBHJHO1025parkfence3QFRBHJHO1029parkfence3QGRBHJHL117bench2SASBHJHM1117parkfence1QDSBHPAHO1118parkfence3RDSBHPAHO1119parkfence3SDSBHPAHO1120parkfence3PESBHPAHN1121parkfence2QESBHJHO1122parkfence3RESBHPAHO1123parkfence3SESBHPAHO1124parkfence3PFSBHPAHN1125parkfence2QFSBHJHO1126parkfence3RFSBHPAHO1127parkfence3SFSBHPAHO1128parkfence3PGSBHPAHM1129parkfence1QGSBHRAHK127benchSAPCHJHL1635bench2SHPDHJHL1637bench2QIPDHPAHK1638benchRIPDHPAHK1735benchSHQDHJHL1827bench2SFRDHPAHK1828benchPGRDHPAHL1835bench2SHRDHJHL1925bench2QFSDHJHK1935benchSHSDHJHK2025benchQFPEHJHL2925bench2QFQGHPAHK2926benchRFQGHPAHL3023bench2SERGHJHK3123benchSESGHJ@`SGSBMRDPBPA0.0I2Mqueue_tile2JMPGRAH0.0I2Mqueue_tile2SAMPFSAJ0.0I2Mqueue_tile2QBMRFSAPA0.0I2Mqueue_tile2SFMSERBJ0.0I2Mqueue_tile2SCMRFPBPA0.0I2Mqueue_tile2REMPGQBH0.0I2Mqueue_tile2PGMPFRBH0.0I2Mqueue_tile2PCMPEPBH0.0I2Mqueue_tile2QGMRFRBJ0.0I2Mqueue_tile2QDMRDQBPA0.0I2Mqueue_tile2RFMRERBJ0.0I2Mqueue_tile2PFMSDRBJ0.0I2Mqueue_tile2PDMPGPBH0.0I2Mqueue_tile2RGMSFRBJ0.0I2Mqueue_tile2RAMRESAPA0.0I2Mqueue_tile2RBMPGSAH0.0I2Mqueue_tile2SDMREQBPA0.0I2Mqueue_tile2QEMRFQBPA0.0I2Mqueue_tile2RCMPFPBH0.0I2Mqueue_tile2KMRDSAPA0.0I2Mqueue_tile2PAMPESAJ0.0I2Mqueue_tile2PBMQFSAJ0.0I2Mqueue_tile2IMPGQAH0.0I2Mqueue_tile2SEMRDRBJ0.0I2Mqueue_tile2QCMREPBPA0.0I2Mqueue_tile2SGMPGRBH0.0I2Mqueue_tile2QAMQESAJ0.0I2Mqueue_tile2QFMPERBH0.0I2Mqueue_tile2RDMPEQBH0.0I2Mqueue_tile2PEMPFQBH0.0I2Mqueue_tile2', '0'),
	('the_den', 3, 22, 0, '00000000xxxxxxxx\r\n0000000000000000\r\n0000000000000000\r\n000000000000xx00\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\nx000000000000000\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nxxx00xxxxxxxxxxx\r\nxxx00xxxxxxxxxxx\r\nxxx00xxxxxxxxxxx\r\nGV00000000xxxxxxxx\r\n0000000000000000\r\n0000000000000000\r\n000000000000xx00\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\nx000000000000000\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nxxx00xxxxxxxxxxx\r\nxxx00xxxxxxxxxxx\r\nxxx00xxxxxxxxxxx', '', '0'),
	('cinema_a', 20, 27, 0, 'xxxxxxx1xx11111111xxxxxx\r\nxxx1111111111111111xxxxx\r\nxxx111xxxx1111111111xxxx\r\nxxxx2xxxxxxxxxxxxxxxxxxx\r\nxx3x3x333311xxxxxxxxxx11\r\nxx3333333311111111111111\r\nxx3333333311111111111111\r\nxx3333333311111111122111\r\nxx3333333311x22222222111\r\nxx3333333311x22222222111\r\nxx3333333311xxxxxxxxx111\r\nxx3333333311111111111111\r\nxx3333333311111111111111\r\nxx3333333311111111111111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\n333333332111111xxxx11111\r\n333333332111111111111111\r\n333333332111111111111111\r\n333333332111111111111111\r\nxx3333332111111111111111\r\nxxxxxxxxxxxxxxxxxxx11111\r\nxxxxxxxxxxxxxxxxxxx11111\r\nxxxxxxxxxxxxxxxxxxx11111', 'PUHC42orangeJPAKHHA47loungey_chairSAPAKJHV48loungey_tablebigbPBPAKHHA49loungey_chairQBPAKRAHA52loungey_chairJQAKPAHA57loungey_chairSAQAKJHU58loungey_tablebigaPBQAKHHA59loungey_chairQBQAKRAHB62loungey_tableJRAKHHA72loungey_chairJSAKHHh713theater_chairQCSAIHHh714theater_chairRCSAIHHh715theater_chairSCSAIHHh716theater_chairPDSAIHHh717theater_chairQDSAIHHh718theater_chairRDSAIHHz721stairQESAIHHL89lightpoleQBPBKHHq813pomomaskiQCPBJJHq814pomomaskiRCPBJHHq815pomomaskiSCPBJHHq816pomomaskiPDPBJHHq817pomomaskiQDPBJHHq818pomomaskiRDPBJHHq819pomomaskiSDPBJIHz821stairQEPBIHHC92orangeJQBKHHh913theater_chairQCQBJHHh914theater_chairRCQBJHHh915theater_chairSCQBJHHh916theater_chairPDQBJHHh917theater_chairQDQBJHHh918theater_chairRDQBJHHh919theater_chairSDQBJHHh920theater_chairPEQBJHHz921stairQEQBIHHA102loungey_chairJRBKPAHA109loungey_chairQBRBKPAHB112loungey_tableJSBKHHB119loungey_tableQBSBKHHA122loungey_chairJPCKHHA129loungey_chairQBPCKHHd1217cubicb_chairQDPCIRAHc1219cubico_chairSDPCIJHd1315cubicb_chairSCQCIJHL1319lightpoleSDQCIHHd1320cubicb_chairPEQCIRAHL149lightpoleQBRCKHHA152loungey_chairJSCKPAHd1514cubicb_chairRCSCIPAHc1519cubico_chairSDSCIPAHB162loungey_tableJPDKHHA167loungey_chairSAPDKJHB168loungey_tablePBPDKJHA169loungey_chairQBPDKRAHd1613cubicb_chairQCPDIJHd1614cubicb_chairRCPDIRAHC1619orangeSDPDIHHA172loungey_chairJQDKHHA177loungey_chairSAQDKJHB178loungey_tablePBQDKJHA179loungey_chairQBQDKRAHd1719cubicb_chairSDQDIJHC182orangeJRDKHHd1814cubicb_chairRCRDIPAHK192bardesqueJSDKHHK202bardesqueJPEKIHb203bar_chairKPEKRAHL209lightpoleQBPEKHHd2014cubicb_chairRCPEIHHd2019cubicb_chairSDPEIJHc2020cubico_chairPEPEIRAHK212bardesqueJQEKIHb213bar_chairKQEKRAHd2119cubicb_chairSDQEIHHK222bardesqueJREKIHb223bar_chairKREKRAHL2216lightpolePDREIHHc2218cubico_chairRDREIHHK232bardesqueJSEKIHb233bar_chairKSEKRAHK242bardesqueJPFKIHb243bar_chairKPFKRAHK252bardesqueJQFKJ', '0'),
	('picnic', 16, 5, 4, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxx22222xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n22xxxxxxxxxxxxx22xxxxxxxxxxxxxxxxxxxxx\r\n2222222222222222222x222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222xxx222222222222222222222222\r\n2222222222xx33x22222222222222222222222\r\n222222222xx3333x2222222222222222222222\r\n222222222x333333x222222222222222222222\r\n222222222x333333x222222222222222222222\r\n2222222222x3332x2222222222222222222222\r\n22222222222x33x22222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222x22222xxxx22222222222222222222\r\n22222222222222xxxx22222222222222222222\r\n22222222222222xxx222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222\r\n22222222222222222222222222222222222222', 'PcHh710hedge7RBSAJPAHh711hedge7SBSAJPAHh712hedge7PCSAJPAHh713hedge7QCSAJPAHy714hedge8RCSAJPAHs718hedge2RDSAJPAHh719hedge7SDSAJPAHh720hedge7PESAJPAHh721hedge7QESAJPAHz814hedge9RCPBJPAHz818hedge9RDPBJPAHv93hedge5KQBJPAHz103hedge9KRBJPAHc1112picnic_dummychair1PCSBKPAHc1113picnic_dummychair1QCSBKPAHc1114picnic_dummychair1RCSB`hFFPAHc1310picnic_dummychair1RBQCKJHc1315picnic_dummychair1SCQCKRAHb1321picnic_groundQEQCJPAHb147picnic_groundSARCJPAHc1410picnic_dummychair1RBRCKJHc1415picnic_dummychair1SCRCKRAHb1519picnic_groundSDSCJJHb1523picnic_groundSESCJRAHb165picnic_groundQAPDJJHb169picnic_groundQBPDJRAHL1620picnic_cloth1PEPDJJHL176picnic_cloth1RAQDJJHb1721picnic_groundQEQDJHHb187picnic_groundSARDJHHa190picnic_redbench2HSDJJHA200picnic_redbench1HPEJJHw2011hedge6SBPEJPAHh2012hedge7PCPEJPAHh2013hedge7QCPEJPAHt2014hedge3RCPEJPAHu2017hedge4QDPEJPAHh2018hedge7RDPEJPAHh2019hedge7SDPEJPAHy2020hedge8PEPEJPAHv2111hedge5SBQEJPAHM2112picnic_bench1PCQEJPAHN2113picnic_bench2QCQEJPAHO2114picnic_bench3RCQEJPAHM2117picnic_bench1QDQEJPAHN2118picnic_bench2RDQEJPAHO2119picnic_bench3SDQEJPAHv2120hedge5PEQEJPAHa220picnic_redbench2HREJJHv2211hedge5SBREJPAHv2220hedge5PEREJPAHb2225picnic_groundQFREJPAHA230picnic_redbench1HSEJJHv2311hedge5SBSEJPAHM2312picnic_bench1PCSEJJHM2319picnic_bench1SDSEJRAHv2320hedge5PESEJPAHc246picnic_dummychair1RAPFJPAHd247picnic_dummychair4SAPFJPAHe248picnic_dummychair6PBPFJPAHv2411hedge5SBPFJPAHN2412picnic_bench2PCPFJJHN2419picnic_bench2SDPFJRAHv2420hedge5PEPFJPAHb2423picnic_groundSEPFJJHb2427picnic_groundSFPFJRAHK255picnic_stumpQAQFJJHv2511hedge5SBQFJPAHN2512picnic_bench2PCQFJJHN2519picnic_bench2SDQFJRAHv2520hedge5PEQFJPAHG2524picnic_cloth2PFQFJJHK267picnic_stumpSARFJHHv2611hedge5SBRFJPAHO2612picnic_bench3PCRFJJHH2614picnic_fireplace1RCRFJHHI2616picnic_fireplace2PDRFJJHO2619picnic_bench3SDRFJRAHv2620hedge5PERFJPAHb2625picnic_groundQFRFJHHz2711hedge9SBSFJPAHQ2712picnic_lemonadePCSFJPAHz2720hedge9PESFJPAHE298picnic_firewood2PBQGJHHa300picnic_redbench2HRGJJHD308picnic_firewood1PBRGJHHA310picnic_redbench1HSGJJHD318picnic_firewood1PBSGJHHM3112picnic_bench1PCSGJPAHN3113picnic_bench2QCSGJPAHO3114picnic_bench3RCSGJPAHM3118picnic_bench1RDSGJPAHN3119picnic_bench2SDSGJPAHO3120picnic_bench3PESGJPAHf3127picnic_carrotSFSGJHHf3128picnic_carrotPGSGJHHf3129picnic_carrotQGSGJHHf3130picnic_carrotRGSGJHHf3131picnic_carrotSGSGJHHD328picnic_firewood1PBPHJHHF3212picnic_table2PCPHJJHP3214picnic_tableRCPHJJHF3218picnic_table2RDPHJJHP3220picnic_tablePEPHJJHr333hedge1KQHJPAHD338picnic_firewood1PBQHJHHM3312picnic_bench1PCQHJHHN3313picnic_bench2QCQHJHHO3314picnic_bench3RCQHJHHM3318picnic_bench1RDQHJHHN3319picnic_bench2SDQHJHHO3320picnic_bench3PEQHJHHg3327picnic_cabbageSFQHJHHg3328picnic_cabbagePGQHJHHg3329picnic_cabbageQGQHJHHv343hedge5KRHJPAHD348picnic_firewood1PBRHJHHv353hedge5KSHJPAHD358picnic_firewood1PBSHJHHv363hedge5KPIJPAHD368picnic_firewood1PBPIJHHD378picnic_firewood1PBQIJHHM3712picnic_bench1PCQIJPAHN3713picnic_bench2QCQIJPAHO3714picnic_bench3RCQIJPAHM3718picnic_bench1RDQIJPAHN3719picnic_bench2SDQIJPAHO3720picnic_bench3PEQIJPAHD388picnic_firewood1PBRIJHHF3812picnic_table2PCRIJJHP3814picnic_tableRCRIJJHF3818picnic_table2RDRIJJHP3820picnic_tablePERIJJHJ398picnic_firewood3PBSIJHHM3912picnic_bench1PCSIJHHN3913picnic_bench2QCSIJHHO3914picnic_bench3RCSIJHHM3918picnic_bench1RDSIJHHN3919picnic_bench2SDSIJHHO3920picnic_bench3PESIJH', '0'),
	('custom_model', 0, 0, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxx0000000000000xxxx\r\nxxxxxxxxxxx000000000000000xxx\r\nxxxxxxxxxx00000000000000000xx\r\nxxxxxxxxxx00000000000000000xx\r\nxxxxxxxxxx00000000000000000xx\r\nxxxxxxxxxx11111111111111111xx\r\nxxxxxxxxxx22222222222222222xx\r\nxxxxxxxxxx22222222222222222xx\r\nxxxxxxxxxx22222222222222222xx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('theater', 20, 27, 0, 'XXXXXXXXXXXXXXXXXXXXXXX\r\nXXXXXXXXXXXXXXXXXXXXXXX\r\nXXXXXXXXXXXXXXXXXXXXXXX\r\nXXXXXXXXXXXXXXXXXXXXXXX\r\nXXXXXXXXXXXXXXXXXXXXXXX\r\nXXXXXXXXXXXXXXXXXXXXXXX\r\nXXXXXXX111111111XXXXXXX\r\nXXXXXXX11111111100000XX\r\nXXXX00X11111111100000XX\r\nXXXX00x11111111100000XX\r\n4XXX00X11111111100000XX\r\n4440000XXXXXXXXX00000XX\r\n444000000000000000000XX\r\n4XX000000000000000000XX\r\n4XX0000000000000000000X\r\n44400000000000000000000\r\n44400000000000000000000\r\n44X00000000000000000000\r\n44X11111111111111111000\r\n44X11111111111111111000\r\n33X11111111111111111000\r\n22X11111111111111111000\r\n22X11111111111111111000\r\n22X11111111111111111000\r\n22X11111111111111111000\r\n22X11111111111111111000\r\n22211111111111111111000\r\n22211111111111111111000\r\nXXXXXXXXXXXXXXXXXXXX00X\r\nXXXXXXXXXXXXXXXXXXXX00X', 'QKHm1011micSBRBIHHd112thchair2JSBPAJHd122thchair2JPCPAJHd152thchair2JSCPAJHc156thchair1RASCHHHc157thchair1SASCHHHc158thchair1PBSCHHHc159thchair1QBSCHHHc1510thchair1RBSCHHHc1512thchair1PCSCHHHc1513thchair1QCSCHHHc1514thchair1RCSCHHHc1515thchair1SCSCHHHc1516thchair1PDSCHHHd162thchair2JPDPAJHc206thchair1RAPEIHHc207thchair1SAPEIHHc208thchair1PBPEIHHc209thchair1QBPEIHHc2010thchair1RBPEIHHc2012thchair1PCPEIHHc2013thchair1QCPEIHHc2014thchair1RCPEIHHc2015thchair1SCPEIHHc2016thchair1PDPEIHHc236thchair1RASEIHHc237thchair1SASEIHHc238thchair1PBSEIHHc239thchair1QBSEIHHc2310thchair1RBSEIHHc2312thchair1PCSEIHHc2313thchair1QCSEIHHc2314thchair1RCSEIHHc2315thchair1SCSEIHHc2316thchair1PDSEIHHc266thchair1RARFIHHc267thchair1SARFIHHc268thchair1PBRFIHHc269thchair1QBRFIHHc2610thchair1RBRFIHHc2612thchair1PCRFIHHc2613thchair1QCRFIHHc2614thchair1RCRFIHHc2615thchair1SCRFIHHc2616thchair1PDRFIH', '0'),
	('orient', 35, 22, 6, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx00000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxx1xx000x000xx111x111xxx\r\nxxxxxxxxxxxxxx1xx000x000xxxxxx1111xx\r\nxxxxxxxxxxxxxx1xx000x000x111111111xx\r\nxxxxxxxxxxxxxx1xx000x000x111111111xx\r\nxxx111111111111xx000x000x111111111xx\r\nxxx1xxxxxxxxxxxxx000x000x111111111xx\r\nxxx1x1111111111000000000x111111111xx\r\nxxx1x1111111111000000000xx1111111xxx\r\nxxx1x11xxxxxx11000000000xx1111111100\r\nxxx111xxxxxxx11000000000011111111100\r\nxxx111xxxxxxx11000000000011111111100\r\nxxxxx1xxxxxxx11000000000011111111100\r\nxxxxx11xxxxxx11000000000xx1111111100\r\nxxxxx1111111111000000000xx1111111xxx\r\nxxxxx1111111111xx000x000x111111111xx\r\nxxxxxxxxxxxxxxxxx000x000x111111111xx\r\nxxxxxxxxxxxxxxxxx000x000x111111111xx\r\nxxxxxxxxxxxxxxxxx000x000x111111111xx\r\nxxxxxxxxxxxxxxxxx000x000x111111111xx\r\nxxxxxxxxxxxxxxxxx000x00xx11xxxx111xx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxx11111111xx', 'SOHd1017benchQDRBHJHd1019benchSDRBHRAHd1021benchQERBHJHd1023benchSERBHRAHd1117benchQDSBHJHd1119benchSDSBHRAHd1121benchQESBHJHd1123benchSESBHRAHb1132koc_chairPHSBIPAHd1217benchQDPCHJHd1219benchSDPCHRAHd1221benchQEPCHJHd1223benchSEPCHRAHb1231koc_chairSGPCIJHa1232koc_tablePHPCIHHb1233koc_chairQHPCIRAHd1317benchQDQCHJHd1319benchSDQCHRAHd1321benchQEQCHJHd1323benchSEQCHRAHb1325koc_chairQFQCIPAHb1332koc_chairPHQCIHHd1417benchQDRCHJHd1419benchSDRCHRAHd1421benchQERCHJHd1423benchSERCHRAHa1425koc_tableQFRCIHHb1426koc_chairRFRCIRAHd1517benchQDSCHJHd1519benchSDSCHRAHd1521benchQESCHJHd1523benchSESCHRAHb1525koc_chairQFSCIHHb1529koc_chairQGSCIJHa1530koc_tableRGSCIHHb1531koc_chairSGSCIRAHb1630koc_chairRGPDIHHc2425chairf1QFPFIJHc2433chairf1QHPFIRAHd2517benchQDQFHJHd2519benchSDQFHRAHd2521benchQEQFHJHd2523benchSEQFHRAHc2525chairf1QFQFIJHc2533chairf1QHQFIRAHd2617benchQDRFHJHd2619benchSDRFHRAHd2621benchQERFHJHd2623benchSERFHRAHc2625chairf1QFRFIJHc2633chairf1QHRFIRAHd2717benchQDSFHJHd2719benchSDSFHRAHd2721benchQESFHJHd2723benchSESFHRAHd2817benchQDPGHJHd2819benchSDPGHRAHd2821benchQEPGHJHd2823benchSEPGHRAHd2917benchQDQGHJHd2919benchSDQGHRAHd2921benchQEQGHJHd2923benchSEQG`hFFRA', '0'),
	('dusty_lounge', 14, 1, 4, 'xxxxxxxxxxxxxx22xxxxxxxxxxxxx\r\nxxxxxxxxxx222x222x2xxxxxxxxxx\r\nxxxxxxx33322222222223xxxxxxx3\r\nxxxxxxx33322222222223xxxxxxx3\r\nxxxxxxx33322222222223x33333x3\r\nxxxxxxx33322222222223x33333x3\r\nxx111xx33322222222223xxxxxxx3\r\nxx111xxx332222222222333333333\r\nxx111xxxx32222222222333333333\r\nxx111xxxxxx222222222333333333\r\nxx111xxxxxxx1111111x333333333\r\nxx111xxxxxxx1111111x222222222\r\nxx111xxxxxx111111111111111111\r\nxx111xxxxxx111111111111111111\r\n11111xxxxxx111111111111111111\r\n11111xxxxxx111111111111111111\r\n11x11xxxxxx111111111111111111\r\n11xxxxxxxxx11111111111111111x\r\nx11xxxxxxxxx1111111x1111111xx\r\nxx11xxxxxxx111111111111111xxx\r\nxxx11xxxxxx11111111111111xxxx\r\nxxxx11111111111111111111xxxxx\r\nxxxxx11111111111111xxxxxxxxxx\r\nxxxxxxxxxxx11111111xxxxxxxxxx\r\nxxxxxxxxxxx11111111xxxxxxxxxx', 'QHHc48greenchair2PBPAKPAHd49greenchair1QBPAKPAHc68greenchair2PBRAKHHd69greenchair1QBRAKHHa620dustylampPERAKJHa628dustylampPGRAKJHc73greenchair2KSAIPAHd74greenchair1PASAIPAHc93greenchair2KQBIHHd94greenchair1PAQBIHHb1021yellowchairQERBKJHb1023yellowchairSERBKRAHb1026yellowchairRFRBKJHb1028yellowchairPGRBKRAHc1211greenchair2SBPCIJHc133greenchair2KQCIPAHd134greenchair1PAQCIPAHd1311greenchair1SBQCIJHa1411dustylampSBRCIJHc153greenchair2KSCIHHd154greenchair1PASCIHHc1511greenchair2SBSCIJHb1524yellowchairPFSCIPAHd1611greenchair1SBPDIJHb1722yellowchairREQDIJHa1724dustylampPFQDIJHb1726yellowchairRFQDIRAHa1911dustylampSBSDIJHb1924yellowchairPFSDIHHc2312greenchair2PCSEIJHc2314greenchair2RCSEIRAHd2412greenchair1PCPFIJHd2414greenchair1RCPFIRA', '0'),
	('netcafe', 22, 12, 2, 'xxxxx1111xxxxxxxxxxx1xxxx\r\nxxxxx1111111111111111xxxx\r\nxxxxx1111111111111111xxxx\r\nxxxxx1111111111111111xxxx\r\nxxxxxxxx0000000000000xxxx\r\n111111100000000000000xxxx\r\n111111100000000000000xxxx\r\n111111100000000000000xxxx\r\nxxxx11100000000000000xxxx\r\nx1xx11100000000000000xxxx\r\nx1xx11100000000000000xxxx\r\nx1xx111000000000000000000\r\nx1xx111000000000000000000\r\nxxxx111000000000000000000\r\nxxxx11100000000000000xxxx\r\nxxxx1110000000xx11111xxxx\r\nxxxxx111110000x111111xxxx\r\nxxxxxx111100001111111xxxx\r\nxxxxxx111100001111111xxxx\r\nxxxxxx111100001111111xxxx\r\nxxxxxx111100001111111xxxx\r\nxxxxxx111100001111111xxxx\r\nxxxxxx111100001111111xxxx\r\nxxxxx1111100001111111xxxx', 'RRHi06shift1RAHIPAHj07shift2SAHIPAHm110mRBIIHHl113lQCIIHHk116kPDIIHHk119kSDIIHHh35kukat6QAKIHHg36kukat5RAKIHHc312kukat2PCKIHHb313kukat1QCKIHHc319kukat2SDKIHHb320kukat1PEKIHHi412shift1PCPAHPAHj413shift2QCPAHPAHi419shift1SDPAHPAHj420shift2PEPAHPAHi50shift1HQAIPAHj51shift2IQAIPAHi52shift1JQAIPAHj53shift2KQAIPAHk715kSCSAHJHo716table2PDSAHRAHz717tablecornerQDSAHHHm718mRDSAHRAHl815lSCPBHJHo816table2PDPBHPAHl818lRDPBHRAHm94mPAQBIRAHk99kQBQBHJHp910table3RBQBHRAHz911tablecornerSBQBHHHm912mPCQBHRAHk915kSCQBHJHo916table2PDQBHJHk918kRDQBHRAHk104kPARBIRAHm109mQBRBHJHp1010table3RBRBHPAHm1012mPCRBHRAHm1015mSCRBHJHo1016table2PDRBHHHk1018kRDRBHRAHl114lPASBIRAHl119lQBSBHJHp1110table3RBSBHJHl1112lPCSBHRAHk124kPAPCIRAHl129lQBPCHJHp1210table3RBPCHHHk1212kPCPCHRAHm134mPAQCIRAHc165kukat2QAPDIHHb166kukat1RAPDIHHc167kukat2SAPDIHHb168kukat1PBPDIHHe169kukat3QBPDIHHd1615kukka2SCPDIHHf179kukat4QBQDIHHk186kRARDIRAHe189kukat3QBRDIHHs1820sofabig3PERDIRAHf199kukat4QBSDIHHn1917table1QDSDIPAHz1918tablecornerRDSDIHHr1920sofabig2PESDIRAHn2017table1QDPEIJHr2020sofabig2PEPEIRAHm216mRAQEIRAHn2117table1QDQEIHHq2120sofabig1PEQEIRAHv2316sofalittle3PDSEIHHu2317sofalittle2QDSEIHHt2318sofalittle1RDSEIHHa2320kukkaPESEIH', '0'),
	('rooftop_2', 4, 9, 2, 'x0000x000\r\nxxxxxx000\r\n000000000\r\n000000000\r\n000000000\r\n000000000\r\n000000000\r\n000000000\r\n000000000\r\n000000000\r\nxxx000xxx\r\nxxx000xxx', 'RDHk08rooftop_bigchairPBHHPAHl18rooftop_bigtablePBIHHHj20rooftop_sofabHJHPAHi21rooftop_sofaIJHPAHk28rooftop_bigchairPBJHHHk38rooftop_bigchairPBKHPAHl48rooftop_bigtablePBPAHHHj50rooftop_sofabHQAHHHi51rooftop_sofaIQAHHHk58rooftop_bigchairPBQAHHHj60rooftop_sofabHRAHPAHi61rooftop_sofaIRAHPAHj67rooftop_sofabSARAHPAHi68rooftop_sofaPBRAHPAHj90rooftop_sofabHQBHHHi91rooftop_sofaIQBHHHj97rooftop_sofabSAQBHHHi98rooftop_sofaPBQBHH', '0'),
	('star_lounge', 37, 36, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx2222x4444442222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222x444x32222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222xx4xx22222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx222222222222222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx222222222222222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx222222222222222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx222222222222222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx222222222222222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx222222222222222xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222222222222211111xxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222222222222211111xxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222222222222211111xxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222222222222211111xxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222222222222222111xxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx22222222222222222111xxxxxxxxx\r\nxxxxxxxxxxxxxxxx3333x22222222222222xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx3333x22222222222222xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx3333x22222222221111xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx3333xx2x22222220000xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx333333332222222000000xxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx333333332222222x0000000xxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx33333332222222x0000000xxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxx222222000000xxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'PXHk1521star_tableQESCJHHa1522star_sofaRESCJPAHb1523star_sofa2SESCJPAHz1524palmPFSCJHHb1621star_sofa2QEPDJJHQ1632dj1PHPDJHHW1633dj2QHPDJHHE1634dj3RHPDJHHa1721star_sofaQEQDJJHm1728star_microphonePGQDPAHHb1821star_sofa2QERDJJHa1835star_sofaSHRDJRAHa1921star_sofaQESDJJHb1935star_sofa2SHSDJRAHb2021star_sofa2QEPEJJHb2024star_sofa2PFPEJJHa2032star_sofaPHPEJRAHa2035star_sofaSHPEJRAHa2121star_sofaQEQEJJHa2124star_sofaPFQEJJHb2132star_sofa2PHQEJRAHb2135star_sofa2SHQEJRAHc2221star_sofachairQEREJJHk2224star_tablePFREJHHb2225star_sofa2QFREJHHa2226star_sofaRFREJHHb2230star_sofa2RGREJHHa2231star_sofaSGREJHHk2232star_tablePHREJHHk2235star_tableSHREJHHz2321palmQESEJHHa2335star_sofaSHSEJRAHp2422bar10REPFJHHb2435star_sofa2SHPFJRAHa2437star_sofaQIPFIPAHb2438star_sofa2RIPFIPAHa2439star_sofaSIPFIPAHb2440star_sofa2PJPFIPAHo2522bar9REQFJHHb2525star_sofa2QFQFJHHa2526star_sofaRFQFJHHb2530star_sofa2RGQFJHHa2531star_sofaSGQFJHHa2535star_sofaSHQFJRAHb2536star_sofa2PIQFIJHi2622bar8RERFJHHX2625palm1QFRFJHHV2626palm3RFRFJHHC2630palm2RGRFJHHB2631palm4SGRFJHHb2635star_sofa2SHRFJRAHa2636star_sofaPIRFIJHk2639star_tableSIRFIHHk2640star_tablePJRFIHHu2722bar7RESFJHHa2725star_sofaQFSFJPAHb2726star_sofa2RFSFJPAHa2730star_sofaRGSFJPAHb2731star_sofa2SGSFJPAHk2735star_tableSHSFJHHz2736palmPISFIHHk2737star_tableQISFIHHy2822bar6REPGJHHt2922bar5REQGJHHk2925star_tableQFQGJHHk2926star_tableRFQGJHHk3016star_tablePDRGKHHr3022bar4RERGJHHb3116star_sofa2PDSGKJHe3122bar3RESGJHHb3125star_sofa2QFSGJHHa3126star_sofaRFSGJHHa3130star_sofaRGSGJRAHa3216star_sofaPDPHKJHw3222bar2REPHJHHB3225palm4QFPHJHHX3226palm1RFPHJHHb3230star_sofa2RGPHJRAHb3316star_sofa2PDQHKJHq3322bar1REQHJHHa3325star_sofaQFQHJPAHb3326star_sofa2RFQHJPAHa3330star_sofaRGQHJRAHa3416star_sofaPDRHKJHb3430star_sofa2RGRHJRAHV3435palm3SHRHHHHC3436palm2PIRHHHHk3516star_tablePDSHKHHa3530star_sofaRGSHJRAHb3630star_sofa2RGPIJRAHc3725star_sofachairQFQIJHHb3726star_sofa2RFQIJHHa3727star_sofaSFQIJHHb3728star_sofa2PGQIJHHa3729star_sofaQGQIJHHk3730star_tableRGQIJH', '0'),
	('tearoom', 21, 19, 6, 'xxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxx3333x33333333x\r\n333333xx3333x33333333x\r\n3333333x3333x33333333x\r\n3333333x3333x33333333x\r\n3333333xxxxxx33333333x\r\n333333333333333333333x\r\n333333333333333333333x\r\n333333333333333333333x\r\n333333333333333333333x\r\n33333333222x333333333x\r\n33333333222x333333333x\r\n33333333222x333333333x\r\n33333333222x333333333x\r\n33333333111x333333333x\r\n33333333111x333333333x\r\n33333333111x333333333x\r\nxxxxxxxx111xxxxxxxxxxx\r\n11111111111111111111xx\r\n1111111111111111111111\r\n1111111111111111111111\r\n11111111111111111111xx', 'QIHh113hardwoodsofa1QCIKPAHi114hardwoodsofa2RCIKPAHj115hardwoodsofa3SCIKPAHc116teabambooPDIKHHh118hardwoodsofa1RDIKPAHi119hardwoodsofa2SDIKPAHj120hardwoodsofa3PEIKPAHl313teasmalltable1QCKKHHk315teasmalltable2SCKKHHl318teasmalltable1RDKKHHk320teasmalltable2PEKKHHe62teastoolJRAKPAHe63teastoolKRAKPAHf68chinastoolredPBRAKPAHf69chinastoolredQBRAKPAHf610chinastoolredRBRAKPAHf611chinastoolredSBRAKPAHa82teatable1JPBKHHb83teatable2KPBKHHm92teastool2JQBKHHm93teastool2KQBKHHe916teastoolPDQBKPAHe917teastoolQDQBKPAHa1116teatable1PDSBKHHb1117teatable2QDSBKHHe122teastoolJPCKPAHe123teastoolKPCKPAHm1216teastool2PDPCKHHm1217teastool2QDPCKHHa142teatable1JRCKHHb143teatable2KRCKHHm152teastool2JSCKHHm153teastool2KSCKHHd180teavaseHRDIHHg190chinastoolgreenHSDIJHg200chinastoolgreenHPEIJHd210teavaseHQEIH', '0'),
	('rooftop', 17, 12, 2, '44xxxxxxxxxxxxxxxxxx\r\n444xxxxxxxxxxx444444\r\n4444xxxxxxxxxx444444\r\n44444xxxx4xxxx444444\r\n444444xxx44xxx444444\r\n44444444444444444444\r\n44444444444444444444\r\n44444444444444444444\r\n44444444xx44xx44xx44\r\n44444444xx44xx44xx44\r\n44444444444444444444\r\n44444444444444444444\r\n44444444444444444444\r\nx444444x444444xx4444\r\nx444444x444444xx333x\r\nx444444x444444xx222x\r\nx444444x444444xx11xx\r\nx444444x444444xxxxxx', 'PKHa10rooftop_minichairHIPAPAHd116rooftop_flatcurbPDIPAPAHe117rooftop_flatcurb2QDIPAPAHc20rooftop_rodtableHJPAHHa21rooftop_minichairIJPARAHa30rooftop_minichairHKPAHHd416rooftop_flatcurbPDPAPAHHe417rooftop_flatcurb2QDPAPAHHa62rooftop_minichairJRAPAPAHa71rooftop_minichairISAPAJHc72rooftop_rodtableJSAPAHHa73rooftop_minichairKSAPARAHa82rooftop_minichairJPBPAHHa90rooftop_minichairHQBPAPAHb100rooftop_emptytableHRBPAHHa110rooftop_minichairHSBPAHHd131rooftop_flatcurbIQCPAJHd136rooftop_flatcurbRAQCPARAHd138rooftop_flatcurbPBQCPAJHd1313rooftop_flatcurbQCQCPARAHf141rooftop_flatcurb3IRCPAJHf146rooftop_flatcurb3RARCPARAHf148rooftop_flatcurb3PBRCPAJHf1413rooftop_flatcurb3QCRCPARAHf151rooftop_flatcurb3ISCPAJHf156rooftop_flatcurb3RASCPARAHf158rooftop_flatcurb3PBSCPAJHf1513rooftop_flatcurb3QCSCPARAHf161rooftop_flatcurb3IPDPAJHf166rooftop_flatcurb3RAPDPARAHf168rooftop_flatcurb3PBPDPAJHf1613rooftop_flatcurb3QCPDPARAHg171rooftop_flatcurb4IQDPAHHf172rooftop_flatcurb3JQDPAHHf173rooftop_flatcurb3KQDPAHHf174rooftop_flatcurb3PAQDPAHHf175rooftop_flatcurb3QAQDPAHHh176rooftop_flatcurb5RAQDPAHHg178rooftop_flatcurb4PBQDPAHHf179rooftop_flatcurb3QBQDPAHHf1710rooftop_flatcurb3RBQDPAHHf1711rooftop_flatcurb3SBQDPAHHf1712rooftop_flatcurb3PCQDPAHHh1713rooftop_flatcurb5QCQDPAH', '0'),
	('pub_a', 15, 25, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxx2222222211111xxx\r\nxxxxxxxxx2222222211111xxx\r\nxxxxxxxxx2222222211111xxx\r\nxxxxxxxxx2222222211111xxx\r\nxxxxxxxxx2222222222111xxx\r\nxxxxxxxxx2222222222111xxx\r\nxxxxxxxxx2222222222000xxx\r\nxxxxxxxxx2222222222000xxx\r\nxxxxxxxxx2222222222000xxx\r\nxxxxxxxxx2222222222000xxx\r\nx333333332222222222000xxx\r\nx333333332222222222000xxx\r\nx333333332222222222000xxx\r\nx333333332222222222000xxx\r\nx333333332222222222000xxx\r\nx333332222222222222000xxx\r\nx333332222222222222000xxx\r\nx333332222222222222000xxx\r\nx333332222222222222000xxx\r\nx333333332222222222000xxx\r\nxxxxx31111112222222000xxx\r\nxxxxx31111111000000000xxx\r\nxxxxx31111111000000000xxx\r\nxxxxx31111111000000000xxx\r\nxxxxx31111111000000000xxx\r\nxxxxxxxxxxxxxxx00xxxxxxxx\r\nxxxxxxxxxxxxxxx00xxxxxxxx\r\nxxxxxxxxxxxxxxx00xxxxxxxx\r\nxxxxxxxxxxxxxxx00xxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxx', 'SWHS119pub_sofa2SDIIPAHs120pub_sofaPEIIPAHs121pub_sofaQEIIPAHq211bardesk1SBJJHHc212pub_chairPCJJRAHQ311bardesk2SBKJHHq411bardesk1SBPAJHHc412pub_chairPCPAJRAHQ511bardesk2SBQAJHHf518pub_fenceRDQAJIHq611bardesk1SBRAJHHc612pub_chairPCRAJRAHf618pub_fenceRDRAJHHQ711bardesk2SBSAJHHf718pub_fenceRDSAJHHq811bardesk1SBPBJHHc812pub_chairPCPBJRAHf818pub_fenceRDPBJHHw910bardesk4RBQBJHHW911bardesk3SBQBJHHf918pub_fenceRDQBJHHf1018pub_fenceRDRBJHHC112pub_chair2JSBKPAHC113pub_chair2KSBKPAHC115pub_chair2QASBKPAHC116pub_chair2RASBKPAHf118pub_fencePBSBKIHf1118pub_fenceRDSBJHHf128pub_fencePBPCKHHf1218pub_fenceRDPCJHHf138pub_fencePBQCKHHC139pub_chair2QBQCJJHk1314pub_chair3RCQCJJHT1315pub_table2SCQCJIHk1316pub_chair3PDQCJRAHf1318pub_fenceRDQCJHHf148pub_fencePBRCKJHC149pub_chair2QBRCJJHk1414pub_chair3RCRCJJHT1415pub_table2SCRCJJHk1416pub_chair3PDRCJRAHf1418pub_fenceRDRCJHHt151pub_tableISCKHHf155pub_fenceQASCKIHf1518pub_fenceRDSCJHHS161pub_sofa2IPDKJHf165pub_fenceQAPDKHHf1618pub_fenceRDPDJHHs171pub_sofaIQDKJHf175pub_fenceQAQDKHHk1713pub_chair3QCQDJPAHk1714pub_chair3RCQDJPAHk1715pub_chair3SCQDJPAHk1716pub_chair3PDQDJPAHf1718pub_fenceRDQDJHHs181pub_sofaIRDKJHf185pub_fenceQARDKHHT1813pub_table2QCRDJQAHT1814pub_table2RCRDJRAHT1815pub_table2SCRDJRAHT1816pub_table2PDRDJPAHf1818pub_fenceRDRDJHHs192pub_sofaJSDKHHS193pub_sofa2KSDKHHf195pub_fenceQASDKHHk1913pub_chair3QCSDJHHk1914pub_chair3RCSDJHHk1915pub_chair3SCSDJHHk1916pub_chair3PDSDJHHf1918pub_fenceRDSDJHHf201pub_fenceIPEKQAHf202pub_fenceJPEKRAHf203pub_fenceKPEKRAHf204pub_fencePAPEKRAHf205pub_fenceQAPEKKHf2018pub_fenceRDPEJHHS217pub_sofa2SAQEIPAHs218pub_sofaPBQEIPAHf2112pub_fencePCQEJQAHf2113pub_fenceQCQEJRAHf2114pub_fenceRCQEJRAHf2115pub_fenceSCQEJRAHf2116pub_fencePDQEJRAHf2117pub_fenceQDQEJRAHf2118pub_fenceRDQEJKHS226pub_sofa2RAREIJHt2215pub_tableSCREHHHC2216pub_chair2PDREHPAHC2217pub_chair2QDREHPAHs236pub_sofaRASEIJHT238pub_table2PBSEIIHs246pub_sofaRAPFIJHT248pub_table2PBPFIHHs256pub_sofaRAQFIJHT258pub_table2PBQFIJ', '0'),
	('newbie_lobby', 2, 11, 2, 'xxxxxxxxxxxxxxxx000000\r\nxxxxx0xxxxxxxxxx000000\r\nxxxxx00000000xxx000000\r\nxxxxx000000000xx000000\r\n0000000000000000000000\r\n0000000000000000000000\r\n0000000000000000000000\r\n0000000000000000000000\r\n0000000000000000000000\r\nxxxxx000000000000000xx\r\nxxxxx000000000000000xx\r\nx0000000000000000000xx\r\nx0000000000000000xxxxx\r\nxxxxxx00000000000xxxxx\r\nxxxxxxx0000000000xxxxx\r\nxxxxxxxx000000000xxxxx\r\nxxxxxxxx000000000xxxxx\r\nxxxxxxxx000000000xxxxx\r\nxxxxxxxx000000000xxxxx\r\nxxxxxxxx000000000xxxxx\r\nxxxxxxxx000000000xxxxx\r\nxxxxxx00000000000xxxxx\r\nxxxxxx00000000000xxxxx\r\nxxxxxx00000000000xxxxx\r\nxxxxxx00000000000xxxxx\r\nxxxxxx00000000000xxxxx\r\nxxxxx000000000000xxxxx\r\nxxxxx000000000000xxxxx', 'SOHa016crl_lampPDHHHHy017crl_sofa2cQDHHPAHw018crl_sofa2bRDHHPAHv019crl_sofa2aSDHHPAHa020crl_lampPEHHHHb116crl_chairPDIHJHa27crl_lampSAJHHHa211crl_lampSBJHHHb216crl_chairPDJHJHc35crl_pillarQAKHHHb37crl_chairSAKHJHu39crl_table1bQBKHHHs311crl_sofa1cSBKHRAHb316crl_chairPDKHJHA319crl_table2bSDKHHHz320crl_table2aPEKHHHa40crl_lampHPAHHHy41crl_sofa2cIPAHPAHw42crl_sofa2bJPAHPAHv43crl_sofa2aKPAHPAHa44crl_lampPAPAHHHt49crl_table1aQBPAHHHr411crl_sofa1bSBPAHRAHh415crl_wall2aSCPAHHHa416crl_lampPDPAHHHb50crl_chairHQAHJHb57crl_chairSAQAHJHq511crl_sofa1aSBQAHRAHA62crl_table2bJRAHHHz63crl_table2aKRAHHHa611crl_lampSBRAHHHb70crl_chairHSAHJHa80crl_lampHPBHHHD81crl_sofa3cIPBHHHC82crl_sofa3bJPBHHHB83crl_sofa3aKPBHHHa84crl_lampPAPBHHHo819crl_barchair2SDPBHHHp820crl_tablebarPEPBHHHo821crl_barchair2QEPBHHHE95crl_pillar2QAQBHHHc99crl_pillarQBQBHHHP158crl_desk1aPBSCHHHO159crl_deskiQBSCHHHN1510crl_deskhRBSCHHHM1610crl_deskgRBPDHHHL1710crl_deskfRBQDHHHK1810crl_deskeRBRDHHHK1910crl_deskeRBSDHHHK2010crl_deskeRBPEHHHK2110crl_deskeRBQEHHHK2210crl_deskeRBREHHHK2310crl_deskeRBSEHHHG247crl_wallbSAPFHHHK2410crl_deskeRBPFHHHF257crl_wallaSAQFHHHH258crl_desk1bPBQFHHHI259crl_desk1cQBQFHHHJ2510crl_desk1dRBQFHHHd2712crl_lamp2PCSFHHHf2713crl_cabinet2QCSFHHHe2714crl_cabinet1RCSFHHHd2715crl_lamp2SCSFHH', '0'),
	('pizza', 5, 27, 2, 'xxxxxxxxx0000000\r\nx11111x1xx000000\r\n11xxxxx111x00000\r\n11x1111111xx0000\r\n11x1111111100000\r\nxxx1111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n1111111111100000\r\n11111111111xxxxx\r\n1111111111xxxxxx\r\n1111111111111111\r\n1111111111111111\r\n1111111111111111\r\n1111111111111111\r\n1111111111111111\r\n1111111111111111\r\n11xx11xx11111111\r\nxxxx11xxxxxxxxxx\r\nxxxx11xxxxxxxxxx', 'QGHa015pizza_plant1SCHHJHe314pizza_sofa1RCKHPAHE315pizza_sofa2SCKHPAHc515pizza_tableSCQAHJHb60pizza_plant2HRAIJHf614pizza_sofa3RCRAHHHF615pizza_sofa4SCRAHHHd81pizza_chairIPBIPAHd82pizza_chairJPBIPAHc102pizza_tableJRBIJHe1014pizza_sofa1RCRBHPAHE1015pizza_sofa2SCRBHPAHd111pizza_chairISBIHHd112pizza_chairJSBIHHc1215pizza_tableSCPCHJHf1314pizza_sofa3RCQCHHHF1315pizza_sofa4SCQCHHHd161pizza_chairIPDIPAHd162pizza_chairJPDIPAHc182pizza_tableJRDIJHd191pizza_chairISDIHHd192pizza_chairJSDIHHd2111pizza_chairSBQEIJHd2114pizza_chairRCQEIRAHd2211pizza_chairSBREIJHc2213pizza_tableQCREIHHd2214pizza_chairRCREIRAHa250pizza_plant1HQFIJHa2515pizza_plant1SCQFIJ', '0'),
	('old_skool', 2, 1, 2, 'xx0xxxxxxxxxxxxxx\r\n0000000xxx00000xx\r\n0000000x0000000xx\r\n0000000xxxxxxxxxx\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n00000000000000000\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x\r\n0000000000000000x', 'SLHk49mobiles_chair3QBPAHHHk410mobiles_chair3RBPAHHHk411mobiles_chair3SBPAHHHk412mobiles_chair3PCPAHHHe101mobiles_chair1IRBHPAHe1010mobiles_chair1RBRBHPAHe110mobiles_chair1HSBHJHb111mobiles_table2ISBHHHc112mobiles_table3JSBHHHe113mobiles_chair1KSBHRAHb1110mobiles_table2RBSBHHHc1111mobiles_table3SBSBHHHa121mobiles_table1IPCHHHd122mobiles_table4JPCHHHe129mobiles_chair1QBPCHJHa1210mobiles_table1RBPCHHHd1211mobiles_table4SBPCHHHe1212mobiles_chair1PCPCHRAHe131mobiles_chair1IQCHHHe1311mobiles_chair1SBQCHHHe150mobiles_chair1HSCHPAHe170mobiles_chair1HQDHJHb171mobiles_table2IQDHHHc172mobiles_table3JQDHHHe173mobiles_chair1KQDHRAHa181mobiles_table1IRDHHHd182mobiles_table4JRDHHHe192mobiles_chair1JSDHHHe211mobiles_chair1IQEHPAHb216mobiles_table2RAQEHHHc217mobiles_table3SAQEHHHe2112mobiles_chair1PCQEHPAHe220mobiles_chair1HREHJHb221mobiles_table2IREHHHc222mobiles_table3JREHHHe223mobiles_chair1KREHRAHe225mobiles_chair1QAREHJHa226mobiles_table1RAREHHHd227mobiles_table4SAREHHHe228mobiles_chair1PBREHRAHe2211mobiles_chair1SBREHJHb2212mobiles_table2PCREHHHc2213mobiles_table3QCREHHHe2214mobiles_chair1RCREHRAHa231mobiles_table1ISEHHHd232mobiles_table4JSEHHHa2312mobiles_table1PCSEHHHd2313mobiles_table4QCSEHHHe241mobiles_chair1IPFHHHe247mobiles_chair1SAPFHPAHe2413mobiles_chair1QCPFHH', '0'),
	('model_h', 4, 4, 2, 'xxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxx111111x\r\nxxxxx111111x\r\nxxxx1111111x\r\nxxxxx111111x\r\nxxxxx111111x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxx00000000x\r\nxxx00000000x\r\nxxx00000000x\r\nxxx00000000x\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx', '', '1'),
	('model_p', 0, 23, 2, 'xxxxxxxxxxxxxxxxxxx\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx22222222xxxx\r\nxxxxxxx11111111xxxx\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx2222xx11111111xxxx\r\nx2222xx00000000xxxx\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\n22222xx000000000000\r\nx2222xx000000000000\r\nxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_r', 10, 4, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxx33333333333333\r\nxxxxxxxxxxx33333333333333\r\nxxxxxxxxxxx33333333333333\r\nxxxxxxxxxx333333333333333\r\nxxxxxxxxxxx33333333333333\r\nxxxxxxxxxxx33333333333333\r\nxxxxxxx333333333333333333\r\nxxxxxxx333333333333333333\r\nxxxxxxx333333333333333333\r\nxxxxxxx333333333333333333\r\nxxxxxxx333333333333333333\r\nxxxxxxx333333333333333333\r\nx4444433333xxxxxxxxxxxxxx\r\nx4444433333xxxxxxxxxxxxxx\r\nx44444333333222xx000000xx\r\nx44444333333222xx000000xx\r\nxxx44xxxxxxxx22xx000000xx\r\nxxx33xxxxxxxx11xx000000xx\r\nxxx33322222211110000000xx\r\nxxx33322222211110000000xx\r\nxxxxxxxxxxxxxxxxx000000xx\r\nxxxxxxxxxxxxxxxxx000000xx\r\nxxxxxxxxxxxxxxxxx000000xx\r\nxxxxxxxxxxxxxxxxx000000xx\r\nxxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_q', 10, 4, 2, 'xxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxx22222222\r\nxxxxxxxxxxx22222222\r\nxxxxxxxxxxx22222222\r\nxxxxxxxxxx222222222\r\nxxxxxxxxxxx22222222\r\nxxxxxxxxxxx22222222\r\nx222222222222222222\r\nx222222222222222222\r\nx222222222222222222\r\nx222222222222222222\r\nx222222222222222222\r\nx222222222222222222\r\nx2222xxxxxxxxxxxxxx\r\nx2222xxxxxxxxxxxxxx\r\nx2222211111xx000000\r\nx222221111110000000\r\nx222221111110000000\r\nx2222211111xx000000\r\nxx22xxx1111xxxxxxxx\r\nxx11xxx1111xxxxxxxx\r\nx1111xx1111xx000000\r\nx1111xx111110000000\r\nx1111xx111110000000\r\nx1111xx1111xx000000\r\nxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_o', 0, 18, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxx11111111xxxx\r\nxxxxxxxxxxxxx11111111xxxx\r\nxxxxxxxxxxxxx11111111xxxx\r\nxxxxxxxxxxxxx11111111xxxx\r\nxxxxxxxxxxxxx11111111xxxx\r\nxxxxxxxxxxxxx11111111xxxx\r\nxxxxxxxxxxxxx11111111xxxx\r\nxxxxxxxxxxxxx00000000xxxx\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nx111111100000000000000000\r\nx111111100000000000000000\r\nx111111100000000000000000\r\n1111111100000000000000000\r\nx111111100000000000000000\r\nx111111100000000000000000\r\nx111111100000000000000000\r\nx111111100000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxxxxxxxxxxxxxxxxxx', '', '1'),
	('model_n', 0, 16, 2, 'xxxxxxxxxxxxxxxxxxxxx\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx000000xxxxxxxx000000\r\nx000000x000000x000000\r\nx000000x000000x000000\r\nx000000x000000x000000\r\nx000000x000000x000000\r\nx000000x000000x000000\r\nx000000x000000x000000\r\nx000000xxxxxxxx000000\r\nx00000000000000000000\r\n000000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_g', 1, 7, 2, 'xxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxx00000\r\nxxxxxxx00000\r\nxxxxxxx00000\r\nxx1111000000\r\nxx1111000000\r\nx11111000000\r\nxx1111000000\r\nxx1111000000\r\nxxxxxxx00000\r\nxxxxxxx00000\r\nxxxxxxx00000\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx', '', '1'),
	('model_l', 0, 16, 2, 'xxxxxxxxxxxxxxxxxxxxx\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\n000000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nx00000000xxxx00000000\r\nxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_m', 0, 15, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nx0000000000000000000000000000\r\nx0000000000000000000000000000\r\nx0000000000000000000000000000\r\nx0000000000000000000000000000\r\n00000000000000000000000000000\r\nx0000000000000000000000000000\r\nx0000000000000000000000000000\r\nx0000000000000000000000000000\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxx00000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_k', 0, 13, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx00000000\r\nxxxxxxxxxxxxxxxxx00000000\r\nxxxxxxxxxxxxxxxxx00000000\r\nxxxxxxxxxxxxxxxxx00000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nx000000000000000000000000\r\nx000000000000000000000000\r\nx000000000000000000000000\r\nx000000000000000000000000\r\n0000000000000000000000000\r\nx000000000000000000000000\r\nx000000000000000000000000\r\nx000000000000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxx0000000000000000\r\nxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_j', 0, 10, 2, 'xxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxx0000000000\r\nxxxxxxxxxxx0000000000\r\nxxxxxxxxxxx0000000000\r\nxxxxxxxxxxx0000000000\r\nxxxxxxxxxxx0000000000\r\nxxxxxxxxxxx0000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\n000000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx00000000000000000000\r\nx0000000000xxxxxxxxxx\r\nx0000000000xxxxxxxxxx\r\nx0000000000xxxxxxxxxx\r\nx0000000000xxxxxxxxxx\r\nx0000000000xxxxxxxxxx\r\nx0000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_i', 0, 10, 2, 'xxxxxxxxxxxxxxxxx\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\n00000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nx0000000000000000\r\nxxxxxxxxxxxxxxxxx', '', '0'),
	('model_e', 1, 5, 2, 'xxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxx0000000000\r\nxx0000000000\r\nx00000000000\r\nxx0000000000\r\nxx0000000000\r\nxx0000000000\r\nxx0000000000\r\nxx0000000000\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx', '', '0'),
	('model_f', 2, 5, 2, 'xxxxxxxxxxxx\r\nxxxxxxx0000x\r\nxxxxxxx0000x\r\nxxx00000000x\r\nxxx00000000x\r\nxx000000000x\r\nxxx00000000x\r\nx0000000000x\r\nx0000000000x\r\nx0000000000x\r\nx0000000000x\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx', '', '0'),
	('model_a', 3, 5, 2, 'xxxxxxxxxxxx\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxx000000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxx00000000\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx', '', '0'),
	('model_b', 0, 5, 2, 'xxxxxxxxxxxx\r\nxxxxx0000000\r\nxxxxx0000000\r\nxxxxx0000000\r\nxxxxx0000000\r\n000000000000\r\nx00000000000\r\nx00000000000\r\nx00000000000\r\nx00000000000\r\nx00000000000\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx', '', '0'),
	('model_c', 4, 7, 2, 'xxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxx0000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx\r\nxxxxxxxxxxxx', '', '0'),
	('model_d', 4, 7, 2, 'xxxxxxxxxxxx\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxx0000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxx000000x\r\nxxxxxxxxxxxx', '', '0'),
	('model_room_15', 3, 3, 2, 'xxxxxxxxxxxxxxxxxxxxxxxx\r\nx11111xXXXXXXXXXXXXXXXXx\r\nx11111xxxxxxxxxxxxxxxxxx\r\nx11111xYYYYYYYYYYYYYYYYx\r\nx11111xYYYYYYYYYYYYYYYYx\r\nx11111xxxxxxxxxxxxxxxxxx\r\nx11111xUUUUUUUUUUUUUUUUx\r\nx11111xUUUUUUUUUUUUUUUUx\r\nx11111xxxxxxxxxxxxxxxxxx\r\nx11111xVVVVVVVVVVVVVVVVx\r\nx11111xxxxxxxxxxxxxxxxxx\r\nx11111xWWWWWWWWWWWWWWWWx\r\nx11111xxxxxxxxxxxxxxxxxx\r\nx1111100000000000000008x\r\nx1111100000000000000009x\r\nx111110000000000000000ax\r\nx111110000000000000000bx\r\n1111110000000000000000cx\r\nx111110000000000000000dx\r\nx111110000000000000000ex\r\nx111110000000000000000fx\r\nx111110000000000000000gx\r\nx111110000000000000000hx\r\nx111110000000000000000ix\r\nx111110000000000000000jx\r\nx111110000000000000000kx\r\nx111110000000000000000lx\r\nx111110000000000000000mx\r\nx111110000000000000000nx\r\nx111110xxxxxxxxxxxxxxxxx\r\nx111110xzzzzzzzzzzzzzzzx\r\nx111110xzzzzzzzzzzzzzzzx\r\nx111110xzzzzzzzzzzzzzzzx\r\nx111110xzzzzzzzzzzzzzzzx\r\nx111110xzzzzzzzzzzzzzzzx\r\nxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_1', 0, 10, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxeeeeeeeeeeeeeeeedcba9888888888888\r\nxeeeeeeeeeeeeeeeexxxxxx88888888888\r\nxeeeeeeeeeeeeeeeexxxxxx88888888888\r\nxeeeeeeeeeeeeeeeexxxxxx88888888888\r\nxeeeeeeeeeeeeeeeexxxxxx88888888888\r\nxdxxxxxxxxxxxxxxxxxxxxx88888888888\r\nxcxxxxxxxxxxxxxxxxxxxxx88888888888\r\nxbxxxxxxxxxxxxxxxxxxxxx88888888888\r\nxaxxxxxxxxxxxxxxxxxxxxx88888888888\r\naaaaaaaaaaaaaaaaaxxxxxxxxxxxxxxxxx\r\nxaaaaaaaaaaaaaaaaxxxxxxxxxxxxxxxxx\r\nxaaaaaaaaaaaaaaaaxxxxxxxxxxxxxxxxx\r\nxaaaaaaaaaaaaaaaaxxxx6666666666666\r\nxaaaaaaaaaaaaaaaaxxxx6666666666666\r\nxaaaaaaaaaaaaaaaaxxxx6666666666666\r\nxaaaaaaaaaaaaaaaaxxxx6666666666666\r\nxaaaaaaaaaaaaaaaaxxxx6666666666666\r\nxaaaaaaaaaaaaaaaa98766666666666666\r\nxaaaaaaaaaaaaaaaaxxxxxxxxxxxx5xxxx\r\nxaaaaaaaaaaaaaaaaxxxxxxxxxxxx4xxxx\r\nxaaaaaaaaaaaaaaaaxxxxxxxxxxxx3xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxaaaaaaaaaaaaaaaaxxx3333333333xxxx\r\nxxxxxxxxxxxxxxxx9xxx3333333333xxxx\r\nxxxxxxxxxxxxxxxx8xxx3333333333xxxx\r\nxxxxxxxxxxxxxxxx7xxx3333333333xxxx\r\nxxx777777777xxxx6xxx3333333333xxxx\r\nxxx777777777xxxx5xxxxxxxxxxxxxxxxx\r\nxxx777777777xxxx4xxxxxxxxxxxxxxxxx\r\nxxx777777777xxxx3xxxxxxxxxxxxxxxxx\r\nxxx777777777xxxx2xxxxxxxxxxxxxxxxx\r\nxfffffffffxxxxxx1xxxxxxxxxxxxxxxxx\r\nxfffffffffxxxxxx111111111111111111\r\nxfffffffffxxxxxx111111111111111111\r\nxfffffffffxxxxxx111111111111111111\r\nxfffffffffxxxxxx111111111111111111\r\nxfffffffffxxxxxx111111111111111111\r\nxfffffffffxxxxxx111111111111111111\r\nxxxxxxxxxxxxxxxx111111111111111111\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_2', 0, 15, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxjjjjjjjjjjjjjx0000xxxxxxxxxx\r\nxxxxxxxxxxxxiix0000xxxxxxxxxx\r\nxxxxxxxxxxxxhhx0000xxxxxxxxxx\r\nxxxxxxxxxxxxggx0000xxxxxxxxxx\r\nxxxxxxxxxxxxffx0000xxxxxxxxxx\r\nxxxxxxxxxxxxeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\neeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxeeeeeeeeeeeeex0000xxxxxxxxxx\r\nxxxxxxxxxxxxddx00000000000000\r\nxxxxxxxxxxxxccx00000000000000\r\nxxxxxxxxxxxxbbx00000000000000\r\nxxxxxxxxxxxxaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxaaaaaaaaaaaaax00000000000000\r\nxxxxxxxxxxxx99x0000xxxxxxxxxx\r\nxxxxxxxxxxxx88x0000xxxxxxxxxx\r\nxxxxxxxxxxxx77x0000xxxxxxxxxx\r\nxxxxxxxxxxxx66x0000xxxxxxxxxx\r\nxxxxxxxxxxxx55x0000xxxxxxxxxx\r\nxxxxxxxxxxxx44x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nx4444444444444x0000xxxxxxxxxx\r\nxxxxxxxxxxxx33x0000xxxxxxxxxx\r\nxxxxxxxxxxxx22x0000xxxxxxxxxx\r\nxxxxxxxxxxxx11x0000xxxxxxxxxx\r\nxxxxxxxxxxxx00x0000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_5', 0, 10, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\n000000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nx00000000000000000000000000000000x\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_6', 0, 15, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x000000000000000000000000xxxx\r\nx222222222x00000000xxxxxxxx00000000xxxx\r\nx11xxxxxxxx00000000xxxxxxxx00000000xxxx\r\nx00x000000000000000xxxxxxxx00000000xxxx\r\nx00x000000000000000xxxxxxxx00000000xxxx\r\nx000000000000000000xxxxxxxx00000000xxxx\r\nx000000000000000000xxxxxxxx00000000xxxx\r\n0000000000000000000xxxxxxxx00000000xxxx\r\nx000000000000000000xxxxxxxx00000000xxxx\r\nx00x000000000000000xxxxxxxx00000000xxxx\r\nx00x000000000000000xxxxxxxx00000000xxxx\r\nx00xxxxxxxxxxxxxxxxxxxxxxxx00000000xxxx\r\nx00xxxxxxxxxxxxxxxxxxxxxxxx00000000xxxx\r\nx00x0000000000000000000000000000000xxxx\r\nx00x0000000000000000000000000000000xxxx\r\nx0000000000000000000000000000000000xxxx\r\nx0000000000000000000000000000000000xxxx\r\nx0000000000000000000000000000000000xxxx\r\nx0000000000000000000000000000000000xxxx\r\nx00x0000000000000000000000000000000xxxx\r\nx00x0000000000000000000000000000000xxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_7', 0, 17, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxx\r\nx222222xx00000000xxxxxxxx\r\nx222222xx00000000xxxxxxxx\r\nx2222221000000000xxxxxxxx\r\nx2222221000000000xxxxxxxx\r\nx222222xx00000000xxxxxxxx\r\nx222222xx00000000xxxxxxxx\r\nx222222xxxxxxxxxxxxxxxxxx\r\nx222222xkkkkkkxxiiiiiiiix\r\nx222222xkkkkkkxxiiiiiiiix\r\nx222222xkkkkkkjiiiiiiiiix\r\nx222222xkkkkkkjiiiiiiiiix\r\nx222222xkkkkkkxxiiiiiiiix\r\nxxx11xxxkkkkkkxxiiiiiiiix\r\nxxx00xxxkkkkkkxxxxxxxxxxx\r\nx000000xkkkkkkxxxxxxxxxxx\r\nx000000xkkkkkkxxxxxxxxxxx\r\n0000000xkkkkkkxxxxxxxxxxx\r\nx000000xkkkkkkxxxxxxxxxxx\r\nx000000xkkkkkkxxxxxxxxxxx\r\nx000000xxxjjxxxxxxxxxxxxx\r\nx000000xxxiixxxxxxxxxxxxx\r\nx000000xiiiiiixxxxxxxxxxx\r\nxxxxxxxxiiiiiixxxxxxxxxxx\r\nxxxxxxxxiiiiiixxxxxxxxxxx\r\nxxxxxxxxiiiiiixxxxxxxxxxx\r\nxxxxxxxxiiiiiixxxxxxxxxxx\r\nxxxxxxxxiiiiiixxxxxxxxxxx\r\nxxxxxxxxiiiiiixxxxxxxxxxx\r\nxxxxxxxxiiiiiixxxxxxxxxxx', '', '0'),
	('model_8', 0, 15, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nx5555555555555555555555555xxxxxxxxx\r\nx5555555555555555555555555xxxxxxxxx\r\nx5555555555555555555555555xxxxxxxxx\r\nx5555555555555555555555555xxxxxxxxx\r\nx5555555555555555555555555xxxxxxxxx\r\nx5555555555555555555555555xxxxxxxxx\r\nx5555555555xxxxxxxxxxxxxxxxxxxxxxxx\r\nx55555555554321000000000000000000xx\r\nx55555555554321000000000000000000xx\r\nx5555555555xxxxx00000000000000000xx\r\nx555555x44x0000000000000000000000xx\r\nx555555x33x0000000000000000000000xx\r\nx555555x22x0000000000000000000000xx\r\nx555555x11x0000000000000000000000xx\r\n5555555x00x0000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nx555555x0000000000000000000000000xx\r\nxxxxxxxx0000000000000000000000000xx\r\nxxxxxxxx0000000000000000000000000xx\r\nxxxxxxxx0000000000000000000000000xx\r\nxxxxxxxx0000000000000000000000000xx\r\nxxxxxxxx0000000000000000000000000xx\r\nxxxxxxxx0000000000000000000000000xx\r\nxxxxxxxx0000000000000000000000000xx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('model_9', 0, 17, 2, 'xxxxxxxxxxxxxxxxxxxxxxxx\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\n00000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nx0000000000000000000000x\r\nxxxxxxxxxxxxxxxxxxxxxxxx', '', '0'),
	('infobus_bus', 16, 11, 2, 'xxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxx0xxxxx\r\nxxxxxxxxxxxxxxxxxxx\r\nxx00000000000000000\r\nxx00000000000000000\r\nxx00000000000000000\r\nxx00000000000000000\r\nxx00000000000000000\r\nxx00000000000000000\r\nxx00000000000000000\r\nxx00000000000000000\r\nxxxxxxxxxxxxxxxx0xx', ' ', '0');
/*!40000 ALTER TABLE `room_models` ENABLE KEYS */;

-- Dumping structure for table test.room_models_custom
DROP TABLE IF EXISTS `room_models_custom`;
CREATE TABLE IF NOT EXISTS `room_models_custom` (
    `id` int(11) NOT NULL,
    `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `door_x` int(11) NOT NULL,
    `door_y` int(11) NOT NULL,
    `door_dir` int(11) NOT NULL,
    `heightmap` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
    UNIQUE KEY `id` (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_models_custom: 0 rows
/*!40000 ALTER TABLE `room_models_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_models_custom` ENABLE KEYS */;

-- Dumping structure for table test.room_mutes
DROP TABLE IF EXISTS `room_mutes`;
CREATE TABLE IF NOT EXISTS `room_mutes` (
    `room_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `ends` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.room_mutes: 0 rows
/*!40000 ALTER TABLE `room_mutes` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_mutes` ENABLE KEYS */;

-- Dumping structure for table test.room_promotions
DROP TABLE IF EXISTS `room_promotions`;
CREATE TABLE IF NOT EXISTS `room_promotions` (
    `room_id` int(11) NOT NULL,
    `title` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
    `end_timestamp` int(11) NOT NULL DEFAULT 0,
    `start_timestamp` int(11) NOT NULL DEFAULT -1,
    `category` int(11) NOT NULL DEFAULT 0,
    UNIQUE KEY `room_id` (`room_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_promotions: 0 rows
/*!40000 ALTER TABLE `room_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_promotions` ENABLE KEYS */;

-- Dumping structure for table test.room_rights
DROP TABLE IF EXISTS `room_rights`;
CREATE TABLE IF NOT EXISTS `room_rights` (
    `room_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.room_rights: 0 rows
/*!40000 ALTER TABLE `room_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_rights` ENABLE KEYS */;

-- Dumping structure for table test.room_trade_log
DROP TABLE IF EXISTS `room_trade_log`;
CREATE TABLE IF NOT EXISTS `room_trade_log` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_one_id` int(11) NOT NULL,
    `user_two_id` int(11) NOT NULL,
    `user_one_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_two_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
    `timestamp` int(11) NOT NULL,
    `user_one_item_count` int(11) NOT NULL,
    `user_two_item_count` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `user_one_id` (`user_one_id`) USING BTREE,
    KEY `user_two_id` (`user_two_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_trade_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `room_trade_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_trade_log` ENABLE KEYS */;

-- Dumping structure for table test.room_trade_log_items
DROP TABLE IF EXISTS `room_trade_log_items`;
CREATE TABLE IF NOT EXISTS `room_trade_log_items` (
    `id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    UNIQUE KEY `id` (`id`,`item_id`,`user_id`) USING BTREE,
    KEY `id_2` (`id`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE,
    KEY `id_3` (`id`,`user_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_trade_log_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `room_trade_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_trade_log_items` ENABLE KEYS */;

-- Dumping structure for table test.room_trax
DROP TABLE IF EXISTS `room_trax`;
CREATE TABLE IF NOT EXISTS `room_trax` (
    `room_id` int(11) NOT NULL,
    `trax_item_id` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Dumping data for table test.room_trax: ~0 rows (approximately)
/*!40000 ALTER TABLE `room_trax` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_trax` ENABLE KEYS */;

-- Dumping structure for table test.room_trax_playlist
DROP TABLE IF EXISTS `room_trax_playlist`;
CREATE TABLE IF NOT EXISTS `room_trax_playlist` (
    `room_id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL,
    KEY `room_id` (`room_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_trax_playlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `room_trax_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_trax_playlist` ENABLE KEYS */;

-- Dumping structure for table test.room_votes
DROP TABLE IF EXISTS `room_votes`;
CREATE TABLE IF NOT EXISTS `room_votes` (
    `user_id` int(11) NOT NULL,
    `room_id` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.room_votes: 0 rows
/*!40000 ALTER TABLE `room_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_votes` ENABLE KEYS */;

-- Dumping structure for table test.room_wordfilter
DROP TABLE IF EXISTS `room_wordfilter`;
CREATE TABLE IF NOT EXISTS `room_wordfilter` (
    `room_id` int(11) NOT NULL,
    `word` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
    UNIQUE KEY `unique_index` (`room_id`,`word`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.room_wordfilter: 0 rows
/*!40000 ALTER TABLE `room_wordfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_wordfilter` ENABLE KEYS */;

-- Dumping structure for table test.sanctions
DROP TABLE IF EXISTS `sanctions`;
CREATE TABLE IF NOT EXISTS `sanctions` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `habbo_id` int(11) NOT NULL DEFAULT 0,
    `sanction_level` int(11) NOT NULL DEFAULT 0,
    `probation_timestamp` int(32) NOT NULL DEFAULT 0,
    `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `trade_locked_until` int(32) NOT NULL DEFAULT 0,
    `is_muted` tinyint(1) NOT NULL DEFAULT 0,
    `mute_duration` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.sanctions: ~0 rows (approximately)
/*!40000 ALTER TABLE `sanctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanctions` ENABLE KEYS */;

-- Dumping structure for table test.sanction_levels
DROP TABLE IF EXISTS `sanction_levels`;
CREATE TABLE IF NOT EXISTS `sanction_levels` (
    `level` int(1) NOT NULL,
    `type` enum('ALERT','BAN','MUTE') COLLATE utf8mb4_unicode_ci NOT NULL,
    `hour_length` int(12) NOT NULL,
    `probation_days` int(12) NOT NULL,
    PRIMARY KEY (`level`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.sanction_levels: ~7 rows (approximately)
/*!40000 ALTER TABLE `sanction_levels` DISABLE KEYS */;
INSERT INTO `sanction_levels` (`level`, `type`, `hour_length`, `probation_days`) VALUES
	(1, 'ALERT', 0, 30),
	(2, 'MUTE', 1, 30),
	(3, 'BAN', 18, 30),
	(4, 'BAN', 168, 30),
	(5, 'BAN', 720, 60),
	(6, 'BAN', 720, 60),
	(7, 'BAN', 876581, 876581);
/*!40000 ALTER TABLE `sanction_levels` ENABLE KEYS */;

-- Dumping structure for table test.soundtracks
DROP TABLE IF EXISTS `soundtracks`;
CREATE TABLE IF NOT EXISTS `soundtracks` (
    `id` int(6) NOT NULL AUTO_INCREMENT,
    `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `track` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
    `length` int(4) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.soundtracks: ~27 rows (approximately)
/*!40000 ALTER TABLE `soundtracks` DISABLE KEYS */;
INSERT INTO `soundtracks` (`id`, `code`, `name`, `author`, `track`, `length`) VALUES
	(1, 'ballad_of_bonnie', 'The Ballad of Bonnie Blonde', 'Pixel! at the Disco', '1:371,8;374,4;378,4;0,4;378,4;0,4;377,4;378,4;0,6;371,4;0,4;370,3;377,2;0,7:2:353,24;358,4;363,4;353,10;367,4;353,4;367,4;353,8:3:0,4;291,2;365,2;0,2;365,2;377,2;365,2;377,2;365,2;377,2;0,2;359,4;352,4;357,1;0,1;365,2;0,2;292,4;0,3;357,1;292,4;0,3;357,1;292,4;296,4:4:0,2;368,22;354,4;368,26;361,8:', 124),
	(2, 'bossa_nova', 'Push the Call for Help', 'BanzaiBabes', '1:317,6;318,4;319,4;317,4;319,4;0,2:2:0,2;316,4;0,4;316,4;0,4;316,4;0,2:3:0,6;321,4;323,4;322,10:4:0,18;321,2;324,2;0,2:', 48),
	(3, 'doorman_frank', 'Monotone Hotel Sounds', 'Doorman Frank', '1:4,24:2:2,24:3:0,24:4:0,24:', 48),
	(4, 'pianissimo', 'Haven\'t Friend Request You Yet', 'Micheal Bauble', '1:280,4;281,4;282,4;283,4;284,4;285,4;286,4;287,4;288,4:2:0,36:3:0,36:4:0,36:', 72),
	(5, 'sounds_that_fit', 'Sounds That Fit Double Rainbows', 'Kallomies', '1:200,12;199,3;201,1;200,28:2:0,2;190,1;0,1;191,1;0,1;192,1;0,1;190,2;191,1;192,1;190,2;0,1;193,2;190,2;191,1;0,1;190,1;192,2;0,1;191,2;178,2;0,1;178,2;0,1;178,2;0,2;177,2;0,1;176,4:3:0,8;176,2;0,1;177,2;0,3;179,2;0,2;177,2;0,2;176,2;0,1;178,6;0,1;178,2;0,2;177,4;176,2:4:0,8;197,16;0,20:', 88),
	(6, 'gold_coin_digger', 'Gold Coin Digger', 'Kayne Quest', '1:104,10;102,8;104,4;102,8;104,4:2:0,2;181,8;182,8;181,4;182,8;130,2;106,2:3:0,2;105,2;106,2;186,3;187,1;185,1;184,1;185,1;184,1;185,1;184,1;185,1;187,1;186,3;187,1;185,1;184,1;185,1;184,1;185,1;184,1;185,1;184,1;72,1;100,2;0,1:4:0,4;103,6;133,1;101,1;133,1;101,1;133,1;101,1;133,1;101,1;103,4;133,1;101,1;133,1;101,1;133,1;101,1;133,1;101,1;105,2;101,1;0,1:', 68),
	(7, 'miami_miamor', 'Too Lost In Lido', 'BanzaiBabes', '1:317,4;408,7;0,1;410,16;413,4;406,4;410,8;412,4:2:0,2;321,2;443,22;91,2;317,8;443,8;412,2;0,2:3:0,3;320,2;0,7;414,4;445,4;412,2;323,2;412,4;96,2;412,2;414,4;445,7;448,1;317,4:4:0,3;324,2;0,6;448,1;0,6;96,2;322,4;96,2;99,2;322,4;412,2;0,2;322,2;96,2;322,2;0,1;324,2;0,3:', 96),
	(8, 'limber_take', 'Pixelrazzi', 'Lady BlaBla', '1:0,3;167,1;163,2;0,2;142,2;163,2;142,2;163,2;142,2;163,2;142,2;0,1;88,1;142,2;163,2;142,2;163,2;142,2;163,2;142,2;163,2:2:89,16;0,2;143,4;119,4;143,4;89,2;119,4;143,4:3:0,3;121,2;0,1;164,2;140,8;141,6;0,1;168,1;141,16:4:0,2;139,2;123,4;143,8;144,2;89,2;144,2;0,1;90,1;144,2;89,2;0,2;89,2;144,2;89,2;0,2;89,2:', 80),
	(9, 'klub_haus', 'Touch the Skyscraper', 'Kayne Quest', '1:274,4;275,4;276,8;274,4;276,4;274,4:2:0,4;278,4;279,4;273,12;277,3;0,1:3:0,4;429,2;0,4;430,2;429,2;340,2;342,4;429,2;261,2;342,4:4:0,2;340,2;0,3;429,2;0,1;259,2;271,4;254,12:', 56),
	(10, 'disco_extreme', 'About VIP Now', 'BanzaiBabes', '1:152,20;146,1;0,1;152,4;151,4;152,20;153,4:2:0,8;145,12;146,1;0,1;145,4;0,1;151,2;0,1;145,20;0,1;150,2;0,1:3:0,10;150,2;146,1;0,1;150,2;146,1;0,1;150,2;146,1;0,7;151,2;0,2;150,2;146,1;0,1;150,2;146,1;0,1;150,2;0,1;146,1;0,1;146,1;0,1;146,3;0,4:4:0,4;148,2;147,2;148,2;147,2;148,2;147,2;148,2;147,2;148,4;147,2;148,6;147,2;148,2;147,2;148,2;147,2;148,2;147,2;148,2;147,2;0,4:', 108),
	(11, 'good_trade', 'The Good Trade', 'Kayne Quest', '1:108,4;135,8;130,2;108,2;135,8;127,28:2:0,3;131,9;104,2;0,2;131,8;108,4;102,4;0,8;92,6;0,6:3:134,4;140,8;0,1;133,1;136,2;140,6;0,10;143,16;108,4:4:0,2;104,2;0,1;133,1;0,3;133,1;134,4;0,1;104,2;133,1;0,3;133,1;0,24;136,2;0,4:', 104),
	(12, 'haadolocknloll', 'I Write Bans not Tragedies', 'Pixel! at the Disco', '1:248,4;247,4;252,4;251,8;245,4;250,4;252,4:2:359,4;250,4;359,4;345,8;0,4;359,8:3:0,3;347,1;359,4;352,8;342,4;350,4;342,4;350,4:4:0,3;357,1;334,4;246,4;343,12;334,4;340,2;0,1;347,1:', 64),
	(13, 'weirdodo', 'Furni Face', 'Lady BlaBla', '1:379,4;45,4;0,1;205,2;42,5;37,4;384,2;41,4;42,5;0,2:2:0,3;199,3;0,1;383,3;519,4;515,8;519,8;39,2;0,1:3:0,2;205,2;382,4;522,2;516,12;518,8;0,3:4:0,4;386,2;0,2;43,1;0,1;207,3;202,1;520,8;44,2;0,2;520,4;207,3:', 68),
	(14, 'double_peks', 'Habbowood', 'Micheal Bauble', '1:280,4;265,4;264,4;263,8;0,16:2:262,4;263,8;266,4;267,4;264,12;262,4:3:0,4;268,8;269,4;270,4;268,8;282,4;285,4:4:0,20;74,4;75,3;81,3;0,6:', 72),
	(15, 'party_trax', 'Party Trax', 'Aerokid', '1:12,16;3,4;19,8;0,2;29,8;0,16:2:13,4;14,4;10,8;0,4;2,8;0,1;33,1;32,18;16,2;32,2;16,2:3:0,2;15,1;17,1;5,4;7,2;24,1;8,1;4,4;0,2;24,1;6,1;0,4;22,4;0,2;28,4;30,4;31,2;16,2;31,2;16,2;20,1;21,1;20,1;21,1;20,1;21,1;20,1;21,1:4:18,2;0,2;10,4;5,22;35,2;0,20;24,1;17,1:', 100),
	(16, 'who_dares_stacks', 'Who Dares Stacks', 'Rage Against the Fuse', '1:255,4;310,7;0,9;310,14;0,4:2:0,3;309,1;308,7;309,1;308,7;309,1;308,7;309,1;308,7;309,1;0,2:3:0,4;162,7;0,1;162,7;0,1;162,15;0,3:4:0,6;135,4;135,4;135,4;0,2;135,4;135,4;135,4;135,4;0,2:5:0,14;155,2;0,2;155,2;314,1;315,1;314,1;315,1;314,1;315,1;314,1;0,1;314,1;315,1;314,1;315,1;314,1;315,1;314,1;315,1;0,2:6:0,12;311,1;0,1;311,1;0,1;311,1;0,1;311,1;0,1;311,1;0,5;155,2;311,1;0,1;311,1;0,1;311,1;0,3;311,1;0,1:', 76),
	(17, 'rnb_swat_teem', 'Pet Romance', 'Lady BlaBla', '1:118,1;0,1;136,2;0,2;137,2;0,2;137,2;136,2;137,2;136,4;71,6;0,4:2:121,6;122,4;123,4;122,4;123,2;122,4;0,2;169,2;0,2:3:0,1;125,1;143,8;68,2;165,2;69,1;0,1;69,1;168,1;169,2;69,1;0,1;69,1;125,1;143,4;167,1;0,1:4:0,2;120,8;138,4;120,6;138,6;66,2;121,2:', 61),
	(18, 'park_adventure', 'Park Adventure', 'Kallomies', '1:200,12;199,3;201,1;200,28:2:0,2;190,1;0,1;191,1;0,1;192,1;0,1;190,2;191,1;192,1;190,2;0,1;193,2;190,2;191,1;0,1;190,1;192,2;0,1;191,2;178,2;0,1;178,2;0,1;178,2;0,2;177,2;0,1;176,4:3:0,8;176,2;0,1;177,2;0,3;179,2;0,2;177,2;0,2;176,2;0,1;178,6;0,1;178,2;0,2;177,4;176,2:4:0,8;197,16;0,20:', 90),
	(19, 'good_trade', 'The Good Trade', 'Kayne Quest', '1:108,4;135,8;130,2;108,2;135,8;127,28:2:0,3;131,9;104,2;0,2;131,8;108,4;102,4;0,8;92,6;0,6:3:134,4;140,8;0,1;133,1;136,2;140,6;0,10;143,16;108,4:4:0,2;104,2;0,1;133,1;0,3;133,1;134,4;0,1;104,2;133,1;0,3;133,1;0,24;136,2;0,4:', 107),
	(20, 'chilled_trax', 'Phuturistic Chilled Trax', 'Aerokid', '1:65,2;64,16;0,1;69,1;0,4;31,8;64,12;49,4;53,2:2:0,2;66,18;70,24;75,3;0,3:3:0,6;71,4;72,10;36,4;30,4;36,4;0,4;77,8;0,6:4:0,10;68,2;65,2;68,2;67,4;73,12;0,10;81,3;0,5:', 106),
	(21, 'epic_flail', 'Epic Flail', 'Habbocalyptica', '1:484,12;0,4;298,2;303,2;298,2;303,2;0,3;366,1;305,4;306,2;0,2;306,2;0,1;366,1;0,4;629,4;630,4;622,4;630,4;305,4;306,2;0,2;306,2;0,1;366,1;298,2;303,2;298,2;303,2;484,12;0,2:2:0,2;471,8;207,3;0,3;298,2;303,2;298,2;303,2;295,2;296,2;305,4;306,2;296,2;306,2;296,2;471,4;629,4;630,4;622,8;305,4;306,2;296,2;306,2;296,2;298,2;303,2;298,2;303,2;471,4;207,3;0,7:3:0,2;471,8;0,2;338,32;39,2;0,6;39,2;0,2;630,4;338,20;471,4;0,10:4:0,3;471,8;0,1;338,32;39,2;0,10;622,4;338,20;0,1;471,4;0,9:5:485,4;0,1;485,4;0,11;295,2;296,2;295,2;296,2;0,4;295,2;296,2;295,2;296,2;0,16;39,2;0,6;295,2;296,2;295,2;296,2;295,2;296,2;295,2;296,2;469,4;0,10:6:472,12;0,8;244,10;182,14;244,2;0,20;244,16;472,8;0,6:', 186),
	(22, 'alley_cat_in_trouble', 'Alley Cat in Trouble', 'Rage Against the Fuse', '1:349,20;355,8;349,8;307,8;307,1;307,1;307,1;0,1;349,8;457,2:2:0,2;346,17;0,5;346,11;0,1;361,12;346,7;0,3:3:0,4;240,16;0,8;240,8;307,8;307,1;307,1;307,1;0,1;240,8;0,2:4:0,8;243,12;0,8;243,8;363,8;0,4;243,8;0,2:5:0,12;242,8;0,4;236,4;242,8;457,2;0,2;457,2;0,2;457,2;457,2;242,8;0,2:6:0,2;71,18;0,4;71,32;0,2:', 119),
	(23, 'lost_my_tapes_at_goa', 'Tapes from Goa', 'Habnosis', '1:0,116;116,8;0,8;5,56;0,64:2:0,49;42,6;0,21;575,4;0,4;575,20;0,4;0,2;290,6;290,2;290,4;293,2;297,1;291,2;0,12;42,6;0,31;75,4;0,6;97,2;0,16;575,4;0,2;502,4;0,12;502,4;0,4;502,4:3:0,42;471,4;0,3;81,4;44,2;0,12;97,2;2,2;0,2;2,2;0,2;2,8;0,1;81,3;0,4;410,14;0,2;410,30;97,2;0,2;410,2;0,2;410,2;0,2;410,2;0,2;410,2;0,10;97,2;0,6;97,2;410,22;97,2;410,16:4:0,44;410,40;157,66;97,2;157,2;97,2;0,4;157,79:5:0,20;577,8;0,8;570,16;79,2;423,2;79,2;423,2;79,2;423,2;79,2;423,2;79,2;423,2;79,2;423,2;79,2;0,2;79,2;97,2;0,6;97,2;0,6;97,2;0,6;97,2;0,14;97,2;101,1;0,1;101,1;0,1;101,1;0,1;101,1;0,1;101,1;0,1;101,1;0,1;101,1;0,1;101,1;0,1;101,1;0,1;101,1;0,1;101,1;100,1;101,1;100,1;101,1;100,1;101,1;100,1;101,1;100,1;101,1;100,1;101,19;100,5;101,1;100,1;101,1;100,6;101,1;100,1;101,1;100,5;101,1;100,1;101,1;0,4;576,4;575,12:6:0,11;576,16;0,5;100,19;101,1;447,32;0,6;447,50;454,36;447,56:7:0,4;575,16;0,6;514,4;0,1;118,1;0,5;118,1;0,3;118,1;97,2;0,6;97,2;0,8;71,24;0,8;471,48;0,24;73,82:8:578,20;0,4;579,8;0,6;73,46;0,4;73,87;97,2;0,44;578,32;579,4:', 512),
	(24, 'galactic_disco', 'Galactic Disco', 'DJ Bobba feat. Habboway', '1:214,2;95,20;0,2;260,1;0,3;260,1;0,1;407,16;95,6;0,6:2:0,14;461,2;0,2;461,2;0,10;495,2;0,2;495,2;0,2;495,2;0,2;495,2;0,2;412,2;0,5;495,2;0,3:3:0,2;413,28;458,14;0,2;86,6;0,6:4:0,2;411,42;0,2;256,1;257,5;0,6:5:0,6;465,2;0,2;465,2;0,2;465,2;0,2;465,2;0,2;531,2;0,2;531,2;0,6;461,2;0,2;461,2;0,2;461,2;0,4;92,1;93,4;0,5:6:0,6;72,2;0,2;72,2;0,2;72,2;0,2;72,2;0,2;72,2;0,1;72,3;0,2;72,2;0,2;72,2;0,2;72,2;0,2;72,2;0,4;72,2;0,8:', 114),
	(25, 'electric_pixels', 'Electric Pixels', 'Habbo de Gaia', '1:73,36;435,40;565,2;566,2;468,24;0,2:2:0,1;76,2;43,1;0,1;76,2;0,2;76,2;43,1;0,1;76,2;0,2;76,2;0,21;439,8;454,2;0,2;454,2;0,2;454,20;0,6;420,2;0,2;420,2;0,2;420,2;0,2;420,2;0,2;97,2;0,6:3:0,2;76,2;0,2;76,2;0,2;76,2;0,2;76,2;0,2;76,2;0,16;73,30;434,4;420,2;434,6;435,24;0,4:4:0,1;80,16;0,19;463,6;438,2;463,2;438,2;463,2;438,2;0,2;97,2;0,4;79,2;0,2;79,2;42,6;79,2;420,2;0,4;447,20;73,2;0,4:5:52,34;97,2;0,2;420,2;0,2;420,2;0,2;420,2;439,4;0,4;456,22;0,2;456,20;0,6:6:0,7;42,6;0,1;42,6;565,2;566,2;565,2;566,2;565,2;566,2;565,2;566,2;468,38;0,2;73,4;463,2;0,2;439,4;463,2;0,2;439,4;463,2;0,8:7:0,12;577,24;52,62;0,8:8:77,20;553,4;554,4;553,4;554,4;460,32;447,10;0,2;460,18;0,8:', 210),
	(26, 'xmas_2011', 'Xmas Magic', 'Silent Aurora', '1:387,4;387,3;0,5;387,4;0,23;558,8;0,8;558,8;0,8;558,4;0,4;558,4;0,4;558,4;476,1;0,3;558,4;0,3;476,2;0,2;476,2;0,14;387,6:2:0,4;484,8;484,3;0,5;61,4;0,40;481,1;482,3;481,5;482,3;481,5;482,3;481,5;482,3;481,4;0,1;482,4;0,3;476,2;0,2;476,4:3:0,4;477,2;476,2;0,2;476,2;0,2;476,2;0,3;476,4;0,1;485,4;0,43;485,4;0,7;476,3;0,2;485,4;0,1;476,4;0,5;558,4:4:0,2;485,6;0,11;485,7;0,6;498,78;0,2;473,4;474,4;473,4:5:0,16;326,12;326,3;0,1;326,68;326,2:6:0,8;476,2;0,2;476,2;0,2;476,3;0,6;325,42;0,12;325,12;0,4;325,4:7:0,27;325,3;325,2;0,14;475,1;0,1;475,4;475,4;0,22;477,2;0,5;476,4;476,3:8:0,38;474,2;0,30;486,32:meta,1;c,1', 257),
	(27, 'who_dares_stacks', 'Who Dares Stacks', 'Rage Against the Fuse', '1:255,4;310,7;0,9;310,14;0,4:2:0,3;309,1;308,7;309,1;308,7;309,1;308,7;309,1;308,7;309,1;0,2:3:0,4;162,7;0,1;162,7;0,1;162,15;0,3:4:0,6;135,4;135,4;135,4;0,2;135,4;135,4;135,4;135,4;0,2:5:0,14;155,2;0,2;155,2;314,1;315,1;314,1;315,1;314,1;315,1;314,1;0,1;314,1;315,1;314,1;315,1;314,1;315,1;314,1;315,1;0,2:6:0,12;311,1;0,1;311,1;0,1;311,1;0,1;311,1;0,1;311,1;0,5;155,2;311,1;0,1;311,1;0,1;311,1;0,3;311,1;0,1:', 76);
/*!40000 ALTER TABLE `soundtracks` ENABLE KEYS */;

-- Dumping structure for table test.special_enables
DROP TABLE IF EXISTS `special_enables`;
CREATE TABLE IF NOT EXISTS `special_enables` (
  `effect_id` int(5) NOT NULL,
  `min_rank` int(2) NOT NULL,
  UNIQUE KEY `effect_id` (`effect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.special_enables: 3 rows
/*!40000 ALTER TABLE `special_enables` DISABLE KEYS */;
INSERT INTO `special_enables` (`effect_id`, `min_rank`) VALUES
	(102, 5),
	(178, 5),
	(136, 5);
/*!40000 ALTER TABLE `special_enables` ENABLE KEYS */;

-- Dumping structure for table test.support_cfh_categories
DROP TABLE IF EXISTS `support_cfh_categories`;
CREATE TABLE IF NOT EXISTS `support_cfh_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_internal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_external` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.support_cfh_categories: ~6 rows (approximately)
/*!40000 ALTER TABLE `support_cfh_categories` DISABLE KEYS */;
INSERT INTO `support_cfh_categories` (`id`, `name_internal`, `name_external`) VALUES
	(1, 'cyber', 'Cyber sex'),
	(2, 'scamming', 'Scamming'),
	(3, 'badwords', 'Inappropriate words'),
	(4, 'badbehavior', 'Bad behavior'),
	(5, 'account', 'Account Issues'),
	(6, 'hacking', 'Hacking');
/*!40000 ALTER TABLE `support_cfh_categories` ENABLE KEYS */;

-- Dumping structure for table test.support_cfh_topics
DROP TABLE IF EXISTS `support_cfh_topics`;
CREATE TABLE IF NOT EXISTS `support_cfh_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name_internal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_external` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` enum('mods','auto_ignore','auto_reply') COLLATE utf8mb4_unicode_ci DEFAULT 'mods',
  `ignore_target` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `auto_reply` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_sanction` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.support_cfh_topics: ~32 rows (approximately)
/*!40000 ALTER TABLE `support_cfh_topics` DISABLE KEYS */;
INSERT INTO `support_cfh_topics` (`id`, `category_id`, `name_internal`, `name_external`, `action`, `ignore_target`, `auto_reply`, `default_sanction`) VALUES
	(1, 1, 'cyber.sextalk', 'Sexual talk', 'auto_ignore', '0', 'Thank you for reporting someone for sexual talk. We have put this user on ignore for you. This means that you can no longer see what they are saying. To turn ignore off for this person you need to click on them and press \'Listen\'. We will take a look at this.', 0),
	(2, 1, 'cyber.asking', 'Asking for cyber sex', 'auto_ignore', '0', 'Thank you for reporting someone for sexual talk. We have put this user on ignore for you. This means that you can no longer see what they are saying. To turn ignore off for this person you need to click on them and press \'Listen\'. We will take a look at this.', 0),
	(3, 1, 'cyber.offering', 'Offering cyber sex', 'auto_ignore', '0', 'Thank you for reporting someone for sexual talk. We have put this user on ignore for you. This means that you can no longer see what they are saying. To turn ignore off for this person you need to click on them and press \'Listen\'. We will take a look at this.', 0),
	(4, 1, 'cyber.porn', 'Sending porn', 'mods', '0', NULL, 0),
	(5, 2, 'scamming.scamsite', 'Promoting scam sites', 'mods', '0', NULL, 0),
	(6, 2, 'scamming.sellingirl', 'Selling virtual items for real money', 'mods', '0', NULL, 0),
	(7, 2, 'scamming.stealingfurni', 'Stealing furni or coins', 'mods', '0', NULL, 0),
	(8, 2, 'scamming.account', 'Stealing account information', 'mods', '0', NULL, 0),
	(9, 2, 'scamming.casino', 'Casino scamming', 'auto_reply', '0', 'Habbo does not get involved with the casino community due to cases being complex and hard to track. Players gamble at their own risk. When the fun stops, stop.', 0),
	(10, 3, 'badwords.roomname', 'Room name', 'mods', '0', NULL, 0),
	(11, 3, 'badwords.roomdesc', 'Room description', 'mods', '0', NULL, 0),
	(12, 3, 'badwords.username', 'Username', 'mods', '0', NULL, 0),
	(13, 3, 'badwords.motto', 'Moto', 'mods', '0', NULL, 0),
	(14, 3, 'badwords.grouporevent', 'Group or event name', 'mods', '0', NULL, 0),
	(15, 4, 'badbehavior.trolling', 'Trolling', 'auto_reply', '0', 'Thanks for your report. Please call a moderator to the room by following these steps.\r\n1. Under the Help window click on \'Get immediate help\'.\r\n2. Then click on \'Chat to a Moderator\'.\r\n3. Let them know that somebody is trolling in the room.\r\n4. A moderator will open a chat session with you to resolve the problem.', 0),
	(16, 4, 'badbehavior.blocking', 'Blocking', 'auto_reply', '0', 'Thanks for your report. Please call a moderator to the room by following these steps.\r\n1. Under the Help window click on \'Get immediate help\'.\r\n2. Then click on \'Chat to a Moderator\'.\r\n3. Let them know that somebody is blocking in the room.\r\n4. A moderator will open a chat session with you to resolve the problem.', 0),
	(17, 4, 'badbehavior.flooding', 'Flooding', 'auto_reply', '0', 'Thanks for your report. Please call a moderator to the room by following these steps.\r\n1. Under the Help window click on \'Get immediate help\'.\r\n2. Then click on \'Chat to a Moderator\'.\r\n3. Let them know that somebody is flooding the room.\r\n4. A moderator will open a chat session with you to resolve the problem.', 0),
	(18, 4, 'badbehavior.young', 'Too young for Habbo', 'mods', '0', NULL, 0),
	(19, 4, 'badbehavior.staffimpersonation', 'Staff impersonation', 'mods', '0', NULL, 0),
	(20, 4, 'badbehavior.offensive', 'Offensive language', 'auto_ignore', '0', 'We have put this user on ignore for you. This means that you can no longer see what they are saying. To turn ignore off for this person you need to click on them and press \'Listen\'', 0),
	(21, 4, 'badbehavior.hate', 'Hate speech', 'auto_ignore', '0', 'We have put this user on ignore for you. This means that you can no longer see what they are saying. To turn ignore off for this person you need to click on them and press \'Listen\'', 0),
	(22, 4, 'badbehavior.violence', 'Violence', 'auto_ignore', '0', 'We have put this user on ignore for you. This means that you can no longer see what they are saying. To turn ignore off for this person you need to click on them and press \'Listen\'', 0),
	(23, 5, 'account.username', 'Change username', 'auto_reply', '0', 'It is currently not possible to change your username in Habbo. When that feature becomes available you\'ll be sure to know! :)', 0),
	(24, 5, 'accunt.payment', 'Payment issues', 'auto_reply', '0', 'Thanks for your report. Unfortunately Game Moderators cannot help with payment issues. Please report your payment issue to us at the help desk on the website where our team of specialists will get back to you.', 0),
	(25, 5, 'account.earn', 'Earn gems', 'auto_reply', '0', 'Thanks for your report. Unfortunately Game Moderators cannot help with payment issues. Please report your payment issue to us at the help desk on the website where our team of specialists will get back to you.', 0),
	(26, 5, 'account.other', 'Something else', 'auto_reply', '0', 'Please use the helpdesk on the website for help with this matter.', 0),
	(27, 6, 'hacking.game', 'Threat to hack Habbo', 'auto_reply', '0', 'We work very hard to ensure that Habbo is safe for all that play. This involves using only the best security technology. We would like to thank you for reporting this to us, but we don\'t think this person is capable of hacking Habbo :)', 0),
	(28, 6, 'hacking.player', 'Threat to hack a player', 'auto_reply', '0', 'There is no way that another Habbo can hack you without knowing your Habbo password or Habbo email address. Please make sure that you are using a secure password which is not easy to remember. We recommend passwords which include letters and numbers such as fl0w3rs. If you wanted to be even more secure you could include a special letter, such as fl0w3r$.\r\n\r\nTo change your Habbo password go to your profile on the website.', 0),
	(29, 6, 'hacking.furni', 'Scripted furniture', 'mods', '0', NULL, 0),
	(30, 6, 'hacking.room', 'Scripted room', 'mods', '0', NULL, 0),
	(31, 6, 'hacking.character', 'Scripted character', 'mods', '0', NULL, 0),
	(32, 6, 'hacking.other', 'Other hacking', 'mods', '0', NULL, 0);
/*!40000 ALTER TABLE `support_cfh_topics` ENABLE KEYS */;

-- Dumping structure for table test.support_issue_categories
DROP TABLE IF EXISTS `support_issue_categories`;
CREATE TABLE IF NOT EXISTS `support_issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PII',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.support_issue_categories: 2 rows
/*!40000 ALTER TABLE `support_issue_categories` DISABLE KEYS */;
INSERT INTO `support_issue_categories` (`id`, `name`) VALUES
	(1, 'PII'),
	(2, 'Whatever');
/*!40000 ALTER TABLE `support_issue_categories` ENABLE KEYS */;

-- Dumping structure for table test.support_issue_presets
DROP TABLE IF EXISTS `support_issue_presets`;
CREATE TABLE IF NOT EXISTS `support_issue_presets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL DEFAULT 1,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reminder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_for` int(11) NOT NULL DEFAULT 0 COMMENT '100000 = perm ban',
  `mute_for` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.support_issue_presets: ~11 rows (approximately)
/*!40000 ALTER TABLE `support_issue_presets` DISABLE KEYS */;
INSERT INTO `support_issue_presets` (`id`, `category`, `name`, `message`, `reminder`, `ban_for`, `mute_for`) VALUES
	(1, 1, '1 hour mute', '1 hour mute', 'Reminder, yeah.. no', 0, 1),
	(2, 1, '2 hour mute', '2 hour mute', 'Reminder, yeah.. no', 0, 2),
	(3, 1, '1 hour ban', '1 hour ban', 'Reminder, yeah.. no', 1, 0),
	(4, 1, '2 hour ban', '2 hour ban', 'Reminder, yeah.. no', 2, 0),
	(5, 1, '1 day ban', '1 day ban', 'Reminder, yeah.. no', 24, 0),
	(6, 1, '7 days ban', '7 days ban', 'Reminder, yeah.. no', 168, 0),
	(7, 1, '1 month ban', '1 month ban', 'Reminder, yeah.. no', 744, 0),
	(8, 1, '2 months ban', '2 months ban', 'Reminder, yeah.. no', 1488, 0),
	(9, 1, '1 year ban', '1 year ban', 'Reminder, yeah.. no', 8760, 0),
	(10, 1, 'Perm ban', 'Perm ban', 'Reminder, yeah.. no', 100000, 0),
	(11, 2, '1 day ban', '1 day ban', 'Reminder, yeah.. no', 24, 0);
/*!40000 ALTER TABLE `support_issue_presets` ENABLE KEYS */;

-- Dumping structure for table test.support_presets
DROP TABLE IF EXISTS `support_presets`;
CREATE TABLE IF NOT EXISTS `support_presets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('user','room') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `preset` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.support_presets: ~4 rows (approximately)
/*!40000 ALTER TABLE `support_presets` DISABLE KEYS */;
INSERT INTO `support_presets` (`id`, `type`, `preset`) VALUES
	(1, 'user', 'You\'re banned.'),
	(2, 'user', 'Other message.'),
	(3, 'room', 'Some message'),
	(4, 'room', 'Configurable in support_presets table.');
/*!40000 ALTER TABLE `support_presets` ENABLE KEYS */;

-- Dumping structure for table test.support_tickets
DROP TABLE IF EXISTS `support_tickets`;
CREATE TABLE IF NOT EXISTS `support_tickets` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `state` int(11) NOT NULL DEFAULT 0,
    `type` int(2) NOT NULL DEFAULT 1,
    `timestamp` int(11) NOT NULL DEFAULT 0,
    `score` int(11) NOT NULL DEFAULT 0,
    `sender_id` int(11) NOT NULL DEFAULT 0,
    `reported_id` int(11) NOT NULL DEFAULT 0,
    `room_id` int(11) NOT NULL DEFAULT 0,
    `mod_id` int(11) NOT NULL DEFAULT 0,
    `issue` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `category` int(3) NOT NULL DEFAULT 0,
    `group_id` int(11) NOT NULL,
    `thread_id` int(11) NOT NULL,
    `comment_id` int(11) NOT NULL,
    `photo_item_id` int(11) NOT NULL DEFAULT -1,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `id` (`id`) USING BTREE,
    KEY `state` (`state`) USING BTREE,
    KEY `type` (`type`) USING BTREE,
    KEY `timestamp` (`timestamp`) USING BTREE,
    KEY `user_data` (`sender_id`,`reported_id`) USING BTREE,
    KEY `room_id` (`room_id`) USING BTREE,
    KEY `issue` (`issue`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.support_tickets: ~0 rows (approximately)
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;

-- Dumping structure for table test.trax_playlist
DROP TABLE IF EXISTS `trax_playlist`;
CREATE TABLE IF NOT EXISTS `trax_playlist` (
    `trax_item_id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Dumping data for table test.trax_playlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `trax_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `trax_playlist` ENABLE KEYS */;

-- Dumping structure for table test.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
    `real_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'No longer in use since Facebook-ID-Login merged to Habbo.',
    `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `mail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mail_verified` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `account_created` int(11) NOT NULL COMMENT 'Have your CMS update this Date. (UnixTimeStamp)',
    `account_day_of_birth` int(11) NOT NULL DEFAULT 0 COMMENT 'Have your CMS update this Date. Its Used for the Birthday Cake gift. (UnixTimeStamp)',
    `last_login` int(11) NOT NULL DEFAULT 0,
    `last_online` int(11) NOT NULL DEFAULT 0,
    `motto` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Arcturus Emulator 3.0',
    `look` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hr-115-42.hd-195-19.ch-3030-82.lg-275-1408.fa-1201.ca-1804-64',
    `gender` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
    `rank` int(2) NOT NULL DEFAULT 1,
    `credits` int(11) NOT NULL DEFAULT 0,
    `pixels` int(11) NOT NULL DEFAULT 0,
    `points` int(11) NOT NULL DEFAULT 0,
    `online` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `auth_ticket` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `ip_register` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
    `ip_current` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Have your CMS update this IP. If you do not do this IP banning won''t work!',
    `machine_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `home_room` int(32) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `username` (`username`) USING BTREE,
    KEY `online` (`online`),
    KEY `ip_register` (`ip_register`,`ip_current`,`id`),
    FULLTEXT KEY `auth_ticket` (`auth_ticket`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table test.users_achievements
DROP TABLE IF EXISTS `users_achievements`;
CREATE TABLE IF NOT EXISTS `users_achievements` (
    `user_id` int(32) NOT NULL,
    `achievement_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `progress` int(11) NOT NULL DEFAULT 1,
    KEY `user_id` (`user_id`) USING BTREE,
    KEY `achievement_name` (`achievement_name`(250)) USING BTREE,
    KEY `progress` (`progress`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_achievements: 0 rows
/*!40000 ALTER TABLE `users_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_achievements` ENABLE KEYS */;

-- Dumping structure for table test.users_achievements_queue
DROP TABLE IF EXISTS `users_achievements_queue`;
CREATE TABLE IF NOT EXISTS `users_achievements_queue` (
    `user_id` int(11) NOT NULL,
    `achievement_id` int(11) NOT NULL,
    `amount` int(11) NOT NULL,
    UNIQUE KEY `unique_index` (`user_id`,`achievement_id`) USING BTREE,
    UNIQUE KEY `data` (`user_id`,`achievement_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.users_achievements_queue: 0 rows
/*!40000 ALTER TABLE `users_achievements_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_achievements_queue` ENABLE KEYS */;

-- Dumping structure for table test.users_badges
DROP TABLE IF EXISTS `users_badges`;
CREATE TABLE IF NOT EXISTS `users_badges` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `slot_id` int(11) NOT NULL DEFAULT 0,
    `badge_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_badges: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_badges` ENABLE KEYS */;

-- Dumping structure for table test.users_clothing
DROP TABLE IF EXISTS `users_clothing`;
CREATE TABLE IF NOT EXISTS `users_clothing` (
    `user_id` int(11) NOT NULL,
    `clothing_id` int(11) NOT NULL,
    UNIQUE KEY `user_id` (`user_id`,`clothing_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.users_clothing: 0 rows
/*!40000 ALTER TABLE `users_clothing` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_clothing` ENABLE KEYS */;

-- Dumping structure for table test.users_currency
DROP TABLE IF EXISTS `users_currency`;
CREATE TABLE IF NOT EXISTS `users_currency` (
    `user_id` int(32) NOT NULL,
    `type` int(3) NOT NULL,
    `amount` int(64) NOT NULL DEFAULT 0,
    PRIMARY KEY (`user_id`,`type`) USING BTREE,
    UNIQUE KEY `userdata` (`user_id`,`type`) USING BTREE,
    KEY `amount` (`amount`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.users_currency: 0 rows
/*!40000 ALTER TABLE `users_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_currency` ENABLE KEYS */;

-- Dumping structure for table test.users_effects
DROP TABLE IF EXISTS `users_effects`;
CREATE TABLE IF NOT EXISTS `users_effects` (
    `user_id` int(11) NOT NULL,
    `effect` int(5) NOT NULL,
    `duration` int(11) NOT NULL DEFAULT 86400,
    `activation_timestamp` int(11) NOT NULL DEFAULT -1,
    `total` int(2) NOT NULL DEFAULT 1,
    UNIQUE KEY `user_id` (`user_id`,`effect`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.users_effects: 0 rows
/*!40000 ALTER TABLE `users_effects` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_effects` ENABLE KEYS */;

-- Dumping structure for table test.users_favorite_rooms
DROP TABLE IF EXISTS `users_favorite_rooms`;
CREATE TABLE IF NOT EXISTS `users_favorite_rooms` (
    `user_id` int(11) NOT NULL,
    `room_id` int(11) NOT NULL,
    UNIQUE KEY `user_id` (`user_id`,`room_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.users_favorite_rooms: 0 rows
/*!40000 ALTER TABLE `users_favorite_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_favorite_rooms` ENABLE KEYS */;

-- Dumping structure for table test.users_ignored
DROP TABLE IF EXISTS `users_ignored`;
CREATE TABLE IF NOT EXISTS `users_ignored` (
    `user_id` int(11) NOT NULL,
    `target_id` int(11) NOT NULL,
    KEY `user_id` (`user_id`,`target_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_ignored: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_ignored` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_ignored` ENABLE KEYS */;

-- Dumping structure for table test.users_navigator_settings
DROP TABLE IF EXISTS `users_navigator_settings`;
CREATE TABLE IF NOT EXISTS `users_navigator_settings` (
    `user_id` int(11) NOT NULL,
    `caption` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
    `list_type` enum('list','thumbnails') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'list',
    `display` enum('visible','collapsed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'visible',
    UNIQUE KEY `userid` (`user_id`) USING BTREE,
    KEY `list_type` (`list_type`) USING BTREE,
    KEY `display` (`display`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_navigator_settings: 0 rows
/*!40000 ALTER TABLE `users_navigator_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_navigator_settings` ENABLE KEYS */;

-- Dumping structure for table test.users_pets
DROP TABLE IF EXISTS `users_pets`;
CREATE TABLE IF NOT EXISTS `users_pets` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `room_id` int(11) NOT NULL,
    `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User Pet',
    `race` int(11) NOT NULL,
    `type` int(11) NOT NULL,
    `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
    `happyness` int(11) NOT NULL DEFAULT 100,
    `experience` int(11) NOT NULL DEFAULT 0,
    `energy` int(11) NOT NULL DEFAULT 100,
    `hunger` int(3) NOT NULL DEFAULT 0,
    `thirst` int(3) NOT NULL DEFAULT 0,
    `respect` int(11) NOT NULL DEFAULT 0,
    `created` int(11) NOT NULL,
    `x` int(11) NOT NULL DEFAULT 0,
    `y` int(11) NOT NULL DEFAULT 0,
    `z` double NOT NULL DEFAULT 0,
    `rot` int(11) NOT NULL DEFAULT 0,
    `hair_style` int(3) NOT NULL DEFAULT -1,
    `hair_color` int(3) NOT NULL DEFAULT 0,
    `saddle` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `ride` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `mp_type` int(3) NOT NULL DEFAULT 0,
    `mp_color` int(3) NOT NULL DEFAULT 0,
    `mp_nose` int(3) NOT NULL DEFAULT 0,
    `mp_nose_color` tinyint(2) NOT NULL DEFAULT 0,
    `mp_eyes` int(3) NOT NULL DEFAULT 0,
    `mp_eyes_color` tinyint(2) NOT NULL DEFAULT 0,
    `mp_mouth` int(3) NOT NULL DEFAULT 0,
    `mp_mouth_color` tinyint(2) NOT NULL DEFAULT 0,
    `mp_death_timestamp` int(11) NOT NULL DEFAULT 0,
    `mp_breedable` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `mp_allow_breed` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `gnome_data` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `mp_is_dead` tinyint(1) NOT NULL DEFAULT 0,
    `saddle_item_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_pets: 0 rows
/*!40000 ALTER TABLE `users_pets` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_pets` ENABLE KEYS */;

-- Dumping structure for table test.users_recipes
DROP TABLE IF EXISTS `users_recipes`;
CREATE TABLE IF NOT EXISTS `users_recipes` (
    `user_id` int(11) NOT NULL,
    `recipe` int(11) NOT NULL,
    UNIQUE KEY `user_id` (`user_id`,`recipe`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.users_recipes: 0 rows
/*!40000 ALTER TABLE `users_recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_recipes` ENABLE KEYS */;

-- Dumping structure for table test.users_saved_searches
DROP TABLE IF EXISTS `users_saved_searches`;
CREATE TABLE IF NOT EXISTS `users_saved_searches` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `search_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `filter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_saved_searches: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_saved_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_saved_searches` ENABLE KEYS */;

-- Dumping structure for table test.users_settings
DROP TABLE IF EXISTS `users_settings`;
CREATE TABLE IF NOT EXISTS `users_settings` (
    `id` int(32) NOT NULL AUTO_INCREMENT,
    `user_id` int(32) NOT NULL DEFAULT 0 COMMENT 'WARNING: DONT HAVE YOUR CMS INSERT ANYTHING IN HERE. THE EMULATOR DOES THIS FOR YOU!',
    `credits` int(32) NOT NULL DEFAULT 0,
    `achievement_score` int(10) NOT NULL DEFAULT 0,
    `daily_respect_points` int(2) NOT NULL DEFAULT 3,
    `daily_pet_respect_points` int(2) NOT NULL DEFAULT 3,
    `respects_given` int(11) NOT NULL DEFAULT 0,
    `respects_received` int(11) NOT NULL DEFAULT 0,
    `guild_id` int(16) NOT NULL DEFAULT 0,
    `can_change_name` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `can_trade` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
    `is_citizen` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `citizen_level` int(2) NOT NULL DEFAULT 0,
    `helper_level` int(2) NOT NULL DEFAULT 0,
    `tradelock_amount` int(11) NOT NULL DEFAULT 0,
    `cfh_send` int(8) NOT NULL DEFAULT 0 COMMENT 'Amount of CFHs been send. Not include abusive.',
    `cfh_abusive` int(8) NOT NULL DEFAULT 0 COMMENT 'Amount of abusive CFHs have been send.',
    `cfh_warnings` int(8) NOT NULL DEFAULT 0 COMMENT 'Amount of warnings a user has received.',
    `cfh_bans` int(8) NOT NULL DEFAULT 0 COMMENT 'Amount of bans a user has received.',
    `block_following` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `block_friendrequests` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `block_roominvites` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `volume_system` int(3) NOT NULL DEFAULT 100,
    `volume_furni` int(3) NOT NULL DEFAULT 100,
    `volume_trax` int(3) NOT NULL DEFAULT 100,
    `old_chat` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `block_camera_follow` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `chat_color` int(2) NOT NULL DEFAULT 0,
    `home_room` int(32) NOT NULL DEFAULT 0,
    `online_time` int(32) NOT NULL DEFAULT 0 COMMENT 'Total online time in seconds.',
    `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `club_expire_timestamp` int(11) NOT NULL DEFAULT 0,
    `login_streak` int(11) NOT NULL DEFAULT 0,
    `rent_space_id` int(32) NOT NULL DEFAULT 0,
    `rent_space_endtime` int(11) NOT NULL DEFAULT 0,
    `hof_points` int(16) NOT NULL DEFAULT 0,
    `block_alerts` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `talent_track_citizenship_level` int(2) NOT NULL DEFAULT -1,
    `talent_track_helpers_level` int(2) NOT NULL DEFAULT -1,
    `ignore_bots` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `ignore_pets` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `nux` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `mute_end_timestamp` int(11) NOT NULL DEFAULT 0,
    `allow_name_change` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
    `perk_trade` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Defines if a player has obtained the perk TRADE. When hotel.trading.requires.perk is set to 1, this perk is required in order to trade. Perk is obtained from the talen track.',
    `forums_post_count` int(11) DEFAULT 0,
    `ui_flags` int(11) NOT NULL DEFAULT 1,
    `has_gotten_default_saved_searches` tinyint(1) NOT NULL DEFAULT 0,
    `hc_gifts_claimed` int(10) DEFAULT 0,
    `last_hc_payday` int(10) DEFAULT 0,
    `max_rooms` int(10) DEFAULT 50,
    `max_friends` int(10) DEFAULT 300,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `user_id` (`user_id`) USING BTREE,
    KEY `achievement_score` (`achievement_score`) USING BTREE,
    KEY `guild_id` (`guild_id`) USING BTREE,
    KEY `can_trade` (`can_trade`) USING BTREE,
    KEY `online_time` (`online_time`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_settings` ENABLE KEYS */;

-- Dumping structure for table test.users_subscriptions
DROP TABLE IF EXISTS `users_subscriptions`;
CREATE TABLE IF NOT EXISTS `users_subscriptions` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `user_id` int(10) unsigned DEFAULT NULL,
    `subscription_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `timestamp_start` int(10) unsigned DEFAULT NULL,
    `duration` int(10) unsigned DEFAULT NULL,
    `active` tinyint(1) DEFAULT 1,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `user_id` (`user_id`) USING BTREE,
    KEY `subscription_type` (`subscription_type`) USING BTREE,
    KEY `timestamp_start` (`timestamp_start`) USING BTREE,
    KEY `active` (`active`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_subscriptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_subscriptions` ENABLE KEYS */;

-- Dumping structure for table test.users_target_offer_purchases
DROP TABLE IF EXISTS `users_target_offer_purchases`;
CREATE TABLE IF NOT EXISTS `users_target_offer_purchases` (
    `user_id` int(11) NOT NULL,
    `offer_id` int(11) NOT NULL,
    `state` int(11) NOT NULL DEFAULT 0,
    `amount` int(11) NOT NULL DEFAULT 0,
    `last_purchase` int(11) NOT NULL DEFAULT 0,
    UNIQUE KEY `use_id` (`user_id`,`offer_id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_target_offer_purchases: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_target_offer_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_target_offer_purchases` ENABLE KEYS */;

-- Dumping structure for table test.users_wardrobe
DROP TABLE IF EXISTS `users_wardrobe`;
CREATE TABLE IF NOT EXISTS `users_wardrobe` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `slot_id` int(11) NOT NULL DEFAULT 0,
    `look` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
    `gender` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.users_wardrobe: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_wardrobe` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_wardrobe` ENABLE KEYS */;

-- Dumping structure for table test.user_window_settings
DROP TABLE IF EXISTS `user_window_settings`;
CREATE TABLE IF NOT EXISTS `user_window_settings` (
    `user_id` int(11) NOT NULL,
    `x` int(16) NOT NULL DEFAULT 100,
    `y` int(16) NOT NULL DEFAULT 100,
    `width` int(16) NOT NULL DEFAULT 435,
    `height` int(16) NOT NULL DEFAULT 535,
    `open_searches` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.user_window_settings: 0 rows
/*!40000 ALTER TABLE `user_window_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_window_settings` ENABLE KEYS */;

-- Dumping structure for table test.vouchers
DROP TABLE IF EXISTS `vouchers`;
CREATE TABLE IF NOT EXISTS `vouchers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
    `credits` int(11) NOT NULL DEFAULT 0,
    `points` int(11) NOT NULL DEFAULT 0,
    `points_type` int(3) NOT NULL DEFAULT 0,
    `catalog_item_id` int(11) NOT NULL DEFAULT 0,
    `amount` int(11) NOT NULL DEFAULT 1,
    `limit` int(11) NOT NULL DEFAULT -1,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.vouchers: 0 rows
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;

-- Dumping structure for table test.voucher_history
DROP TABLE IF EXISTS `voucher_history`;
CREATE TABLE IF NOT EXISTS `voucher_history` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `voucher_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.voucher_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_history` ENABLE KEYS */;

-- Dumping structure for table test.wired_rewards_given
DROP TABLE IF EXISTS `wired_rewards_given`;
CREATE TABLE IF NOT EXISTS `wired_rewards_given` (
    `wired_item` int(32) NOT NULL,
    `user_id` int(32) NOT NULL,
    `reward_id` int(11) NOT NULL,
    `timestamp` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table test.wired_rewards_given: 0 rows
/*!40000 ALTER TABLE `wired_rewards_given` DISABLE KEYS */;
/*!40000 ALTER TABLE `wired_rewards_given` ENABLE KEYS */;

-- Dumping structure for table test.wordfilter
DROP TABLE IF EXISTS `wordfilter`;
CREATE TABLE IF NOT EXISTS `wordfilter` (
    `key` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The word to filter.',
    `replacement` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'What the word should be replaced with.',
    `hide` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Wether the whole message that contains this word should be hidden from being displayed.',
    `report` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Wether the message should be reported as auto-report to the moderators.',
    `mute` int(3) NOT NULL DEFAULT 0 COMMENT 'Time user gets muted for mentioning this word.',
    UNIQUE KEY `key` (`key`) USING BTREE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table test.wordfilter: ~1 rows (approximately)
/*!40000 ALTER TABLE `wordfilter` DISABLE KEYS */;
INSERT INTO `wordfilter` (`key`, `replacement`, `hide`, `report`, `mute`) VALUES
	('com', 'bobba', '0', '0', 0);
/*!40000 ALTER TABLE `wordfilter` ENABLE KEYS */;

-- Dumping structure for table test.youtube_playlists
DROP TABLE IF EXISTS `youtube_playlists`;
CREATE TABLE IF NOT EXISTS `youtube_playlists` (
    `item_id` int(11) NOT NULL,
    `playlist_id` varchar(255) NOT NULL COMMENT 'YouTube playlist ID',
    `order` int(11) NOT NULL,
    UNIQUE KEY `item_id` (`item_id`,`playlist_id`,`order`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
