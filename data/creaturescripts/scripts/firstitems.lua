function onLogin(cid)
	local sorcItems = {
			8820, -- mage hat
			8819, -- magician's robe
			2190, -- wand of vortex
			1988, -- backpack
			2175 -- spellbook
		}
	local druidItems = {
			8820, -- mage hat
			8819, -- magician's robe
			2182, -- snakebite rod
			1988, -- backpack
			2175 -- spellbook
		}
	local pallyItems = {
			8872, -- belted cape
			2457, -- steel helmet
			2525, -- dwarven shield
			1988, -- backpack
			2456 -- bow
		}
	local kinaItems = {
			2457, -- steel helmet
			2463, -- plate armor
			2525, -- dwarven shield
			2428, -- orcish axe
			1988, -- backpack
			2417, -- battle hammer
			3963 -- templar scytheblade
		}
	
	if getPlayerStorageValue(cid, 11551) == -1 then
		if getPlayerVocation(cid) == 1 then
			-- Sorcerer
			for i = 1, #sorcItems, 1 do
				doPlayerAddItem(cid, sorcItems[i], 1, FALSE)
			end
		
		elseif getPlayerVocation(cid) == 2 then
			-- Druid
			for i = 1, #druidItems, 1 do
				doPlayerAddItem(cid, druidItems[i], 1, FALSE)
			end
		
		elseif getPlayerVocation(cid) == 3 then
			-- Paladin
			for i = 1, #pallyItems, 1 do
				doPlayerAddItem(cid, pallyItems[i], 1, FALSE)
			end
			-- 20 arrows
			doPlayerAddItem(cid, 2544, 20, FALSE)
			-- 3 spears
			doPlayerAddItem(cid, 2389, 3, FALSE)
		
		elseif getPlayerVocation(cid) == 4 then
			-- Knight
			for i = 1, #kinaItems, 1 do
				doPlayerAddItem(cid, kinaItems[i], 1, FALSE)
			end
		end
		
		-- Common for all
		doPlayerAddItem(cid, 2152, 100, FALSE) -- Platinum Coin
		doPlayerAddItem(cid, 2173, 1, FALSE) -- amulet of loss
		doPlayerAddItem(cid, 2643, 1, FALSE) -- leather boots
		doPlayerAddItem(cid, 2647, 1, FALSE) -- plate legs
		setPlayerStorageValue(cid, 11551, 0)
	end
	return true
end
