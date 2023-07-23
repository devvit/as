#

mysql -u root -S /tmp/mysql.8 \
    acore_world <../AzerothCore-wotlk-with-NPCBots/modules/mod-skip-dk-starting-area/sql/world/Skip_DK_Script.sql
mysql -u root -S /tmp/mysql.8 \
    acore_world <../AzerothCore-wotlk-with-NPCBots/modules/mod-random-enchants/sql/world/item_enchatment_random_tiers.sql
# mysql -u root -S /tmp/mysql.8 acore_world <custom.sql
