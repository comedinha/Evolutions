local playerPosition = {
	{x = 185, y = 86, z = 8},
	{x = 186, y = 86, z = 8},
	{x = 187, y = 86, z = 8},
	{x = 188, y = 86, z = 8}
}
local newPosition = {
	{x = 244, y = 76, z = 14},
	{x = 245, y = 76, z = 14},
	{x = 246, y = 76, z = 14},
	{x = 247, y = 76, z = 14}
}

function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1945 then
		local players = {}
		for _, pos in ipairs(playerPosition) do
			local player = Tile(pos):getTopCreature()
			if player == nil or not player:isPlayer() or player:getLevel() < 100 or player:getStorageValue(30015) ~= -1 then
				Player(cid):sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
				return false
			end
			players[#players+1] = player
		end
		for i, player in ipairs(players) do
			Position(playerPosition[i]):sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(newPosition[i], false)
			player:getPosition():sendMagicEffect(CONST_ME_ENERGYAREA)
		end
		Item(item.uid):transform(1946)
	elseif item.itemid == 1946 then
		Item(item.uid):transform(1945)
	end

	return true
end
