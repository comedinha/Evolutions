function onStepIn(cid, item, position, fromPosition)
	local teleport = {
		back = 18000,
		action = item.actionid,
		[18001] = {x=137, y=49, z=7},
		[18002] = {x=149, y=151, z=7},
		[18003] = {x=84, y=175, z=7},
		[18004] = {x=160, y=167, z=7},
		[18005] = {x=161, y=71, z=7},
		[18006] = {x=48, y=166, z=7},
		[18007] = {x=167, y=43, z=7},
		[18008] = {x=56, y=146, z=7}
	}

	if(item.actionid == teleport.action) then
		if(not isPlayer(cid)) then
			doTeleportThing(cid, fromPosition, false)
			return true
		end
	
		if(getPlayerStorageValue(cid, teleport.action) == 1) then
			doTeleportThing(cid, teleport[item.actionid])
			setPlayerStorageValue(cid,teleport.back,1)
			else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você deve descobrir a área antes de liberar o Fast Travel!")
			doTeleportThing(cid, fromPosition, false)
		end
		return true
	end
end
