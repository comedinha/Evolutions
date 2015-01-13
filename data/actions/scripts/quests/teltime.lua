local config = {
    newPos = {x = 330, y = 633, z = 6},
    teleportPos = {x = 160, y = 51, z = 8},
    LeverPos = {x = 159, y = 52, z = 8},
    timeToRemove = 10
}

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	local teleport = getTileItemById(config.teleportPos, 1387)
	local playerPos = player:getPosition()
	if item.itemid == 1945 then
		doCreateTeleport(1387, config.newPos, config.teleportPos)
		config.teleportPos:sendMagicEffect(CONST_ME_TELEPORT)
		playerPos:sendMagicEffect(CONST_ME_GIFT_WRAPS)
		player:say("The teleport has been created!", TALKTYPE_ORANGE_1)
		addEvent(doRemoveTeleport, config.timeToRemove * 1000)
	elseif item.itemid == 1946 then
		player:sendCancelMessage("The teleport was created! If you get in now can only return at the end of the challenge.")
    end
	return true
end

function doRemoveTeleport()
	local teleport = config.teleportPos:getItemById(1387)
	local Lever = config.LeverPos:getItemById(1946)
    if teleport.uid > 0 then
        teleport.uid:remove()
        config.teleportPos:sendMagicEffect(CONST_ME_POFF)
        Lever.uid:transform(1945)
    end
end 