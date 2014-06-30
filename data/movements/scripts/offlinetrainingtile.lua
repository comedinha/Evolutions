function onStepIn(cid, item, position, fromPosition)
	OfflineLevel = 8
	if(getPlayerPremiumDays(cid) < 1) then
		doTeleportThing(cid, fromPosition, false)
		return doPlayerSendCancel(cid, "Offline trainer is only for premiuns")
	end
	if getPlayerLevel(cid) <= OfflineLevel then
		doTeleportThing(cid, fromPosition, false)
		return doPlayerSendCancel(cid, "The level to come here is "..OfflineLevel.."")
	end
end
