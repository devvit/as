//

const fs = require('fs');

const itemIDs = JSON.parse(fs.readFileSync('./test.json', 'utf8'));
const sqls = [
  'DROP TABLE IF EXISTS `mod_auctionhousebot_pro_items`;',
  'CREATE TABLE IF NOT EXISTS `mod_auctionhousebot_pro_items` (`Item` int unsigned NOT NULL DEFAULT 0);',
  'INSERT INTO `mod_auctionhousebot_pro_items` (`Item`) VALUES ',
];
itemIDs.forEach((itemID) => sqls.push(`(${itemID}),`));
sqls.push('(2302);');
fs.writeFileSync('./custom.sql', sqls.join('\n'), 'utf8');
