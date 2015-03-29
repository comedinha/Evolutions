function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if itemEx.target == 122 then
		local position = {x = 32172, y = 32439, z = 8}
		player:teleportTo(position, true)
		return true
	end
	return false
end