//

const fs = require('fs');
const {
  uniqueNamesGenerator,
  adjectives,
  colors,
  animals,
} = require('unique-names-generator');

function random_item(items) {
  return items[Math.floor(Math.random() * items.length)];
}

const customConfig = {
  dictionaries: [adjectives, colors, animals],
  separator: '',
  style: 'capital',
};

function genBots() {
  return uniqueNamesGenerator(customConfig);
}

const a = [];
for (let i = 0; i < 500; i++) {
  const _name = genBots();
  const _class = random_item([1, 2, 3, 4, 5, 6, 7, 8, 9.11]);
  const _race = random_item([1, 2, 3, 4, 5, 6, 7, 8, 10, 11]);
  const _gender = random_item([0, 1]);
  a.push(
    `node test.js ".npcbot createnew ${_name} ${_class} ${_race} ${_gender} 6 4 3 2 4"`
  );
}

fs.writeFileSync('genbot.sh', a.join('\n'), 'utf8');
