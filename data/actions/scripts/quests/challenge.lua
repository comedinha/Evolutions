 
-- Credits to GrizZm0 for most of the script
-- Credits to Tworn for the cleanArea(), a bit modified by Ispiro
-- Credits to Ispiro for a more easier script to configurate and easier to read.
 
local starting= {x = 330, y = 632, z = 6} -- edit this to the top left sqm of ur annhilator room
local ending= {x = 330, y = 632, z = 7} -- edit this to the bottom right sqm of ur annhilator room
 

local playerPos = { -- oldPositions; positions of players before they get teleported.
	{x = 330, y = 632, z = 6},
}
 
local newPlayerPos = { -- Positions for where players should be teleported, make sure it's in the same order as oldPositions
	{x = 330, y = 632, z = 7},
}
 
local creaturePos = { -- Name and position of monsters to summon.
	{"Ghost Morgaroth", {x = 324, y = 631, z = 7}},
	{"Martes 13", {x = 319, y = 611, z = 7}},
	{"Lavanos", {x = 330, y = 588, z = 7}},
	{"rainbow morgaroth", {x = 300, y = 587, z = 7}},
	{"Yalahari Summoner", {x = 286, y = 619, z = 5}},
	{"King Arthas Apparition", {x = 290, y = 590, z = 5}}
}
 
if(#playerPos ~= #newPlayerPos) then
	error("...")
end
--- Preferably, do not edit anything below this line unless you know exactly what you are doing.
local player = {}
 
function onUse(cid, item, frompos, item2, topos)
	if(item.uid == 5567) then --- change to different item.uid according to ur mapeditor
		if(item.itemid == 1945) then
			for i, pos in ipairs(playerPos) do -- add player id's to table
				player[i] = getTopCreature(pos)
			end
			local ret, players = checkPlayers(cid)
			if(ret) then
				local ret, player = checkLevel(250)
				if(ret) then
					local ret, player = checkStorage(100)
					if(ret) then
						summonCreatures(creaturePos)
						teleportPlayers(2, 10) -- 2 stands for the effect on old pos, 10 for the effect on new pos.
						doTransformItem(item.uid, 1946)
					else
						sendPlayersText(Hei, getPlayerName(player) .. " voce ja fez esta quest.")
					end
				else
					sendPlayersText(players, getPlayerName(player) .. " nao tem level.")
				end	
			else
				sendPlayersText(players, "You need " .. #playerPos .. " players to do this quest.")
			end	
		elseif(item.itemid == 1946) then -- preferably, to be the id of the lever added by mapeditor.
			if(cleanArea()) then
				doTransformItem(item.uid, 1945)
			else
				return FALSE
			end	
		end
		return TRUE
	--- Chests.
	elseif(item.uid == 59001) then -- demon armor
		return questChestPrize(cid, 2494, 100)
	elseif(item.uid == 59002) then -- magic sword
		return questChestPrize(cid, 2400, 100)
	elseif(item.uid == 59003) then -- stonecutter's axe
		return questChestPrize(cid, 2431, 100)
	elseif(item.uid == 59004) then -- present box
		return questChestPrize(cid, 1990, 100)				
	end
end
 
function sendPlayersText(players, text)
	for _, player in ipairs(players) do 
		doPlayerSendCancel(player, text)
	end
end
 
function questChestPrize(cid, itemid, storage)
	if(getPlayerStorageValue(cid, storage) < TRUE) then
		doPlayerAddItem(cid, itemid, 1)
		setPlayerStorageValue(cid, storage, TRUE)
		local item = getItemDescriptions(itemid)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found " .. item.article .. " " .. item.name .. "")
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
	end
	return TRUE
end
 
function checkLevel(minLevel)
	for _, player in ipairs(player) do
		if(getPlayerLevel(player) < minLevel) then
			return false, player
		end
	end	
	return true
end
 
function checkStorage(storageValue)
	for _, player in ipairs(player) do
		if(getPlayerStorageValue(player, storageValue) ~= TRUE) then
			return false, player
		end
	end	
	return true
end
 
function cleanArea()
	local checking= {x = starting.x, y = starting.y, z = starting.z, stackpos = 253}
	local monster = {}
	while(checking.y <= ending.y) do
		local creature = getTopCreature(checking)
		if(isCreature(creature) == TRUE) then
			if(isPlayer(creature) == TRUE) then
				return false
			else
				table.insert(monster, creature)
			end
		end
		if(checking.x == ending.x) then
			checking.x = starting.x
			checking.y = checking.y + 1
		end
		checking.x = checking.x + 1
	end
	for i, c in ipairs(monster) do 
		doRemoveCreature(c)
	end	
	return true
end
 
function summonCreatures(parameters)
	for _, monster in ipairs(parameters) do
		doSummonCreature(monster[1], monster[2])
	end
end
 
function teleportPlayers(effect1, effect2)
	for currentPlayer = 1, table.getn(player) do
		doTeleportThing(player[currentPlayer], newPlayerPos[currentPlayer])
		doSendMagicEffect(playerPos[currentPlayer], effect1) -- send animation after teleport, players teleported won't see it anyways
		doSendMagicEffect(newPlayerPos[currentPlayer], effect2)
	end
end
 
function checkPlayers(cid)
	local ret = {}
	table.insert(ret, cid)
	for _, curPlayer in ipairs(player) do
		if(isPlayer(curPlayer) == TRUE) then
			if(curPlayer ~= cid) then 
				table.insert(ret, curPlayer)
			end
		else	
			return false, ret
		end
	end	
	return true, ret
end
