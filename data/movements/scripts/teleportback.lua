function onStepIn(cid, item, position, fromPosition)
	local teleport = {
		action = item.actionid,
		[18000] = {x=100, y=40, z=6}
	}

	if(item.actionid == teleport.action) then
		if(not isPlayer(cid)) then
			doTeleportThing(cid, fromPosition, false)
			return true
		end
	
		if(getPlayerStorageValue(cid, teleport.action) == 1) then
			doTeleportThing(cid, teleport[item.actionid])
			setPlayerStorageValue(cid,teleport.action,-1)
			else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você ainda não pode voltar por aqui!")
			doTeleportThing(cid, fromPosition, false)
		end
		return true
	end
end
