DROP DATABASE IF EXISTS `acore_playerbots`;

CREATE DATABASE `acore_playerbots` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8mb4_general_ci;

GRANT ALL PRIVILEGES ON `acore_playerbots` . * TO 'acore'@'%' WITH GRANT OPTION;
