local monster1 = {x = 157, y = 109, z = 7}
local monster2 = {x = 163, y = 110, z = 7}
local monster3 = {x = 155, y = 116, z = 7}
local monster4 = {x = 162, y = 116, z = 7}
local randomizer = math.random(1, 6)
local tree = getThingfromPos({x = 159, y = 106, z = 7}).uid

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if itemEx.itemid == 2709 and itemEx.actionid == 7787 and player:getLevel() >= 170 then
		tree:remove()
		player:teleportTo(toPosition, true)
		player:setStorageValue(8181, 1)
	else
		toPosition:sendMagicEffect(CONST_ME_POFF)
	end
	
	if itemEx.itemid == 2709 and itemEx.actionid == 7788 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "A player is already doing this quest.")
	end
	
	if itemEx.itemid == 8289 and itemEx.actionid == 8181 and (randomizer == 1) and player:getStorageValue(8181) == 1 then
		Game.createMonster("Crypt Shambler", monster1)
		Game.createMonster("Crypt Shambler", monster2)
		Game.createMonster("Crypt Shambler", monster3)
		Game.createMonster("Crypt Shambler", monster4)
	elseif itemEx.itemid == 8289 and itemEx.actionid == 8181 and (randomizer == 2) and player:getStorageValue(8181) == 1 then
		Game.createMonster("Bone Beast", monster1)
		Game.createMonster("Bone Beast", monster2)
		Game.createMonster("Bone Beast", monster3)
		Game.createMonster("Bone Beast", monster4)
	elseif itemEx.itemid == 8289 and itemEx.actionid == 8181 and (randomizer == 3) and player:getStorageValue(8181) == 1 then
		Game.createMonster("Demon", monster1)
		Game.createMonster("Demon", monster2)
		Game.createMonster("Demon", monster3)
		Game.createMonster("Demon", monster4)
		player:setStorageValue(8181, -1)
		player:setStorageValue(8282, 1)
	elseif itemEx.itemid == 8289 and itemEx.actionid == 8181 and (randomizer >= 4) and player:getStorageValue(8181) == 1 then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addHealth(-1000)
	end

	if itemEx.itemid == 8289 and itemEx.actionid == 8181 and player:getStorageValue(8181) == -1 then
		toPosition:sendMagicEffect(CONST_ME_POFF)
	end

	if itemEx.itemid == 8288 and itemEx.actionid == 8282 and (randomizer == 1) and player:getStorageValue(8282) == 1 then
		Game.createMonster("Crypt Shambler", monster1)
		Game.createMonster("Crypt Shambler", monster2)
		Game.createMonster("Crypt Shambler", monster3)
		Game.createMonster("Crypt Shambler", monster4)
	elseif itemEx.itemid == 8288 and itemEx.actionid == 8282 and (randomizer == 2) and player:getStorageValue(8282) == 1 then
		Game.createMonster("Giant Spider", monster1)
		Game.createMonster("Giant Spider", monster4)
	elseif itemEx.itemid == 8288 and itemEx.actionid == 8282 and (randomizer == 3) and player:getStorageValue(8282) == 1 then
		Game.createMonster("Blightwalker", monster1)
		player:setStorageValue(8282, -1)
		player:setStorageValue(8383, 1)
	elseif itemEx.itemid == 8288 and itemEx.actionid == 8282 and (randomizer >= 4) and player:getStorageValue(8282) == 1 then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addHealth(-1000)
	end

	if itemEx.itemid == 8288 and itemEx.actionid == 8282 and player:getStorageValue(8282) == -1 then
		toPosition:sendMagicEffect(CONST_ME_POFF)
	end

	if itemEx.itemid == 8290 and itemEx.actionid == 8383 and (randomizer == 1) and player:getStorageValue(8383) == 1 then
		Game.createMonster("Crypt Shambler", monster1)
		Game.createMonster("Crypt Shambler", monster2)
		Game.createMonster("Crypt Shambler", monster3)
		Game.createMonster("Crypt Shambler", monster4)
	elseif itemEx.itemid == 8290 and itemEx.actionid == 8383 and (randomizer == 2) and player:getStorageValue(8383) == 1 then
		Game.createMonster("Lich", monster1)
		Game.createMonster("Lich", monster2)
		Game.createMonster("Lich", monster3)
		Game.createMonster("Massacre", monster4)
	elseif itemEx.itemid == 8290 and itemEx.actionid == 8383 and (randomizer == 3) and player:getStorageValue(8383) == 1 then
		Game.createMonster("Plaguesmith", monster1)
		player:setStorageValue(8383, -1)
		player:setStorageValue(8484, 1)
	elseif itemEx.itemid == 8290 and itemEx.actionid == 8383 and (randomizer >= 4) and player:getStorageValue(8383) == 1 then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addHealth(-1000)
	end

	if itemEx.itemid == 8290 and itemEx.actionid == 8383 and player:getStorageValue(8383) == -1 then
		doSendMagicEffect(toPosition, CONST_ME_POFF)
	end

	if itemEx.itemid == 8291 and itemEx.actionid == 8484 and (randomizer == 1) and player:getStorageValue(8484) == 1 then
		Game.createMonster("Hellgorak", monster1)
		Game.createMonster("Crypt Shambler", monster2)
		Game.createMonster("Crypt Shambler", monster3)
		Game.createMonster("Crypt Shambler", monster4)
	elseif itemEx.itemid == 8291 and itemEx.actionid == 8484 and (randomizer == 2) and player:getStorageValue(8484) == 1 then
		Game.createMonster("Lich", monster1)
		Game.createMonster("Lich", monster2)
		Game.createMonster("Giant Spider", monster2)
		Game.createMonster("Giant Spider", monster3)
	elseif itemEx.itemid == 8291 and itemEx.actionid == 8484 and (randomizer == 3) and player:getStorageValue(8484) == 1 then
		Game.createMonster("Ushuriel", monster1)
		Game.createMonster("Juggernaut", monster2)
		player:setStorageValue(8484, -1)
		player:setStorageValue(8585, 1)
	elseif itemEx.itemid == 8291 and itemEx.actionid == 8484 and (randomizer >= 4) and player:getStorageValue(8484) == 1 then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addHealth(-1000)
	end
	
	if itemEx.itemid == 8291 and itemEx.actionid == 8484 and player:getStorageValue(8484) == -1 then
		toPosition:sendMagicEffect(CONST_ME_POFF)
	end
	return true
end