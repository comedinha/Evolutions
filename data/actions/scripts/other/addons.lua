function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
	if(itemEx.itemid == 18521) then
		if(getPlayerStorageValue(cid, 10057) == 1) then
			doPlayerSendCancel(cid, "You already have been recived with the first crystal warlord addon.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddOutfit(cid, 512, 1)
            doPlayerAddOutfit(cid, 513, 1)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the first crystal warlord addon.")
			setPlayerStorageValue(cid,10057,1)
		end
	elseif(itemEx.itemid == 18522) then
		if(getPlayerStorageValue(cid, 10058) == 1) then
			doPlayerSendCancel(cid, "You already have been recived with the second crystal warlord addon.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddOutfit(cid, 512, 2)
            doPlayerAddOutfit(cid, 513, 2)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the second crystal warlord addon.")
			setPlayerStorageValue(cid,10058,1)
		end
		elseif(itemEx.itemid == 18518) then
		if(getPlayerStorageValue(cid, 10059) == 1) then
			doPlayerSendCancel(cid, "You already have been recived with the first soil guardian addon.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddOutfit(cid, 516, 1)
            doPlayerAddOutfit(cid, 514, 1)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the first soil guardian addon.")
			setPlayerStorageValue(cid,10059,1)
		end
		elseif(itemEx.itemid == 18519) then
		if(getPlayerStorageValue(cid, 10060) == 1) then
			doPlayerSendCancel(cid, "You already have been recived with the second soil guardian addon.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		else
			doPlayerAddOutfit(cid, 516, 2)
            doPlayerAddOutfit(cid, 514, 2)
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the second soil guardian addon.")
			setPlayerStorageValue(cid,10060,1)
		end
		return true
	end
end