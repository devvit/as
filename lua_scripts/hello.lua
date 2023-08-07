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

	-- https://trinitycore.atlassian.net/wiki/spaces/tc/pages/2130229/ItemExtendedCost
	VendorRemoveAllItems(30885)
	AddVendorItem(30885, 42297, 1, 1, 2588)
	AddVendorItem(30885, 42331, 1, 1, 2588)
	AddVendorItem(30885, 42332, 1, 1, 2588)
	AddVendorItem(30885, 51393, 1, 1, 2588)
end

RegisterPlayerEvent(24, onEmote)
-- RegisterPlayerEvent(29, onEquip)
RegisterPlayerEvent(42, reloadElunaEngine)
