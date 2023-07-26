--

function reloadElunaEngine(event, player, command)
	if command == "reload scripts" or command == "reloadscripts" then
		ReloadEluna()
	end
end

function testFn(event, player, enemy)
	player:Say("combat with : " .. enemy:GetName(), 0)
end

-- RegisterPlayerEvent(9, testFn)
RegisterPlayerEvent(42, reloadElunaEngine)
