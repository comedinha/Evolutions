function onUse(player, item, fromPosition, target, toPosition, isHotkey)
   	if item.uid == 15901 then
   		if player:getStorageValue(50089) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found Solar Axe.")
   			player:addItem(8925, 1)
   			player:setStorageValue(50089, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 15902 then
   		if player:getStorageValue(50091) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a The Devileye.")
   			player:addItem(8852, 1)
   			player:setStorageValue(50091, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 15903 then
   		if player:getStorageValue(50092) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a Infernal bolt.")
   			player:addItem(6529, 1)
   			player:setStorageValue(50092, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
   	elseif item.uid == 15904 then
   		if player:getStorageValue(50093) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a spellscroll of prophecies.")
   			player:addItem(8904, 1)
   			player:setStorageValue(50093, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return true
end