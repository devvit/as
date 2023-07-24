#!/usr/bin/env bash

shopt -s globstar

zoom=100

for distfile in $(ls ./etc/**/*.dist); do
    f=$(dirname $distfile)/$(basename $distfile .dist)
    echo cp $distfile $f
    cp $distfile $f
    perl -pi -e 's/127.0.0.1;3306;acore;acore;/127.0.0.1;4306;acore;acore;/g' $f
    perl -pi -e 's/^DataDir(\s*)=/DataDir = ".\/data" #/g' $f
    perl -pi -e 's/^SOAP.Enabled(\s*)=/SOAP.Enabled = 1 #/g' $f

    perl -pi -e "s/^Rate.XP.Kill(\s*)=/Rate.XP.Kill = $zoom #/g" $f
    perl -pi -e "s/^Rate.XP.Quest(\s*)=/Rate.XP.Quest = $zoom #/g" $f
    perl -pi -e "s/^Rate.XP.Quest.DF(\s*)=/Rate.XP.Quest.DF = $zoom #/g" $f
    perl -pi -e "s/^Rate.XP.Explore(\s*)=/Rate.XP.Explore = $zoom #/g" $f
    perl -pi -e "s/^Rate.XP.Pet(\s*)=/Rate.XP.Pet = $zoom #/g" $f

    perl -pi -e "s/^Rate.Honor(\s*)=/Rate.Honor = $zoom #/g" $f
    perl -pi -e "s/^Rate.ArenaPoints(\s*)=/Rate.ArenaPoints = $zoom #/g" $f

    perl -pi -e "s/^Rate.Drop.Money(\s*)=/Rate.Drop.Money = $zoom #/g" $f

    perl -pi -e 's/^NpcBot.MaxBots(\s*)=/NpcBot.MaxBots = 39 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Raid(\s*)=/NpcBot.Enable.Raid = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.BG(\s*)=/NpcBot.Enable.BG = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Arena(\s*)=/NpcBot.Enable.Arena = 1 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.Continents.Count(\s*)=/NpcBot.WanderingBots.Continents.Count = 99 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.BG.Enable(\s*)=/NpcBot.WanderingBots.BG.Enable = 1 #/g' $f

    perl -pi -e 's/^AOELoot.MailEnable(\s*)=/AOELoot.MailEnable = 0 #/g' $f

    # perl -pi -e 's/^AuctionHouseBot.DEBUG(\s*)=/AuctionHouseBot.DEBUG = 1 #/g' $f
    # perl -pi -e 's/^AuctionHouseBot.DEBUG_FILTERS(\s*)=/AuctionHouseBot.DEBUG_FILTERS = 1 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.EnableSeller(\s*)=/AuctionHouseBot.EnableSeller = 1 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.EnableBuyer(\s*)=/AuctionHouseBot.EnableBuyer = 0 #/g' $f
    # perl -pi -e 's/^AuctionHouseBot.UseBuyPriceForSeller(\s*)=/AuctionHouseBot.UseBuyPriceForSeller = 0 #/g' $f
    # perl -pi -e 's/^AuctionHouseBot.UseBuyPriceForBuyer(\s*)=/AuctionHouseBot.UseBuyPriceForBuyer = 0 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.Account(\s*)=/AuctionHouseBot.Account = 3 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.GUID(\s*)=/AuctionHouseBot.GUID = 3 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.ItemsPerCycle(\s*)=/AuctionHouseBot.ItemsPerCycle = 2000 #/g' $f
done

echo 'LearnSpells.OnFirstLogin = 0' >>./etc/worldserver.conf

mods='
https://github.com/azerothcore/mod-1v1-arena
https://github.com/azerothcore/mod-ah-bot
https://github.com/azerothcore/mod-aoe-loot
https://github.com/azerothcore/mod-better-item-reloading
https://github.com/azerothcore/mod-eluna
https://github.com/azerothcore/mod-item-level-up
https://github.com/azerothcore/mod-keep-out
https://github.com/azerothcore/mod-learn-highest-talent
https://github.com/azerothcore/mod-learn-spells
https://github.com/azerothcore/mod-promotion-azerothcore
https://github.com/azerothcore/mod-random-enchants
https://github.com/azerothcore/mod-skip-dk-starting-area
https://github.com/azerothcore/mod-solo-lfg
https://github.com/trickerer/mod-autobalance
'

# node test.js 'account create hanmeimei helloworld'
# node test.js 'account set gmlevel hanmeimei 3 -1'
# ('a'..'z').to_a.sample(12).join

# ahbotoptions minitems 2 20000
# ahbotoptions maxitems 2 20000
# ahbotoptions percentages 2 0 15 5 15 15 0 0 0 15 5 15 15 0 0
