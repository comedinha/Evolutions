local config = {
    newPos = {x = 330, y = 633, z = 6},
    teleportPos = {x = 160, y = 51, z = 8},
    LeverPos = {x = 159, y = 52, z = 8},
    timeToRemove = 10
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1945 then
		local teleport = Game.createItem(1387, 1, config.teleportPos)
		teleport:setDestination(config.newPos)
		Position(config.teleportPos):sendMagicEffect(CONST_ME_TELEPORT)
		player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
		player:say("The teleport has been created!", TALKTYPE_ORANGE_1)
		addEvent(doRemoveTeltime, config.timeToRemove * 1000)
		item:transform(1946)
	elseif item.itemid == 1946 then
		player:sendCancelMessage("The teleport was created! If you get in now can only return at the end of the challenge.")
    end
	return true
end

function doRemoveTeltime()
	if Tile(config.teleportPos):getItemById(1387):remove() then
		Position(config.teleportPos):sendMagicEffect(CONST_ME_POFF)
	end
	local lever = Tile(config.LeverPos):getItemById(1946)
	if lever then
		lever:transform(1945)
	end
end 