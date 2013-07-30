function onStepIn(cid, item, position, fromPosition)
	if InitArenaScript == 0 then
		InitArenaScript = 1
		-- make arena rooms free
		for i = 0,9 do
			setGlobalStorageValue(42300+i, 0)
			setGlobalStorageValue(42400+i, 0)
		end
		checkArenaRooms({})
	end
	local arena_room = item.actionid
	local player_arena = getPlayerStorageValue(cid, 42355)
	if getPlayerStorageValue(cid, arena_room+getPlayerStorageValue(cid, 42355)*10-1) == 1 or arena_room+getPlayerStorageValue(cid, 42355)*10-1 == 42299 then
		if getGlobalStorageValue(cid, arena_room) == 0 then
			local monster_uid = getGlobalStorageValue(arena_room+100)
			if monster_uid > 0 then
				if isCreature(monster_uid) == TRUE then
					doRemoveCreature(monster_uid)
				end
			end
			local spawn_pos = getThingPos(arena_room)
			local monster = doCreateMonster(arena_monsters[arena_room+getPlayerStorageValue(cid, 42355)*10], {x=spawn_pos.x-1,y=spawn_pos.y-1,z=spawn_pos.z})
			setGlobalStorageValue(arena_room+100, monster)
			doTeleportThing(cid, spawn_pos, TRUE)
			setGlobalStorageValue(arena_room, cid)
			setGlobalStorageValue(arena_room-1, 0)
			setPlayerStorageValue(cid, 42350, os.time()+arena_room_max_time)
		else
			doTeleportThing(cid, fromPosition, TRUE)
			doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE,getCreatureName(getGlobalStorageValue(cid, arena_room))..' is now in next room. Wait a moment and try again.')
		end
	else
		doTeleportThing(cid, fromPosition, TRUE)
		doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE,'First kill monster!')
	end
	if arena_room == 42300 then
		setPlayerStorageValue(cid, 42351, 0)
		setPlayerStorageValue(cid, 42352, 1)
	end
	return TRUE
end

function checkArenaRooms(param)
	addEvent(checkArenaRooms, 1000, {})
	for i = 42300, 42309 do
		local player = getGlobalStorageValue(i)
		if isPlayer(player) == TRUE then
			local player_storage = getPlayerStorageValue(player, 42350)
			if player_storage <= os.time() then
				doTeleportThing(player, arenaKickPosition, TRUE)
				setPlayerStorageValue(player, 42350, 0)
				setGlobalStorageValue(i, 0)
				doPlayerSendTextMessage(player,MESSAGE_STATUS_CONSOLE_ORANGE,'You have been kicked from arena! You have only ' .. arena_room_max_time .. ' seconds for one room.')
			elseif player_storage - 10 <= os.time() then
				doPlayerSendTextMessage(player,MESSAGE_EVENT_DEFAULT,'You have ' .. player_storage - os.time() .. ' seconds to go to the next room!')
			end
		else
			setGlobalStorageValue(i, 0)
		end
	end
end