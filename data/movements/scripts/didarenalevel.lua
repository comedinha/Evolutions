function onStepIn(cid, item, pos, fromPosition)
	if getPlayerStorageValue(cid, item.actionid+getPlayerStorageValue(cid, 42355)*10-1) == 1 then
		doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE,'You did arena at level '.. getPlayerStorageValue(cid, 42355)+1 ..'! Now you can take your reward.')
		setPlayerStorageValue(cid, 42355, getPlayerStorageValue(cid, 42355)+1) --did arena level X
		setPlayerStorageValue(cid, item.actionid+getPlayerStorageValue(cid, 42355)*10, 1) --did arena level X
		setGlobalStorageValue(item.actionid-1, 0) -- room free
		setPlayerStorageValue(cid, 42350, os.time()+5) -- time to kick 0
		setPlayerStorageValue(cid, 42352, 0) -- is not in arena
		doTeleportThing(cid, arenaKickPosition, TRUE)
	else
		doTeleportThing(cid, fromPosition, TRUE)
		doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE,'First kill monster!')
	end
	return TRUE
end
