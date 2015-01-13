function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
   	if item.uid == 12901 then
   		if player:getStorageValue(50090) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found demon legs.")
   			player:addItem(2495, 1)
   			player:setStorageValue(50090, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 12902 then
   		if player:getStorageValue(50090) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a rainbow shield.")
   			player:addItem(8905, 1)
   			player:setStorageValue(50090, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 12903 then
   		if player:getStorageValue(50090) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a thorn spitter.")
   			player:addItem(16111, 1)
   			player:setStorageValue(50090, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
   	elseif item.uid == 12904 then
   		if player:getStorageValue(50090) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a spellbook of ancient arcana.")
   			player:addItem(16112, 1)
   			player:setStorageValue(50090, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
	end
   	return true
end