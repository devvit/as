--

function reloadElunaEngine(event, player, command)
	if command == "reload scripts" or command == "reloadscripts" then
		ReloadEluna()
	end
end

function testFn(event, player, msg, Type, lang, group)
	player:Say("hello world", 0)
	local item = player:GetEquippedItemBySlot(15)
	local x = {
		208,
		209,
		210,
		211,
		212,
		215,
		216,
		217,
		218,
		219,
		222,
		223,
		224,
		225,
		226,
		229,
		230,
		231,
		232,
		233,
		236,
		237,
		238,
	}
	for i = 0, 10 do
		item:ClearEnchantment(i)
		item:SetEnchantment(x[i + 10], i)
	end
end

RegisterPlayerEvent(20, testFn)
RegisterPlayerEvent(42, reloadElunaEngine)
