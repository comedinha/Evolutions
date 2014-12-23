function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
newPosition  = {x=256, y=137, z=8} --- pos to prize room
winner = getPlayerStorageValue(cid,8585)
	if item.itemid == 1406 and winner == 1 then
		doTeleportThing(cid, newPosition, TRUE)
		doSendMagicEffect(newPosition, 10)
		setPlayerStorageValue(cid,8585,-1)
		end
	return true
end