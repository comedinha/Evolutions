function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	newPosition  = {x=256, y=137, z=8}
	winner = player:getStorageValue(8585)
	if item.itemid == 1406 and winner == 1 then
		player:teleportTo(newPosition, true)
		Position(newPosition):sendMagicEffect(CONST_ME_HITAREA)
		player:setStorageValue(8585, -1)
		end
	return true
end