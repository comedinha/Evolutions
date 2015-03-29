-- arena script
InitArenaScript = 0
arena_room_max_time = 240
arenaKickPosition = {x = 199, y = 610, z = 6}
arena_monsters = {}
arena_monsters[42300] = 'frostfur'
arena_monsters[42301] = 'bloodpaw'
arena_monsters[42302] = 'bovinus'
arena_monsters[42303] = 'achad'
arena_monsters[42304] = 'colerian the barbarian'
arena_monsters[42305] = 'the hairy one'
arena_monsters[42306] = 'axeitus headbanger'
arena_monsters[42307] = 'rocky'
arena_monsters[42308] = 'cursed gladiator'
arena_monsters[42309] = 'orcus the cruel'
arena_monsters[42310] = 'avalanche'
arena_monsters[42311] = 'kreebosh the exile'
arena_monsters[42312] = 'the dark dancer'
arena_monsters[42313] = 'the hag'
arena_monsters[42314] = 'slim'
arena_monsters[42315] = 'grimgor guteater'
arena_monsters[42316] = 'drasilla'
arena_monsters[42317] = 'spirit of earth'
arena_monsters[42318] = 'spirit of water'
arena_monsters[42319] = 'spirit of fire'
arena_monsters[42320] = 'webster'
arena_monsters[42321] = 'darakan the executioner'
arena_monsters[42322] = 'norgle glacierbeard'
arena_monsters[42323] = 'the pit lord'
arena_monsters[42324] = 'svoren the mad'
arena_monsters[42325] = 'the masked marauder'
arena_monsters[42326] = 'gnorre chyllson'
arena_monsters[42327] = "fallen mooh'tah master ghar"
arena_monsters[42328] = 'deathbringer'
arena_monsters[42329] = 'the obliverator'

function onStepIn(creature, item, position, fromPosition)
	if InitArenaScript == 0 then
		InitArenaScript = 1
		for i = 0, 9 do
			Game.setStorageValue(42300 + i, 0)
			Game.setStorageValue(42400 + i, 0)
		end
		checkArenaRooms({})
	end
	local arena_room = item.actionid
	if creature:getStorageValue(arena_room + creature:getStorageValue(42355) * 10 - 1) == 1 or arena_room + creature:getStorageValue(42355) * 10 - 1 == 42299 then
		if Game.getStorageValue(arena_room) == -1 or Game.getStorageValue(arena_room) == 0 then
			local monster_uid = (Game.getStorageValue(arena_room + 100) or -1)
			if Creature(monster_uid) then
				Creature(monster_uid):remove()
			end
			local spawn_pos = Item(arena_room):getPosition()
			local monster = Game.createMonster(arena_monsters[arena_room + creature:getStorageValue(42355) * 10], {x = spawn_pos.x - 1, y = spawn_pos.y - 1, z = spawn_pos.z})
			Game.setStorageValue(arena_room + 100, monster)
			creature:teleportTo(spawn_pos, true)
			Game.setStorageValue(arena_room, creature)
			Game.setStorageValue(arena_room - 1, 0)
			if creature:getStorageValue(42356) == -1 then
				creature:setStorageValue(42356, 0)
				creature:setStorageValue(42357, 1)
			end
			creature:setStorageValue(42350, os.time() + arena_room_max_time)
		else
			creature:teleportTo(fromPosition, true)
			creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, getCreatureName(Game.getStorageValue(arena_room)) .." is now in next room. Wait a moment and try again.")
		end
	else
		creature:teleportTo(fromPosition, true)
		creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "First kill monster!")
	end
	if arena_room == 42300 then
		creature:setStorageValue(42351, 0)
		creature:setStorageValue(42352, 1)
	end
end

function checkArenaRooms(param)
	addEvent(checkArenaRooms, 1000, {})
	for i = 42300, 42329 do
		local player = (Game.getStorageValue(i) or -1)
		if isPlayer(player) == TRUE then
			local player_storage = player:getStorageValue(42350)
			if player_storage <= os.time() then
				player:teleportTo(arenaKickPosition, true)
				player:setStorageValue(42350, 0)
				Game.setStorageValue(i, 0)
				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You have been kicked from arena! You have only ".. arena_room_max_time .." seconds for one room.")
			elseif player_storage - 10 <= os.time() then
				player:sendTextMessage(MESSAGE_EVENT_DEFAULT, "You have ".. player_storage - os.time() .." seconds to go to the next room!")
			end
		else
			Game.setStorageValue(i, 0)
		end
	end
end