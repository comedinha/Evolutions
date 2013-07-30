function onStepIn(cid, item, position, fromPosition)
	OfflineLevel = getConfigValue('levelToOfflineInBed')
	if getPlayerLevel(cid) <= OfflineLevel then
		doTeleportThing(cid, fromPosition, false)
		return doPlayerSendTextMessage(cid, 23, "O level para passar por aqui e "..OfflineLevel.."")
	end
end