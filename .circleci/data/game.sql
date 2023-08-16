-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 04:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `splitbit`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `genres` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `console` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `title`, `genres`, `price`, `console`, `image_url`) VALUES
(1, 'Lunistice', 'Action', '59.99', 'Steam', 'https://upload.wikimedia.org/wikipedia/en/8/8e/Lunistice_cover_art.jpg'),
(2, 'Battleblock Theater', 'Action', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/160c1057961b26876cac5a9203bdf554.png'),
(3, 'Pizza Tower', 'Action', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/7453a17fa74b6e8e61ff5793d29eecb6.png'),
(4, 'Your Only Move Is HUSTLE', 'Strategy', '4.99', 'Steam', 'https://styles.redditmedia.com/t5_7e0mow/styles/communityIcon_h3re33g9vl6a1.png'),
(5, 'Bloons TD 6', 'Strategy', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/67e6cc8e9fa647eb132e7aa5b215d8f5.jpg'),
(6, 'Rivals of Aether', 'Fighting', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/3a005c72daae4a3eb25ebc8dc5eae46b.jpg'),
(7, 'Street Fighter 6', 'Fighting', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/c1bf1aa11c87f8080bbfb9896910211a.jpg'),
(8, 'Tekken 7', 'Fighting', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/6e9fede7e11fdb675b3c82f59589bde0.jpg'),
(9, 'Mortal Kombat 1', 'Fighting', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/24cccbd2f3b8fef37ed6723c5c6e8d3f.jpg'),
(10, 'Puyo Puyo™ Tetris® 2', 'Puzzle', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/a4cbe827e2e9d46093f0ceb285404e6f.jpg'),
(11, 'VIVIDLOPE', 'Puzzle', '9.99', 'Steam', 'https://img.itch.zone/aW1nLzEwNzc4Nzk0LnBuZw==/315x250%23c/mJIHz%2B.png'),
(12, 'Portal 2', 'Puzzle', '9.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/c3b8f53aa0e84590ad481e5b3cbe6f56.jpg'),
(13, 'DELTARUNE', 'Action', 'Free', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/06a2aff760a42c9a7458eb8273c0666a.jpg'),
(14, 'Grounded', 'Survival', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/d765945e2247e02f2aa34c514424aed1.jpg'),
(15, 'Sonic Generations Collection', 'Action', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/f41c8dd4a873d7e93e5e1cd670c3404e.jpg'),
(16, 'Grand Theft Auto V', 'Open_World', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/d2564438802df90e3128b9f5837120a8.jpg'),
(17, 'Bits & Bops', 'Music', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/5a15692c52c1ded64a22566e10b74975.jpg'),
(18, 'Stray', 'Adventure', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/8da17e12e17802395f143699cf48ef1a.jpg'),
(19, 'PAC-MAN™ CHAMPIONSHIP EDITION 2', 'Retro', '12.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/421f16d9b53778352b950bb3e66ac552.jpg'),
(20, 'Cuphead', 'Retro', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/e3655c5fc74e768b335907dfae9c1e8a.jpg'),
(21, 'Rikki & Vikki', 'Retro', '9.99', 'Steam', 'https://f4.bcbits.com/img/a4070351884_10.jpg'),
(22, 'Monster Jaunt', 'Party', '59.99', 'Steam', 'https://f4.bcbits.com/img/a1854189547_10.jpg'),
(23, 'Mario Party Superstars', 'Party', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/0257376f0ee935e1325734413fb89eba.jpg'),
(24, 'Move or Die', 'Party', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/53443bdfdd5fab7d1fda114effb4b6d9.jpg'),
(25, 'Mario Kart 8 Deluxe', 'Racing', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/740c6b7a06c40763b11ae16307c967fb.jpg'),
(26, 'TrackMania Nations Forever', 'Racing', 'Free', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/4ca6ce6bb7f406810f863e6268becd05.jpg'),
(27, 'Dead by Daylight', 'Survival', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/e6b488e05a5fac894536b8dbf82f5e07.jpg'),
(28, 'Cyberpunk 2077', 'Shooter', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/15a6586915a39b3e6a3dec1029364b55.jpg'),
(29, 'Fortnite', 'Battle_Royale', 'Free', 'Playstation 5', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/10f8e9dd1f295661c067eaec670e5e23.jpg'),
(30, 'A Hat in Time', 'Adventure', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/ef5990ab47b058fad4024ddf71fd6440.jpg'),
(31, 'COD Warzone', 'Tactical', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/a82d667c0d647b93386af011ae26b09c.png'),
(32, 'Civilization', 'Tactical', '49.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/e5e07cc9b49607a00a6d5c9be9b2c364.png'),
(33, 'For The King', 'Tactical', '19.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/599708672e8b3790d67dbf4379f75355.png'),
(34, 'Little Bit Planet', 'Educational', '24.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/36a16a2505369e0c922b6ea7a23a56d2.png'),
(35, 'Scratch', 'Educational', 'Free', 'PC', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/818e9df1d570bd50ac5f162712fef623/32/256x256.png'),
(36, 'Minecraft', 'Educational', '29.99', 'ALL', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/add7a048049671970976f3e18f21ade3/32/256x256.png'),
(37, 'Big Brain Academy', 'Educational', '39.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/83dc55aeb13cc9f621dcbaa80304d506.png'),
(38, 'Oregon Trail', 'Educational', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/9103c8c82514f39d8360c7430c4ee557.png'),
(39, 'Roblox', 'Educational', 'Free', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/b7f5d38aaa4e8a553f49c085ee06bb15.png'),
(40, 'Portal', 'Educational', '0.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/41a69c66f821f25c8184aea3bb35225d.jpg'),
(41, 'Kerbal Space Program', 'Educational', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/9f6c3ea07d9b1c9e0c94d6a3b21398de.png'),
(42, 'Eloh', 'Educational', '3.00', 'Android', 'https://play-lh.googleusercontent.com/vK6G9nz7_A_aOTVcK4Bh-KNcY0szJMcQyKJJZ7ExDnLfGmP2RjUyugHBdSmTn5XpPH52'),
(43, 'Zoombini', 'Educational', '9.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/b8d889c4e9b34bc7dc7a93a2a9a91070/32/256x256.png'),
(44, 'Fire Emblem: Three Houses', 'Tactical', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/09e5e3e94f1a12843eb46581b1e8a881.png'),
(45, 'XCOM 2: War of the Chosen', 'Tactical', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/fb888889fd40a755c36dc2b00c2b88c0.png'),
(46, 'Gears Tactics', 'Tactical', '39.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/f28127c9f6e3c6ff54fbe297171562a1.jpg'),
(47, 'Triangle Strategy', 'Tactical', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/18fc3b6cc1e55ccea877c161e2e9ba27.png'),
(48, 'Crusader Kings 3', 'Tactical', '49.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/ae91b05cf9c865b54cf57adf35831853.png'),
(49, 'Phoenix Point', 'Tactical', '24.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/42695dacf04480f35d6e4c046353a580.jpg'),
(50, 'Desperados 3', 'Tactical', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/8ddbd719fcefe4960eb426aada20f825.png'),
(51, 'God of War', 'Action', '9.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/4acf4a742fdb03b02c34208064629965.png'),
(52, 'Elden Ring', 'Action', '59.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/7316e11fe78963395fbab4a85d0b8f85/32/256x256.png'),
(53, 'Batman: Arkham City', 'Action', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/f7ff233e4ed3e6b13c5d5c7a9201e4ec.png'),
(54, 'Ghost of Tsushima', 'Action', '29.39', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/e8630344970962450dbedfcd4cc6d718.png'),
(55, 'Final Fantasy XVI', 'Action', '69.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/c209163f3e310b6c0a9a2c6489e22a8e/32/512x512.png'),
(56, 'Cursed to Golf', 'Sports', '19.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/21bd61bdd9d7ba7b0f5c6b806ec01262.png'),
(57, 'Rocket League', 'Sports', 'Free', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/0cc918dec28dbd91f6006a2ce8101e2e/24/512x512.png'),
(58, 'Mario Tennis Aces', 'Sports', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/9691f85d4694213bab24690554d45c13.jpg'),
(59, 'Mario Super Strikers', 'Sports', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/98f99902f3a89bdc1df89e8975add861.jpg'),
(60, 'FIFA 23', 'Sports', '69.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/689e751a255f8518cd7ff4ec204377ca.png'),
(61, 'Madden NFL 22', 'Sports', '69.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/edd6a7e04e7f4dd932a5c44f282f9b4e/32/256x256.png'),
(62, 'WWE 2K22', 'Sports', '59.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/a66eefd27314a3dbd4b207ed91628772/32/256x256.png'),
(63, 'NBA 2K23', 'Sports', '69.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/901296dae04c7420f700486e12f81ed6.jpg'),
(64, 'Tony Hawks Pro Skater 1 + 2', 'Sports', '49.99', 'PC', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/7f7fc17485016b50781712c529de1df4.png'),
(65, 'Super Mega Baseball 4', 'Sports', '49.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/68f4f1c9069efc3169ccef543fc9b706.png'),
(66, 'Age of Empires IV', 'Strategy', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/7bda612fb0ffac6de1a3be8773e0b495/32/512x512.png'),
(67, 'Endless Legend', 'Strategy', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/ad972f10e0800b49d76fed33a21f6698.jpg'),
(68, 'Aliens: Dark Descent', 'Strategy', '39.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/88dab2eb7349678949a732dda2953987.png'),
(69, 'Supreme Commander: Forged Alliance', 'Strategy', '12.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/fd92a703e837c873aca02bf1edfafcfe.png'),
(70, 'Hearts of Iron IV', 'Strategy', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/5be5a7506bfc5ce83afa8354f9ac5fff.png'),
(71, 'Northgard', 'Strategy', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/81853dc778186bff64ba4b47dacfe8aa/32/256x256.png'),
(72, 'StarCraft II: Wings of Liberty', 'Strategy', 'Free', 'PC', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/f76ac036826d99d8647e653d46bc965f.png'),
(73, 'Candy Crush Saga', 'Puzzle', 'Free', 'Android', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/7887968ac1e67b5624dcf811d007ed12.png'),
(74, 'Bubble Shooter', 'Puzzle', 'Free', 'Android', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/3b95ec29f7101ef65c5a1915d26e9926.png'),
(75, 'Monument Valley 2', 'Puzzle', '7.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/cd6274314204f0b7342f35ae9dfa0165.png'),
(76, 'Samorost 2', 'Puzzle', '0.99', 'Android', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/2a912ac127cc3ac74d5255fa9097f3a9.png'),
(77, 'Raft', 'Puzzle', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/3bc412ad4910c19f6710515540190792/32/512x512.png'),
(78, 'Lara Croft Go', 'Puzzle', '4.99', 'Android', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/814780edbfedcd6356e9be7786960e64.png'),
(79, 'The Room Three', 'Puzzle', '3.99', 'Android', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/4564e13a85364d6743e38059a8544f34/32/256x256.png'),
(80, 'The Last of Us', 'Adventure', '19.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/b6617980ce90f637e68c3ebe8b9be745/32/256x256.png'),
(81, 'Final Fantasy IX', 'Adventure', '20.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/6ae948577c0bd7c07f4e74b4745f74a8.png'),
(82, 'The Walking Dead', 'Adventure', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/bb41d7ba746e551cbae52d2aaab4f625.png'),
(83, 'The Wolf Among Us', 'Adventure', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/943b303113e117eac269699cdb061768.png'),
(84, 'Uncharted 4', 'Adventure', '49.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/2a0f97f81755e2878b264adf39cba68e/32/256x256.png'),
(85, 'Fallout 3', 'Adventure', '2.49', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/9628ca5c148265131af3b23839ff01e9.png'),
(86, 'The Witcher 3: Wild Hunt', 'Adventure', '39.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/e276f77f5eb4b51b5852dc9a08092d47.png'),
(87, 'Skyrim', 'Adventure', '9.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/9ddc70b3617c3e65c03fa63c230a1705.png'),
(88, 'Apex Legends', 'Battle_Royale', 'Free', 'All', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/926dc2d550fbfd653c7a05d505e2aecf/32/512x512.png'),
(89, 'Fall Guys', 'Battle_Royale', 'Free', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/a561e7ebcac8441387d4fe143fdef87f.png'),
(90, 'Battlefield V', 'Battle_Royale', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/b667279b6400b4c05f3b5c4241e8bf7f.png'),
(91, 'Warface', 'Battle_Royale', 'Free', 'PC', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/d367eef13f90793bd8121e2f675f0dc2.png'),
(92, 'Realm Royale', 'Battle_Royale', 'Free', 'PC', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/5c64db62424a286a59daa6913b170a67.png'),
(93, 'Ring of Elysium', 'Battle_Royale', 'Free', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/cbaafc6f429ace305bb4ead3bff5f73c.png'),
(94, 'PUBG: Battlegrounds', 'Battle_Royale', 'Free', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/3244ef4c2aeb17c03511c93cb43caef0.png'),
(95, 'Totally Accurate Battlegrounds', 'Battle_Royale', 'Free', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/24195119088b213cafd968936c1a10ff.png'),
(96, 'The Culling: Origins', 'Battle_Royale', '5.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/e64caaff8e5c0399ab73c9fe1e37bd79.png'),
(97, 'DiRT Rally 2.0', 'Racing', '34.12', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/a18d897b505e98af6fb846125dd80314.png'),
(98, 'Forza Horizon 4', 'Racing', '59.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/0a6b81775eca5ee27b72deef7972375a.png'),
(99, 'The Crew 2', 'Racing', '49.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/44ee138c3a477dd10e20cfc5d1402213.png'),
(100, 'Lego 2K Drive', 'Racing', '54.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/8c502e31ee5f4c0072c7056fff2cb88d.png'),
(101, 'Hot Wheels Unleashed', 'Racing', '49.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/d7c93750864d8558583e2fc46620a0d2.png'),
(102, 'Crash Team Racing Nitro-Fueled', 'Racing', '39.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/c00193e70e8e27e70601b26161b4ae86.png'),
(103, 'Gran Turismo 7', 'Racing', '49.69', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/ad6a815433ea7213dabae147ba4fe735.jpg'),
(104, 'Disney Speedstorm', 'Racing', 'Free', 'All', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/83c41f86c7b3401256fe0bd81fbc0d16.jpg'),
(105, 'Overcooked 2', 'Party', '6.24', 'All', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/c147cc04c5ac79a251a3f999dcb910ae.jpg'),
(106, 'Keep Talking and Nobody Explodes', 'Party', '14.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/906de7407507c0dfe2861199e00c9bb1.jpg'),
(107, 'Super Mario Party', 'Party', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/69f8728f583768304e92fb3136f1c03e.png'),
(108, 'Tricky Towers', 'Party', '5.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/5317b6799188715d5e00a638a4278901.png'),
(109, 'Party Golf', 'Party', '15.00', 'Switch', 'https://cdn.akamai.steamstatic.com/steam/apps/538550/header.jpg?t=1579061284'),
(110, 'Among Us', 'Party', '4.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/09246ffb824ca2c5bc47a64cb302d3cb.jpg'),
(111, 'Clubhouse Games: 51 Worldwide Classics', 'Party', '39.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/9b0bf79013ee299334866361ab61e58b.jpg'),
(112, 'Rust', 'Survival', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/35f6e50ae1b299f6efdf99b6490b712c.jpg'),
(113, 'The Forest', 'Survival', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/b98ee86215125aa5b01966e7891a4cf7.jpg'),
(114, 'ARK: Survival Evolved', 'Survival', '19.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/ac2efaf41fa504d3b2f8afd350a98e87.png'),
(115, 'Valheim', 'Survival', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/72c1ee98367d8bb9c8fa4cd5ee2dc743.jpg'),
(116, 'Dying Light', 'Survival', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/795ced384fdcad15310b46841a6f145c.jpg'),
(117, 'Subnautica', 'Survival', '29.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/50896c8a37922749110dae272e7a345b.jpg'),
(118, 'Dont Starve Together', 'Survival', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/433206a957cc9824ced79a5060e7918c.jpg'),
(119, 'We Happy Few', 'Survival', '59.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/1dd0a697c2c176adef4fa293869a93f0.jpg'),
(120, 'Dragon Ball Fighter Z', 'Fighting', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/a213ed23c193d414334a64ddf47c9f27.jpg'),
(121, 'Super Smash Bros. Ultimate', 'Fighting', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/ee146ee8bd7fff25dfb98a683f8d1f32.jpg'),
(122, 'Guilty Gear -Strive-', 'Fighting', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/b9308e657ab39f0059e6207c2fbf6aee.jpg'),
(123, 'EA Sports UFC 4', 'Fighting', '59.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/3cdad14c5d7c1e1fa307772a876b42d7.png'),
(124, 'Dead or Alive 6', 'Fighting', '59.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/e7634a10a3e860b16e2cd0276487b556.jpg'),
(125, 'Dynasty Warriors 9 Empires', 'Fighting', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/4f872699348565136da8861d0f74b60c.jpg'),
(126, 'Red Dead Redemption 2', 'Open_World', '59.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/3940304b536796dcc176aa83203a3955.jpg'),
(127, 'The Legend of Zelda: Breath of the Wild', 'Open_World', '59.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/2a4446737f5a050a092c188787cc69b7.png'),
(128, 'No Mans Sky', 'Open_World', '59.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/c8d77146931324f4001237a93fe4ba8c.jpg'),
(129, 'Asassins Creed Valhalla', 'Open_World', '59.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/1961aadca386eb5de3a75111cdffcbed.png'),
(130, 'Death Stranding', 'Open_World', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/cbccf404f52466bc599c6fb168c1f9f8.png'),
(131, 'Watch Dogs Legion', 'Open_World', '49.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/eb216fc2f6911b5e281aad1a649d6779.jpg'),
(132, 'Far Cry 6', 'Open_World', '59.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/2707b2f06a3967105746389278bdf01d.jpg'),
(133, 'Saints Row', 'Open_World', '59.99', 'Most', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/3d743bc22e26ee062bbfda88c13b24fa.jpg'),
(134, 'Atomic Heart', 'Open_World', '39.59', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/ea254c183d177079aaef7bf839f1baf7.jpg'),
(135, 'Animal Crossing: New Horizons', 'Retro', '24.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/078d2a1275f0d53cda67d165440aeb50.jpg'),
(136, 'Spelunky 2', 'Retro', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/37ab3008887838d2f78a9c120b13795d.jpg'),
(137, 'XIII', 'Retro', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/7f7e1bb4edc6692b0f4ef868906a908c.jpg'),
(138, 'Helltaker', 'Retro', '9.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/be6e7b1db161c6bf9709b00a99e030d4.png'),
(139, 'Mega Man Zero/ZX Legacy Collection', 'Retro', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/21fb1a7c03c0799315be568939689552.jpg'),
(140, 'Crash Bandicoot 4: Its About Time', 'Retro', '59.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/e85a203e8ca146102f5cd7ecff912580.jpg'),
(141, 'Empire of Sin', 'Retro', '39.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/005ab8e6f97c33fc9dbb11a11a852d93.jpg'),
(142, 'Rock Band Rivals Bundle', 'Music', '39.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/05b060970d48be5f5bf1f98219bb0b1c.jpg'),
(143, 'Just Dance 2022', 'Music', '49.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/c36f018e2e4ff87b8086cc196184ec8b.jpg'),
(144, 'Guitar Hero Live', 'Music', '49.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/8415e556d9e95d7a24e1ec44bb7dd9fa.jpg'),
(145, 'Pistol Whip', 'Music', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/0c349dc0ebd17e7cd687ca5e4244a2ba.jpg'),
(146, 'Geometry Dash', 'Music', '3.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/b06cd72ed257978b3460f68d5f7d7903/32/256x256.png'),
(147, 'Trombone Champ', 'Music', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/27cc5a949cc7a90902c3db2003de94ae.png'),
(148, 'Metal: Hellsinger', 'Music', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/5bb69d76d06452cb73cff826df24fa07.jpg'),
(149, 'Rocksmith 2014 Remastered', 'Music', '29.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/7b08ca32a87b841eb66ef0ff441863de.jpg'),
(150, 'Sayonara Wild Hearts', 'Music', '12.99', 'Switch', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/919abe568c11df749690534a9e225785.jpg'),
(151, 'Destiny 2', 'Shooter', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/5e93ee9a764cf2326a92f61f8fefdb1f.jpg'),
(152, 'Overwatch 2', 'Shooter', 'Free', 'Battle.net', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/bb6f2c2da3c9db7c5a6c74b15acc639d.jpg'),
(153, 'Doom Eternal', 'Shooter', '9.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/f4b9fe69627367c32498f4fd02de118c.jpg'),
(154, 'Back 4 Blood', 'Shooter', '59.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/a81458a100984a00515a06d4a1317c11.jpg'),
(155, 'Resident Evil Village', 'Shooter', '19.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/0bf02f0c56c8a022d332f2ac73b4bc2f.jpg'),
(156, 'Deathloop', 'Shooter', '14.99', 'Steam', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/1a8f0c640b227d83584d28833bed0e8f.jpg'),
(157, 'Battlefield 2042', 'Shooter', '59.99', 'XBox', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/5a90430f2ad02f07b2029e4e285b8a64.jpg'),
(158, 'Tom Clancys Rainbow Six Siege', 'Shooter', '9.99', 'PlayStation', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/thumb/6df0f11ac980d2c59e5b4dab6a8e7611.jpg'),
(159, 'Valorant', 'Shooter', 'Free', 'Riot Games', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/icon_thumb/9e82757e9a1c12cb710ad680db11f6f1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
