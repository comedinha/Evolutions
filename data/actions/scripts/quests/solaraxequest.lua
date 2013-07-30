function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 15901 then
   		queststatus = getPlayerStorageValue(cid,50089)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found Solar Axe.")
   			doPlayerAddItem(cid,8925,1)
   			setPlayerStorageValue(cid,50089,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 15902 then
   		queststatus = getPlayerStorageValue(cid,50091)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a The Devileye.")
   			doPlayerAddItem(cid,8852,1)
   			setPlayerStorageValue(cid,50091,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 15903 then
   		queststatus = getPlayerStorageValue(cid,50092)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Infernal bolt.")
   			doPlayerAddItem(cid,6529,1)
   			setPlayerStorageValue(cid,50092,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
		end
   	elseif item.uid == 15904 then
   		queststatus = getPlayerStorageValue(cid,50093)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a spellscroll of prophecies.")
   			doPlayerAddItem(cid,8904,1)
   			setPlayerStorageValue(cid,50093,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return 1
end