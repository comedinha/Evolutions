function onStepIn(cid, item, pos, fromPosition)
	if getPlayerStorageValue(cid, 42309) < 1 then
		for i = 42300, 42309 do
			setPlayerStorageValue(cid, i, 0)
		end
	end
	-- if he did not make full arena 2 he must start from zero
	if getPlayerStorageValue(cid, 42319) < 1 then
		for i = 42310, 42319 do
			setPlayerStorageValue(cid, i, 0)
		end
	end
	-- if he did not make full arena 3 he must start from zero
	if getPlayerStorageValue(cid, 42329) < 1 then
		for i = 42320, 42329 do
			setPlayerStorageValue(cid, i, 0)
		end
	end
	doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE,'You left arena!')
	doTeleportThing(cid, arenaKickPosition, TRUE)
	setGlobalStorageValue(item.actionid-21, 0) -- free room
	setPlayerStorageValue(cid, 42350, os.time()+5) -- time to kick 0
	setPlayerStorageValue(cid, 42352, 0) -- is not in arena
	return TRUE
end
