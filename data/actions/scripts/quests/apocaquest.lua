function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 17756 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found Spirit cloak.")
   			doPlayerAddItem(cid,8870,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return 1
end