function onStepIn(cid, item, position, fromPosition)
	OfflineLevel = 8
	if(getPlayerPremiumDays(cid) < 1) then
		doTeleportThing(cid, fromPosition, false)
		return doPlayerSendCancel(cid, "Offline treiner é so para premiums")
	end
	if getPlayerLevel(cid) <= OfflineLevel then
		doTeleportThing(cid, fromPosition, false)
		return doPlayerSendCancel(cid, "O level para passar por aqui e "..OfflineLevel.."")
	end
end
