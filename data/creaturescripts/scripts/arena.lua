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

function getArenaMonsterIdByName(name)
    name = string.lower(tostring(name))
    for i = 42300, 42329 do
        if tostring(arena_monsters[i]) == name then
            return i
        end
    end
    return 0
end

function onKill(creature, target)
	local room = getArenaMonsterIdByName(getCreatureName(target))
	if room > 0 then
		creature:setStorageValue(room, 1)
		creature:sendTextMessage(MESSAGE_EVENT_DEFAULT, "You can enter next room!")
	end
	return true
end

function onLogin(player)
	-- if he did not make full arena 1 he must start from zero
	if player:getStorageValue(42309) == -1 then
		for i = 42300, 42309 do
			player:setStorageValue(i, 0)
		end
	end
	-- if he did not make full arena 2 he must start from zero
	if player:getStorageValue(42319) == -1 then
		for i = 42310, 42319 do
			player:setStorageValue(i, 0)
		end
	end
	-- if he did not make full arena 3 he must start from zero
	if player:getStorageValue(42329) == -1 then
		for i = 42320, 42329 do
			player:setStorageValue(i, 0)
		end
	end
	if player:getStorageValue(42355) == -1 then
		player:setStorageValue(42355, 0) -- did not arena level
	end
	player:setStorageValue(42350, 0) -- time to kick 0
	player:setStorageValue(42352, 0) -- is not in arena  
	if (Game.getStorageValue(9876) or -1)+3 < os.time() then
		Game.setStorageValue(9876, os.time())
	end
	return true
end
