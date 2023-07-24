--

local PLAYER_EVENT_ON_KILL_CREATURE = 7

local function HelloFn(event, killer, killed)
	killer:SendBroadcastMessage("kill you")
end

-- RegisterPlayerEvent(PLAYER_EVENT_ON_KILL_CREATURE, HelloFn)
