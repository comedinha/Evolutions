function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
	if getPlayerStorageValue(cid, 11550) == -1 then
		if math.random(100) <= 3 then
			doPlayerAddItem(cid, 2160, 3)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations, you have won a 3 crystal coins.")
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You failed to win their prize.")
		end
		setPlayerStorageValue(cid, 11550, 1)
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Have you ever tried to get your prize.")
	end
	return true
end
