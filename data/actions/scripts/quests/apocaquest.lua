local playerPos = {
	{x=156,y=99,z=10}, -- Position of player 1
	{x=155,y=99,z=10}, -- Position of player 2
	{x=157,y=99,z=10}, -- Position of player 3
	{x=155,y=100,z=10}, -- Position of player 4
	{x=157,y=100,z=10} -- Position of player 5
}

local newPlayerPos = {x=199,y=90,z=10} -- Positon where the players should get teleported when using the switch

function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
local playersTeleport = {}
	for i, v in ipairs(playerPos) do
	local players = getTopCreature(v).uid or getTopCreature(v)
		if isPlayer(players) ~= TRUE then
			return false
		else
			table.insert(playersTeleport, players)
		end
	end
	for i, v in ipairs(playersTeleport) do
		doTeleportThing(v, newPlayerPos)
		doPlayerSendTextMessage(cid, 19, "Good luck!")
	end
	return true
end