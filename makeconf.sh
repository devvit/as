#!/usr/bin/env bash

shopt -s globstar

prize=100
power=0.5
winitems='\"49426:300 47241:300 45624:300 40753:300 40752:300 29434:300\"'
tieitems='\"49426:200 47241:200 45624:200 40753:200 40752:200 29434:200\"'
defitems='\"49426:100 47241:100 45624:100 40753:100 40752:100 29434:100\"'

for distfile in $(ls ./etc/**/*.dist); do
    f=$(dirname $distfile)/$(basename $distfile .dist)
    echo cp $distfile $f
    cp $distfile $f
    perl -pi -e 's/127.0.0.1;3306/127.0.0.1;4306/g' $f
    perl -pi -e 's/^DataDir(\s*)=/DataDir = ".\/data" #/g' $f
    perl -pi -e 's/^SOAP.Enabled(\s*)=/SOAP.Enabled = 1 #/g' $f
    perl -pi -e 's/^EnablePlayerSettings(\s*)=/EnablePlayerSettings = 1 #/g' $f
    # perl -pi -e 's/^Expansion(\s*)=/Expansion = 0 #/g' $f
    # perl -pi -e 's/^MaxPlayerLevel(\s*)=/MaxPlayerLevel = 60 #/g' $f

    # perl -pi -e "s/^Rate.XP.Kill(\s*)=/Rate.XP.Kill = $prize #/g" $f
    # perl -pi -e "s/^Rate.XP.Quest(\s*)=/Rate.XP.Quest = $prize #/g" $f
    # perl -pi -e "s/^Rate.XP.Quest.DF(\s*)=/Rate.XP.Quest.DF = $prize #/g" $f
    # perl -pi -e "s/^Rate.XP.Explore(\s*)=/Rate.XP.Explore = $prize #/g" $f
    # perl -pi -e "s/^Rate.XP.Pet(\s*)=/Rate.XP.Pet = $prize #/g" $f
    perl -pi -e "s/^Rate.Honor(\s*)=/Rate.Honor = $prize #/g" $f
    perl -pi -e "s/^Rate.ArenaPoints(\s*)=/Rate.ArenaPoints = $prize #/g" $f
    perl -pi -e "s/^Rate.Drop.Money(\s*)=/Rate.Drop.Money = $prize #/g" $f
    # perl -pi -e "s/^Rate.Drop.Item.ReferencedAmount(\s*)=/Rate.Drop.Item.ReferencedAmount = $prize #/g" $f
    # perl -pi -e "s/^Rate.Drop.Item.GroupAmount(\s*)=/Rate.Drop.Item.GroupAmount = $prize #/g" $f

    perl -pi -e 's/^NpcBot.MaxBots(\s*)=/NpcBot.MaxBots = 39 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Raid(\s*)=/NpcBot.Enable.Raid = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.BG(\s*)=/NpcBot.Enable.BG = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Enable.Arena(\s*)=/NpcBot.Enable.Arena = 1 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.Continents.Count(\s*)=/NpcBot.WanderingBots.Continents.Count = 0 #/g' $f
    perl -pi -e 's/^NpcBot.WanderingBots.BG.Enable(\s*)=/NpcBot.WanderingBots.BG.Enable = 1 #/g' $f
    perl -pi -e 's/^NpcBot.Botgiver.FilterRaces(\s*)=/NpcBot.Botgiver.FilterRaces = 1 #/g' $f
    perl -pi -e 's/^NpcBot.HealTargetIconMask(\s*)=/NpcBot.HealTargetIconMask = 1 #/g' $f

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

    # perl -pi -e "s/^AutoBalance.StatModifier.Global(\s*)=/AutoBalance.StatModifier.Global = $power #/g" $f
    # perl -pi -e "s/^AutoBalance.StatModifier.Boss.Global(\s*)=/AutoBalance.StatModifier.Boss.Global = $power #/g" $f
    # perl -pi -e "s/^AutoBalance.StatModifierHeroic.Global(\s*)=/AutoBalance.StatModifierHeroic.Global = $power #/g" $f
    # perl -pi -e "s/^AutoBalance.StatModifierHeroic.Boss.Global(\s*)=/AutoBalance.StatModifierHeroic.Boss.Global = $power #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaid.Global(\s*)=/AutoBalance.StatModifierRaid.Global = $power #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaid.Boss.Global(\s*)=/AutoBalance.StatModifierRaid.Boss.Global = $power #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaidHeroic.Global(\s*)=/AutoBalance.StatModifierRaidHeroic.Global = $power #/g" $f
    perl -pi -e "s/^AutoBalance.StatModifierRaidHeroic.Boss.Global(\s*)=/AutoBalance.StatModifierRaidHeroic.Boss.Global = $power #/g" $f

    perl -pi -e 's/^ChallengeModes.Enable(\s*)=/ChallengeModes.Enable = 1 #/g' $f
    perl -pi -e 's/^Hardcore.Enable(\s*)=/Hardcore.Enable = 1 #/g' $f
    perl -pi -e 's/^SemiHardcore.Enable(\s*)=/SemiHardcore.Enable = 0 #/g' $f
    perl -pi -e 's/^SelfCrafted.Enable(\s*)=/SelfCrafted.Enable = 0 #/g' $f
    perl -pi -e 's/^ItemQualityLevel.Enable(\s*)=/ItemQualityLevel.Enable = 0 #/g' $f
    perl -pi -e 's/^SlowXpGain.Enable(\s*)=/SlowXpGain.Enable = 0 #/g' $f
    perl -pi -e 's/^VerySlowXpGain.Enable(\s*)=/VerySlowXpGain.Enable = 0 #/g' $f
    perl -pi -e 's/^QuestXpOnly.Enable(\s*)=/QuestXpOnly.Enable = 0 #/g' $f
    perl -pi -e 's/^IronMan.Enable(\s*)=/IronMan.Enable = 0 #/g' $f

    perl -pi -e 's/^MaxXPRate(\s*)=/MaxXPRate = 100 #/g' $f
done

echo 'LearnSpells.OnFirstLogin = 0' >>./etc/worldserver.conf
echo 'NpcBot.HealTargetIconsMask = 1' >>./etc/worldserver.conf

mods='
https://github.com/ZhengPeiRu21/mod-challenge-modes
https://github.com/azerothcore/mod-1v1-arena
https://github.com/azerothcore/mod-ah-bot
https://github.com/azerothcore/mod-aoe-loot
https://github.com/azerothcore/mod-better-item-reloading
https://github.com/azerothcore/mod-bg-item-reward
https://github.com/azerothcore/mod-cta-switch
https://github.com/azerothcore/mod-eluna
https://github.com/azerothcore/mod-instance-reset
https://github.com/azerothcore/mod-keep-out
https://github.com/azerothcore/mod-learn-highest-talent
https://github.com/azerothcore/mod-learn-spells
https://github.com/azerothcore/mod-npc-free-professions
https://github.com/azerothcore/mod-random-enchants
https://github.com/azerothcore/mod-skip-dk-starting-area
https://github.com/azerothcore/mod-solo-lfg
https://github.com/trickerer/mod-autobalance
'

# 199999 profession
# 70000 hire
# 300000 reset

# Hyjal
# run for i=70800,70899 do SendChatMessage('.npcb spawn '..i) end
# run for i=70900,70999 do SendChatMessage('.npcb spawn '..i) end
# run for i=71000,71099 do SendChatMessage('.npcb spawn '..i) end
# run for i=71100,71199 do SendChatMessage('.npcb spawn '..i) end
# run for i=71200,71299 do SendChatMessage('.npcb spawn '..i) end
# run for i=71300,71399 do SendChatMessage('.npcb spawn '..i) end
# run for i=71400,71499 do SendChatMessage('.npcb spawn '..i) end
# run for i=71500,71599 do SendChatMessage('.npcb spawn '..i) end
# run for i=71600,71699 do SendChatMessage('.npcb spawn '..i) end
# run for i=71700,71799 do SendChatMessage('.npcb spawn '..i) end
# run for i=71800,71899 do SendChatMessage('.npcb spawn '..i) end
# run for i=71900,71999 do SendChatMessage('.npcb spawn '..i) end

# ahbotoptions minitems 2 20000
# ahbotoptions maxitems 2 20000
# ahbotoptions percentages 2 0 15 15 20 0 0 0 0 15 15 20 0 0 0

# gilneas
# -987.06799316406  1579.9499511719  53.671298980713
# gps [Player: Playa (GUID Full: 0x0000000000000001 Type: Player Low: 1) (Account: 1) X: -987.068 Y: 1579.95 Z: 53.6713
#  Map: 0 (东 部王国) Area: 2397 (无尽之海) Zone: 267 (希尔斯布莱德丘陵) Selected:  (GUID Full: 0x0000000000000000 Type: None Low: 0)]
# -1209.2574462891  1388.7039794922  54.492282867432
# -1022.7560424805  1398.6380615234  54.642925262451
