function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.actionid >= 42361 and item.actionid <= 42365 and getPlayerStorageValue(cid, 42361) ~= 1 then
		local reward = 0
		if item.actionid == 42361 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 7372, 1)
			doAddContainerItem(reward, 6569, 10)
			doAddContainerItem(reward, 6574, 1)
			doAddContainerItem(reward, 2114, 1)
		elseif item.actionid == 42362 then
			reward = doCreateItemEx(7406,1)
		elseif item.actionid == 42363 then
			reward = doCreateItemEx(7380,1)
		elseif item.actionid == 42364 then
			reward = doCreateItemEx(7392,1)
		elseif item.actionid == 42365 then
			reward = doCreateItemEx(7342,1)
			doAddContainerItem(reward, 7365, 100)
			doAddContainerItem(reward, 7364, 100)
		end
	
		local additem = doPlayerAddItemEx(cid, reward, 0)
		if additem == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You found ' .. getItemName(getThing(reward).itemid) .. '.')
			setPlayerStorageValue(cid, 42361, 1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You do not have enough place in your backpack or lifting, in order to take away this object.')
		end
	elseif item.actionid >= 42371 and item.actionid <= 42375 and getPlayerStorageValue(cid, 42371) ~= 1 then
		local reward = 0
		if item.actionid == 42371 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 7372, 1)
			doAddContainerItem(reward, 6569, 10)
			doAddContainerItem(reward, 6574, 1)
			doAddContainerItem(reward, 7183, 1)
		elseif item.actionid == 42372 then
			reward = doCreateItemEx(7384,1)
		elseif item.actionid == 42373 then
			reward = doCreateItemEx(7389,1)
		elseif item.actionid == 42374 then
			reward = doCreateItemEx(7415,1)
		elseif item.actionid == 42375 then
			reward = doCreateItemEx(7342,1)
			doAddContainerItem(reward, 7365, 100)
			doAddContainerItem(reward, 2547, 100)
			doAddContainerItem(reward, 2547, 100)
			doAddContainerItem(reward, 2311, 50)
			doAddContainerItem(reward, 2304, 50)
			
			
			
		end
		local additem = doPlayerAddItemEx(cid, reward, 0)
		if additem == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You found ' .. getItemName(getThing(reward).itemid) .. '.')
			setPlayerStorageValue(cid, 42371, 1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You do not have enough place in your backpack or lifting, in order to take away this object.')
		end
	elseif item.actionid >= 42381 and item.actionid <= 42385 and getPlayerStorageValue(cid, 42381) ~= 1 then
		local reward = 0
		if item.actionid == 42381 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 7372, 1)
			doAddContainerItem(reward, 6569, 10)
			doAddContainerItem(reward, 6574, 1)
			doAddContainerItem(reward, 6568, 1)
		elseif item.actionid == 42382 then
			reward = doCreateItemEx(7429,1)
		elseif item.actionid == 42383 then
			reward = doCreateItemEx(7434,1)
		elseif item.actionid == 42384 then
			reward = doCreateItemEx(7390,1)
		elseif item.actionid == 42385 then
			reward = doCreateItemEx(7342,1)
			doAddContainerItem(reward, 2273, 50)
			doAddContainerItem(reward, 2268, 50)
			doAddContainerItem(reward, 7443, 1)
			doAddContainerItem(reward, 7440, 1)
			doAddContainerItem(reward, 6529, 100)
		end
		local additem = doPlayerAddItemEx(cid, reward, 0)
		if additem == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You found ' .. getItemName(getThing(reward).itemid) .. '.')
			setPlayerStorageValue(cid, 42381, 1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You do not have enough place in your backpack or lifting, in order to take away this object.')
		end
	end
	return true
end
