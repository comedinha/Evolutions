function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 17956 then
   		queststatus = getPlayerStorageValue(cid,54090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You kill Koshei The Deathless and you have found a Blue Legs.")
   			doPlayerAddItem(cid,7730,1)
   			setPlayerStorageValue(cid,54090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return 1
end