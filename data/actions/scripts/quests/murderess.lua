function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 17757 then
   		queststatus = getPlayerStorageValue(cid,50077)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found greenwood coat.")
   			doPlayerAddItem(cid,8869,1)
   			setPlayerStorageValue(cid,50077,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return 1
end