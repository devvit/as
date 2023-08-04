--

function reloadElunaEngine(event, player, command)
	if command == "reload scripts" or command == "reloadscripts" then
		ReloadEluna()
	end
end

function testFn(event, player, item, bag, slot)
	-- player:Say("hello world", 0)
	local x = player:GetX()
	local y = player:GetY()
	local z = player:GetZ()
	local o = player:GetO()
	local mapid = player:GetMapId()
	player:Say("At " .. mapid .. " , " .. x .. " , " .. y .. " , " .. z .. " , " .. o, 0)
	print("At " .. x .. " , " .. y .. " , " .. z .. " , " .. o)
	-- local godness = GetPlayerByName("Playa")
	-- player:Say(godness:GetX(), 0)
end

RegisterPlayerEvent(29, testFn)
RegisterPlayerEvent(42, reloadElunaEngine)
