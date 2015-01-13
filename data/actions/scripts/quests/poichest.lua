function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
   	if item.uid == 5306 then
   		if player:getStorageValue(5310) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a Arcane Staff.")
   			player:addItem(2453, 1)
   			player:setStorageValue(5310, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5307 then
   		if player:getStorageValue(5310) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a Avenger.")
   			player:addItem(6528, 1)
   			player:setStorageValue(5310, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5308 then
   		if player:getStorageValue(5310) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a Arbalest.")
   			player:addItem(5803, 1)
   			player:setStorageValue(5310, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	end
   	return true
end
