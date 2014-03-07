function onStepIn(cid, item, position, fromPosition)
	local piso = {
		action = item.actionid,
		storage = item.actionid -1000,
	}
	if(item.actionid == piso.action) then
		if(not isPlayer(cid)) then
			return true
		end
		
		if(getPlayerStorageValue(cid, piso.action) == -1) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você descobriu esta área!")
			setPlayerStorageValue(cid,piso.action,1)
			setPlayerStorageValue(cid,piso.storage,1)
			setPlayerStorageValue(cid, 11552, 1)
		end
		return true
	end
end
