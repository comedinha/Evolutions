function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(11550) == -1 then
		if math.random(100) <= 3 then
			player:addItem(2160, 3)
			player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations, you have won a 3 crystal coins.")
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You failed to win their prize.")
		end
		player:setStorageValue(11550, 1)
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Have you ever tried to get your prize.")
	end
	return true
end
