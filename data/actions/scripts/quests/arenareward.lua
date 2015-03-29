function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.actionid >= 42361 and item.actionid <= 42365 then
		if player:getStorageValue(42361) ~= 1 then
			if item.actionid == 42361 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a present.')
				local reward = player:addItem(1990, 1)
				reward:addItem(7372, 1)
				reward:addItem(6569, 10)
				reward:addItem(6574, 1)
				reward:addItem(2114, 1)
			elseif item.actionid == 42362 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a blacksteel sword.')
				player:addItem(7406, 1)
			elseif item.actionid == 42363 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a headchopper.')
				player:addItem(7380, 1)
			elseif item.actionid == 42364 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found an orcish maul.')
				player:addItem(7392, 1)
			elseif item.actionid == 42365 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a fur backpack.')
				local reward = player:addItem(7342, 1)
				reward:addItem(7365, 100)
				reward:addItem(7364, 100)
			end
			player:setStorageValue(42361, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.actionid >= 42371 and item.actionid <= 42375 then
		if player:getStorageValue(42371) ~= 1 then
			if item.actionid == 42371 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a present.')
				local reward = player:addItem(1990,1)
				reward:addItem(7372, 1)
				reward:addItem(6569, 10)
				reward:addItem(6574, 1)
				reward:addItem(7183, 1)
			elseif item.actionid == 42372 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a mystic blade.')
				player:addItem(7384,1)
			elseif item.actionid == 42373 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a heroic axe.')
				player:addItem(7389,1)
			elseif item.actionid == 42374 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a cranial basher.')
				player:addItem(7415,1)
			elseif item.actionid == 42375 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a fur backpack.')
				local reward = player:addItem(7342,1)
				reward:addItem(7365, 100)
				reward:addItem(2547, 100)
				reward:addItem(2547, 100)
				reward:addItem(2311, 50)
				reward:addItem(2304, 50)
			end
			player:setStorageValue(42371, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.actionid >= 42381 and item.actionid <= 42385 then
		if player:getStorageValue(42381) ~= 1 then
			if item.actionid == 42381 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a present.')
				local reward = player:addItem(1990, 1)
				reward:addItem(7372, 1)
				reward:addItem(6569, 10)
				reward:addItem(6574, 1)
				reward:addItem(6568, 1)
			elseif item.actionid == 42382 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a blessed sceptre.')
				player:addItem(7429, 1)
			elseif item.actionid == 42383 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a royal axe.')
				player:addItem(7434, 1)
			elseif item.actionid == 42384 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found the justice seeker.')
				player:addItem(7390, 1)
			elseif item.actionid == 42385 then
				player:sendTextMessage(MESSAGE_INFO_DESCR, 'You found a fur backpack.')
				local reward = player:addItem(7342, 1)
				reward:addItem(2273, 50)
				reward:addItem(2268, 50)
				reward:addItem(7443, 1)
				reward:addItem(7440, 1)
				reward:addItem(6529, 100)
			end
			player:setStorageValue(42381, 1)
			player:setStorageValue(42356, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	end
	return true
end
