function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 12901 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found demon legs.")
   			doPlayerAddItem(cid,2495,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 12902 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a rainbow shield.")
   			doPlayerAddItem(cid,8905,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 12903 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a royal crossbow.")
   			doPlayerAddItem(cid,8851,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
		end
   	elseif item.uid == 12904 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Spellbook of Dark Mysteries.")
   			doPlayerAddItem(cid,8918,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return 1
end