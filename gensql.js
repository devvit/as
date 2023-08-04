//

const fs = require('fs');

const itemIDs = JSON.parse(fs.readFileSync('./test.json', 'utf8'));
const sqls = [
  // 'DELETE FROM `mod_mko_map_lock` WHERE `mapId`=0 AND `zoneID` IN (267);',
  // 'INSERT INTO `mod_mko_map_lock` (`mapId`, `zoneID`, `comment`) VALUES (0, 267, "Gilneas");',
  'DROP TABLE IF EXISTS `mod_auctionhousebot_pro_items`;',
  'CREATE TABLE IF NOT EXISTS `mod_auctionhousebot_pro_items` (`Item` int unsigned NOT NULL DEFAULT 0);',
  'INSERT INTO `mod_auctionhousebot_pro_items` (`Item`) VALUES ',
];
itemIDs.forEach((itemID) => sqls.push(`(${itemID}),`));
sqls.push('(2302);');
fs.writeFileSync('./custom.sql', sqls.join('\n'), 'utf8');
