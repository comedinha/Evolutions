function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5610 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a royal crossbow.")
   			doPlayerAddItem(cid,8851,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5611 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a warsinger bow.")
   			doPlayerAddItem(cid,8854,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5612 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a spellbook of dark mysteries.")
   			doPlayerAddItem(cid,8918,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5613 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a emerald sword.")
   			doPlayerAddItem(cid,8930,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5614 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a hellforged axe.")
   			doPlayerAddItem(cid,8924,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5615 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a obsidian truncheon.")
   			doPlayerAddItem(cid,8928,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5616 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a master archer's armor.")
   			doPlayerAddItem(cid,8888,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5617 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a fireborn giant armor.")
   			doPlayerAddItem(cid,8881,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5618 then
   		queststatus = getPlayerStorageValue(cid,5619)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a robe of the underworld.")
   			doPlayerAddItem(cid,8890,1)
   			setPlayerStorageValue(cid,5619,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
