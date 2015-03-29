function onUse(player, item, fromPosition, target, toPosition, isHotkey)
   	if item.uid == 5610 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a royal crossbow.")
   			player:addItem(8851, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5611 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a warsinger bow.")
   			player:addItem(8854, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5612 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a spellbook of dark mysteries.")
   			player:addItem(8918, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5613 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a emerald sword.")
   			player:addItem(8930, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5614 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a hellforged axe.")
   			player:addItem(8924, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5615 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a obsidian truncheon.")
   			player:addItem(8928, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5616 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a master archer's armor.")
   			player:addItem(8888, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5617 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a fireborn giant armor.")
   			player:addItem(8881, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 5618 then
   		if player:getStorageValue(5619) == -1 then
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a robe of the underworld.")
   			player:addItem(8890, 1)
   			player:setStorageValue(5619, 1)
   		else
   			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	end
   	return true
end
