--

function reloadElunaEngine(event, player, command)
	if command == "reload scripts" or command == "reloadscripts" then
		ReloadEluna()
	end
end

function testFn(event, player, item, bag, slot)
	player:Say("hello world", 0)
	local x = player:GetX()
	local y = player:GetY()
	local z = player:GetZ()
	local o = player:GetO()
	player:Say("At " .. x .. " , " .. y .. " , " .. z .. " , " .. o, 0)
end

RegisterPlayerEvent(29, testFn)
RegisterPlayerEvent(42, reloadElunaEngine)
