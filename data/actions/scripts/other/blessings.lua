function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
	if(itemEx.itemid == 11262) then
		if(getPlayerBlessing(cid, 1)) then
			doPlayerSendCancel(cid, "You already have been blessed with the Wisdom of Solitude.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddBlessing(cid, 1)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Wisdom of Solitude.")
		end
	elseif(itemEx.itemid == 11258) then
		if(getPlayerBlessing(cid, 2)) then
			doPlayerSendCancel(cid, "You already have been blessed with the Spark of the Phoenix.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddBlessing(cid, 2)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Spark of the Phoenix.")
		end
	elseif(itemEx.itemid == 11261) then
		if(getPlayerBlessing(cid, 3)) then
			doPlayerSendCancel(cid, "You already have been blessed with the Fire of the Suns.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddBlessing(cid, 3)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Fire of the Suns.")
		end
	elseif(itemEx.itemid == 11260) then
		if(getPlayerBlessing(cid, 4)) then
			doPlayerSendCancel(cid, "You already have been blessed with the Spiritual Shielding.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddBlessing(cid, 4)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Spiritual Shielding.")
		end
	elseif(itemEx.itemid == 11259) then
		if(getPlayerBlessing(cid, 5)) then
			doPlayerSendCancel(cid, "You already have been blessed with the Embrace of Tibia.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddBlessing(cid, 5)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Embrace of Tibia..")
		end
		return true
	end
end