#!/usr/bin/env bash

shopt -s globstar

whiz=100

for distfile in $(ls ./etc/**/*.dist); do
    f=$(dirname $distfile)/$(basename $distfile .dist)
    echo cp $distfile $f
    cp $distfile $f
    perl -pi -e 's/127.0.0.1;3306;acore;acore;/127.0.0.1;4306;acore;acore;/g' $f
    perl -pi -e 's/^DataDir(\s*)=/DataDir = ".\/data" #/g' $f
    perl -pi -e 's/^SOAP.Enabled(\s*)=/SOAP.Enabled = 1 #/g' $f

    perl -pi -e "s/^Rate.XP.Kill(\s*)=/Rate.XP.Kill = $whiz #/g" $f
    perl -pi -e "s/^Rate.XP.Quest(\s*)=/Rate.XP.Quest = $whiz #/g" $f
    perl -pi -e "s/^Rate.XP.Quest.DF(\s*)=/Rate.XP.Quest.DF = $whiz #/g" $f
    perl -pi -e "s/^Rate.XP.Explore(\s*)=/Rate.XP.Explore = $whiz #/g" $f
    perl -pi -e "s/^Rate.XP.Pet(\s*)=/Rate.XP.Pet = $whiz #/g" $f

    perl -pi -e "s/^Rate.Honor(\s*)=/Rate.Honor = $whiz #/g" $f
    perl -pi -e "s/^Rate.ArenaPoints(\s*)=/Rate.ArenaPoints = $whiz #/g" $f

    perl -pi -e "s/^Rate.Drop.Money(\s*)=/Rate.Drop.Money = $whiz #/g" $f

    perl -pi -e 's/^NpcBot.MaxBots(\s*)=/NpcBot.MaxBots = 39 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Raid(\s*)=/NpcBot.Enable.Raid = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.BG(\s*)=/NpcBot.Enable.BG = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Arena(\s*)=/NpcBot.Enable.Arena = 1 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.Continents.Count(\s*)=/NpcBot.WanderingBots.Continents.Count = 10 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.BG.Enable(\s*)=/NpcBot.WanderingBots.BG.Enable = 1 #/g' $f

    perl -pi -e 's/^AOELoot.MailEnable(\s*)=/AOELoot.MailEnable = 0 #/g' $f
done

mods='
https://github.com/azerothcore/mod-1v1-arena
https://github.com/azerothcore/mod-ah-bot
https://github.com/azerothcore/mod-aoe-loot
https://github.com/azerothcore/mod-better-item-reloading
https://github.com/azerothcore/mod-eluna
https://github.com/azerothcore/mod-keep-out
https://github.com/azerothcore/mod-learn-highest-talent
https://github.com/azerothcore/mod-learn-spells
https://github.com/azerothcore/mod-random-enchants
https://github.com/azerothcore/mod-skip-dk-starting-area
https://github.com/azerothcore/mod-solo-lfg
https://github.com/trickerer/mod-autobalance
'

# node test.js 'account create hanmeimei helloworld'
# node test.js 'account set gmlevel hanmeimei 3 -1'
# ('a'..'z').to_a.sample(12).join
