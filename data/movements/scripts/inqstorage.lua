function onStepIn(cid, item, position, fromPosition)
	local piso = {
		action = item.actionid,
		storage = item.actionid +1,
	}
	if(item.actionid == piso.action) then
		if(not isPlayer(cid)) then
			return true
		end
		
		if(getPlayerStorageValue(cid, piso.action) == -1) then
			setPlayerStorageValue(cid,piso.action,1)
			setPlayerStorageValue(cid,piso.storage,1)
		end
		return true
	end
end