-- arena script
InitArenaScript = 0
arena_room_max_time = 240 -- time in seconds for one arena room
arenaKickPosition = {x=199, y=610, z=6} -- position where kick from arena when you leave/you did arena level
arena_monsters = {}
arena_monsters[42300] = 'frostfur' -- first monster from 1 arena
arena_monsters[42301] = 'bloodpaw'
arena_monsters[42302] = 'bovinus'
arena_monsters[42303] = 'achad'
arena_monsters[42304] = 'colerian the barbarian'
arena_monsters[42305] = 'the hairy one'
arena_monsters[42306] = 'axeitus headbanger'
arena_monsters[42307] = 'rocky'
arena_monsters[42308] = 'cursed gladiator'
arena_monsters[42309] = 'orcus the cruel'
arena_monsters[42310] = 'avalanche' -- first monster from 2 arena
arena_monsters[42311] = 'kreebosh the exile'
arena_monsters[42312] = 'the dark dancer'
arena_monsters[42313] = 'the hag'
arena_monsters[42314] = 'slim'
arena_monsters[42315] = 'grimgor guteater'
arena_monsters[42316] = 'drasilla'
arena_monsters[42317] = 'spirit of earth'
arena_monsters[42318] = 'spirit of water'
arena_monsters[42319] = 'spirit of fire'
arena_monsters[42320] = 'webster' -- first monster from 3 arena
arena_monsters[42321] = 'darakan the executioner'
arena_monsters[42322] = 'norgle glacierbeard'
arena_monsters[42323] = 'the pit lord'
arena_monsters[42324] = 'svoren the mad'
arena_monsters[42325] = 'the masked marauder'
arena_monsters[42326] = 'gnorre chyllson'
arena_monsters[42327] = "fallen mooh'tah master ghar"
arena_monsters[42328] = 'deathbringer'
arena_monsters[42329] = 'the obliverator'

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
	if getPlayerStorageValue(cid, arena_room+getPlayerStorageValue(cid, 42355)*10-1) == 1 or arena_room+getPlayerStorageValue(cid, 42355)*10-1 == 42299 then
		if getGlobalStorageValue(cid, arena_room) == -1 or getGlobalStorageValue(cid, arena_room) == 0 then
			local monster_uid = getGlobalStorageValue(arena_room+100)
			if monster_uid > 0 then
				if isCreature(monster_uid) == TRUE then
					doRemoveCreature(monster_uid)
				end
			end
			local spawn_pos = getThingPos(arena_room)
			local monster = doSummonCreature(arena_monsters[arena_room+getPlayerStorageValue(cid, 42355)*10], {x=spawn_pos.x-1,y=spawn_pos.y-1,z=spawn_pos.z})
			setGlobalStorageValue(arena_room+100, monster)
			doTeleportThing(cid, spawn_pos, TRUE)
			setGlobalStorageValue(arena_room, cid)
			setGlobalStorageValue(arena_room-1, 0)
			if getGlobalStorageValue(cid, 42356) == -1 then
				setPlayerStorageValue(cid, 42356, 0)
				setPlayerStorageValue(cid, 42357, 1)
			end
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
