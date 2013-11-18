function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid, 11550) == -1 then
	if math.random(100) <= 10 then
		doPlayerAddItem(cid, 16101, 1)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations, you have won a Premium Scroll.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You failed to win their prize.")
	end
	setPlayerStorageValue(cid, 11550, 1)
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Have you ever tried to get your prize.")
	end
	return true
end
