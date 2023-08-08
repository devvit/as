--

local npc_pvp = 29548

function reloadElunaEngine(event, player, command)
	if command == "reload scripts" or command == "reloadscripts" then
		ReloadEluna()
	end
end

function onEquip(event, player, item, bag, slot)
	player:Say("hello world", 0)
end

function onEmote(event, player, textEmote, emoteNum, guid)
	local x = player:GetX()
	local y = player:GetY()
	local z = player:GetZ()
	local o = player:GetO()
	local mapid = player:GetMapId()
	player:Say("At " .. mapid .. " , " .. x .. " , " .. y .. " , " .. z .. " , " .. o, 0)
	print("At " .. mapid .. " " .. x .. " " .. y .. " " .. z .. " " .. o)
end

function onPvPVendorLoaded()
	local weapons = {
		42208,
		42227,
		42232,
		42237,
		42242,
		42248,
		42255,
		42260,
		42265,
		42270,
		42275,
		42280,
		42285,
		42290,
		42317,
		42322,
		42327,
		42332,
		42346,
		42352,
		42362,
		42384,
		42390,
		42450,
		42485,
		42490,
		42495,
		42502,
		42513,
		42519,
		42525,
		42531,
		42537,
		42559,
		42564,
		42570,
		44419,
		44420,
	}
	-- https://trinitycore.atlassian.net/wiki/spaces/tc/pages/2130229/ItemExtendedCost
	-- 460 1
	-- 2588 10000
	-- 2403 40000
	-- 2570 50000
	-- 2569 60000
	VendorRemoveAllItems(npc_pvp)
	for _, weapon in pairs(weapons) do
		AddVendorItem(npc_pvp, weapon, 1, 1, 2588)
	end
end

-- RegisterPlayerEvent(24, onEmote)
-- RegisterPlayerEvent(29, onEquip)
RegisterCreatureEvent(npc_pvp, 5, onPvPVendorLoaded)
RegisterPlayerEvent(42, reloadElunaEngine)
