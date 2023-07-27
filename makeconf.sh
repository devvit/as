#!/usr/bin/env bash

shopt -s globstar

pick=100
hard=1
winitems='\"49426:300 47241:300 45624:300 40753:300 40752:300 29434:300\"'
tieitems='\"49426:200 47241:200 45624:200 40753:200 40752:200 29434:200\"'
defitems='\"49426:100 47241:100 45624:100 40753:100 40752:100 29434:100\"'

for distfile in $(ls ./etc/**/*.dist); do
    f=$(dirname $distfile)/$(basename $distfile .dist)
    echo cp $distfile $f
    cp $distfile $f
    perl -pi -e 's/127.0.0.1;3306;acore;acore;/127.0.0.1;4306;acore;acore;/g' $f
    perl -pi -e 's/^DataDir(\s*)=/DataDir = ".\/data" #/g' $f
    perl -pi -e 's/^SOAP.Enabled(\s*)=/SOAP.Enabled = 1 #/g' $f

    perl -pi -e "s/^Rate.XP.Kill(\s*)=/Rate.XP.Kill = $pick #/g" $f
    perl -pi -e "s/^Rate.XP.Quest(\s*)=/Rate.XP.Quest = $pick #/g" $f
    perl -pi -e "s/^Rate.XP.Quest.DF(\s*)=/Rate.XP.Quest.DF = $pick #/g" $f
    perl -pi -e "s/^Rate.XP.Explore(\s*)=/Rate.XP.Explore = $pick #/g" $f
    perl -pi -e "s/^Rate.XP.Pet(\s*)=/Rate.XP.Pet = $pick #/g" $f
    perl -pi -e "s/^Rate.Honor(\s*)=/Rate.Honor = $pick #/g" $f
    perl -pi -e "s/^Rate.ArenaPoints(\s*)=/Rate.ArenaPoints = $pick #/g" $f
    perl -pi -e "s/^Rate.Drop.Money(\s*)=/Rate.Drop.Money = $pick #/g" $f
    # perl -pi -e "s/^Rate.Drop.Item.ReferencedAmount(\s*)=/Rate.Drop.Item.ReferencedAmount = $pick #/g" $f
    # perl -pi -e "s/^Rate.Drop.Item.GroupAmount(\s*)=/Rate.Drop.Item.GroupAmount = $pick #/g" $f

    perl -pi -e 's/^NpcBot.MaxBots(\s*)=/NpcBot.MaxBots = 39 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Raid(\s*)=/NpcBot.Enable.Raid = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.BG(\s*)=/NpcBot.Enable.BG = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Arena(\s*)=/NpcBot.Enable.Arena = 1 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.Continents.Count(\s*)=/NpcBot.WanderingBots.Continents.Count = 200 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.BG.Enable(\s*)=/NpcBot.WanderingBots.BG.Enable = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Botgiver.FilterRaces(\s*)=/NpcBot.Botgiver.FilterRaces = 1 #/g' $f

    perl -pi -e 's/^AOELoot.MailEnable(\s*)=/AOELoot.MailEnable = 0 #/g' $f

    # perl -pi -e 's/^AuctionHouseBot.DEBUG(\s*)=/AuctionHouseBot.DEBUG = 1 #/g' $f
    # perl -pi -e 's/^AuctionHouseBot.DEBUG_FILTERS(\s*)=/AuctionHouseBot.DEBUG_FILTERS = 1 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.EnableSeller(\s*)=/AuctionHouseBot.EnableSeller = 1 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.EnableBuyer(\s*)=/AuctionHouseBot.EnableBuyer = 0 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.Account(\s*)=/AuctionHouseBot.Account = 3 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.GUID(\s*)=/AuctionHouseBot.GUID = 3 #/g' $f
    perl -pi -e 's/^AuctionHouseBot.ItemsPerCycle(\s*)=/AuctionHouseBot.ItemsPerCycle = 2000 #/g' $f

    perl -pi -e 's/^Arena1v1.BlockForbiddenTalents(\s*)=/Arena1v1.BlockForbiddenTalents = 0 #/g' $f

    perl -pi -e 's/^ModBGItemReward.Enable(\s*)=/ModBGItemReward.Enable = 1 #/g' $f
    perl -pi -e "s/^ModBGItemReward.ABWinItems(\s*)=/ModBGItemReward.ABWinItems = $winitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.WSGWinItems(\s*)=/ModBGItemReward.WSGWinItems = $winitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.AVWinItems(\s*)=/ModBGItemReward.AVWinItems = $winitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.ABDefeatItems(\s*)=/ModBGItemReward.ABDefeatItems = $defitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.WSGDefeatItems(\s*)=/ModBGItemReward.WSGDefeatItems = $defitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.AVDefeatItems(\s*)=/ModBGItemReward.AVDefeatItems = $defitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.ABTieItems(\s*)=/ModBGItemReward.ABTieItems = $tieitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.WSGTieItems(\s*)=/ModBGItemReward.WSGTieItems = $tieitems #/g" $f
    perl -pi -e "s/^ModBGItemReward.AVTieItems(\s*)=/ModBGItemReward.AVTieItems = $tieitems #/g" $f

    perl -pi -e 's/^ModCTASwitch.Enable(\s*)=/ModCTASwitch.Enable = 1 #/g' $f

    perl -pi -e "s/^AutoBalance.StatModifier.Global(\s*)=/AutoBalance.StatModifier.Global = $hard #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifier.Boss.Global(\s*)=/AutoBalance.StatModifier.Boss.Global = $hard #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierHeroic.Global(\s*)=/AutoBalance.StatModifierHeroic.Global = $hard #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierHeroic.Boss.Global(\s*)=/AutoBalance.StatModifierHeroic.Boss.Global = $hard #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaid.Global(\s*)=/AutoBalance.StatModifierRaid.Global = $hard #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaid.Boss.Global(\s*)=/AutoBalance.StatModifierRaid.Boss.Global = $hard #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaidHeroic.Global(\s*)=/AutoBalance.StatModifierRaidHeroic.Global = $hard #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaidHeroic.Boss.Global(\s*)=/AutoBalance.StatModifierRaidHeroic.Boss.Global = $hard #/g" $f
done

echo 'LearnSpells.OnFirstLogin = 0' >>./etc/worldserver.conf

mods='
https://github.com/azerothcore/mod-1v1-arena
https://github.com/azerothcore/mod-ah-bot
https://github.com/azerothcore/mod-aoe-loot
https://github.com/azerothcore/mod-better-item-reloading
https://github.com/azerothcore/mod-bg-item-reward
https://github.com/azerothcore/mod-cta-switch
https://github.com/azerothcore/mod-eluna
https://github.com/azerothcore/mod-item-level-up
https://github.com/azerothcore/mod-keep-out
https://github.com/azerothcore/mod-learn-highest-talent
https://github.com/azerothcore/mod-learn-spells
https://github.com/azerothcore/mod-npc-free-professions
https://github.com/azerothcore/mod-promotion-azerothcore
https://github.com/azerothcore/mod-random-enchants
https://github.com/azerothcore/mod-skip-dk-starting-area
https://github.com/azerothcore/mod-solo-lfg
https://github.com/trickerer/mod-autobalance
'

# 100000 promotion
# 199999 profession
# 70000 hire

# node test.js 'account create hanmeimei helloworld'
# node test.js 'account set gmlevel hanmeimei 3 -1'
# ('a'..'z').to_a.sample(12).join

# run for i=70800,70100 do SendChatMessage('.npcb spawn '..i) end # Winterspring
# run for i=70101,70200 do SendChatMessage('.npcb spawn '..i) end # Hyjal
# run for i=70201,70300 do SendChatMessage('.npcb spawn '..i) end
# run for i=70301,70400 do SendChatMessage('.npcb spawn '..i) end
# run for i=70401,70465 do SendChatMessage('.npcb spawn '..i) end

# ahbotoptions minitems 2 20000
# ahbotoptions maxitems 2 20000
# ahbotoptions percentages 2 0 15 5 15 15 0 0 0 15 5 15 15 0 0
