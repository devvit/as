--

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
	-- https://trinitycore.atlassian.net/wiki/spaces/tc/pages/2130229/ItemExtendedCost
	-- 460 1
	-- 2588 10000
	-- 2403 40000
	-- 2570 50000
	-- 2569 60000
	VendorRemoveAllItems(30885)
	AddVendorItem(30885, 42297, 1, 1, 460)
	AddVendorItem(30885, 42331, 1, 1, 460)
	AddVendorItem(30885, 42332, 1, 1, 460)
	AddVendorItem(30885, 51393, 1, 1, 460)
end

-- RegisterPlayerEvent(24, onEmote)
-- RegisterPlayerEvent(29, onEquip)
RegisterCreatureEvent(30885, 5, onPvPVendorLoaded)
RegisterPlayerEvent(42, reloadElunaEngine)
