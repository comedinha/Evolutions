local config = {
		[1] = {
				--equipment spellbook, wand of vortex, magician's robe, mage hat, studded legs, leather boots, amulet of loss
				items = {{2175, 1}, {2190, 1}, {8819, 1}, {8820, 1}, {2468, 1}, {2643, 1}, {2173, 1}},
				--container rope, shovel, mana potion, 100 platinum coin
				container = {{2120, 1}, {2554, 1}, {7620, 1}, {2152, 100}}
		},
		[2] = {
				--equipment spellbook, snakebite rod, magician's robe, mage hat, studded legs, leather boots, amulet of loss
				items = {{2175, 1}, {2182, 1}, {8819, 1}, {8820, 1}, {2468, 1}, {2643, 1}, {2173, 1}},
				--container rope, shovel, mana potion, 100 platinum coin
				container = {{2120, 1}, {2554, 1}, {7620, 1}, {2152, 100}}
		},
		[3] = {
				--equipment dwrven shield, 5 spear, ranger's cloak, ranger legs, legion helmet, amulet of loss
				items = {{2525, 1}, {2389, 5}, {2660, 1}, {8923, 1}, {2643, 1}, {2480, 1}, {2173, 1}},
				--container rope, shovel, health potion, bow, 50 arrow, 100 platinum coin
				container = {{2120, 1}, {2554, 1}, {7618, 1}, {2456, 1}, {2544, 50}, {2152, 100}}
		},
		[4] = {
				--equipment dwarven shield, steel axe, brass armor, brass helmet, brass legs, amulet of loss
				items = {{2525, 1}, {8601, 1}, {2465, 1}, {2460, 1}, {2478, 1}, {2643, 1}, {2173, 1}},
				--container jagged sword, daramian mace, rope, shovel, health potion, 100 platinum coin
				container = {{8602, 1}, {2439, 1}, {2120, 1}, {2554, 1}, {7618, 1}, {2152, 100}}
		}
}

function onLogin(player)
	local targetVocation = config[player:getVocation():getId()]
	if not targetVocation then
		return true
	end

	if player:getLastLoginSaved() ~= 0 then
		return true
	end
	
	if player:getStorageValue(11551) == -1 then
		player:setStorageValue(11551, 0)
	end

	for i = 1, #targetVocation.items do
		player:addItem(targetVocation.items[i][1], targetVocation.items[i][2])
	end

	local backpack = player:addItem(1988)
	if not backpack then
		return true
	end

	for i = 1, #targetVocation.container do
		backpack:addItem(targetVocation.container[i][1], targetVocation.container[i][2])
	end
	return true
end
