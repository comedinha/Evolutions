function onStepIn(cid, item, position, fromPosition)
	local teleport = {
		back = 18000,
		action = item.actionid,
		[16011] = {x=2254, y=2330, z=5},
		[16012] = {x=2286, y=2329, z=5},
		[16013] = {x=2269, y=2370, z=5},
		[16014] = {x=2304, y=2370, z=5},
		[16015] = {x=2344, y=2330, z=5},
		[16016] = {x=2349, y=2372, z=5}
	}

	if(item.actionid == teleport.action) then
		if(not isPlayer(cid)) then
			doTeleportThing(cid, fromPosition, false)
			return true
		end
	
		if(getPlayerStorageValue(cid, teleport.action) == 1) then
			doTeleportThing(cid, teleport[item.actionid])
			else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você ainda nem chegou nessa parte!")
			doTeleportThing(cid, fromPosition, false)
		end
		return true
	end
end
