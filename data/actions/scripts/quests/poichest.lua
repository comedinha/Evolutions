-- annihilator chests
function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 5306 then
   		queststatus = getPlayerStorageValue(cid,5310)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Arcane Staff.")
   			doPlayerAddItem(cid,2453,1)
   			setPlayerStorageValue(cid,5310,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5307 then
   		queststatus = getPlayerStorageValue(cid,5310)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Avenger.")
   			doPlayerAddItem(cid,6528,1)
   			setPlayerStorageValue(cid,5310,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5308 then
   		queststatus = getPlayerStorageValue(cid,5310)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Arbalest.")
   			doPlayerAddItem(cid,5803,1)
   			setPlayerStorageValue(cid,5310,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
