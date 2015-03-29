local playerPos = {
	{x = 156, y = 99, z = 10},
	{x = 155, y = 99, z = 10},
	{x = 157, y = 99, z = 10},
	{x = 155, y = 100, z = 10},
	{x = 157, y = 100, z = 10}
}

local newPlayerPos = {x = 199, y = 90, z = 10}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local playersTeleport = {}
	for i, v in ipairs(playerPos) do
	local players = v:getTopCreature().uid or v:getTopCreature()
		if Player(players) == nil then
			return false
		else
			table.insert(playersTeleport, players)
		end
	end
	for i, v in ipairs(playersTeleport) do
		v:teleportTo(newPlayerPos, false)
		player:sendTextMessage(MESSAGE_EVENT_ORANGE, "Good luck!")
	end
	return true
end