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

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1945 then
		local players = {}
		for _, pos in ipairs(playerPosition) do
			local topPlayer = Tile(pos):getTopCreature()
			if topPlayer == nil or not topPlayer:isPlayer() or topPlayer:getLevel() < 100 or topPlayer:getStorageValue(30015) ~= -1 then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
				return false
			end
			players[#players + 1] = topPlayer
		end

		for i, tmpPlayer in ipairs(players) do
			Position(playerPosition[i]):sendMagicEffect(CONST_ME_POFF)
			tmpPlayer:teleportTo(newPosition[i], false)
			tmpPlayer:getPosition():sendMagicEffect(CONST_ME_ENERGYAREA)
		end
		item:transform(1946)
	elseif item.itemid == 1946 then
		item:transform(1945)
	end
	return true
end
