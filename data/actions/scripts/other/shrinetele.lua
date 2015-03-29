local config = {
	topos = {x=98, y=43, z=10},
	level = 30
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.uid == 2133 then
		if isInArray({1, 2, 5, 6}, player:getVocation():getId()) and player:getLevel() >= config.level then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "Welcome to the Shrine, where you can enchant your weapons.")
			player:teleportTo(config.topos, false)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "Only Druids and Sorcerers and level above "..config.level.." can use the Shrines.")
		end
	end
end