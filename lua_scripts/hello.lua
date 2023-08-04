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

RegisterPlayerEvent(24, onEmote)
-- RegisterPlayerEvent(29, onEquip)
RegisterPlayerEvent(42, reloadElunaEngine)
