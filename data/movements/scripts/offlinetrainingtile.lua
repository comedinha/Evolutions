function onStepIn(cid, item, position, fromPosition)
	OfflineLevel = getConfigInfo('levelToOffline')
	if getPlayerLevel(cid) <= OfflineLevel then
		doTeleportThing(cid, fromPosition, false)
		return doPlayerSendCancel(cid, "O level para passar por aqui e "..OfflineLevel.."")
	end
end
