function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
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
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a thorn spitter.")
   			doPlayerAddItem(cid,16111,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
		end
   	elseif item.uid == 12904 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a spellbook of ancient arcana.")
   			doPlayerAddItem(cid,16112,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return true
end