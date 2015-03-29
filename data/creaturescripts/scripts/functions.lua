local isSpecialServer = false

function onThink(creature, interval)
	if isSpecialServer == true then
		if creature:getLevel() >= 100 then
			if creature:getStorageValue(11553) == -1 then
				creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You got to level 100. Their potions now have a chance to fade. So we're giving you potions.")
				creature:setStorageValue(11553, 1)
				if isInArray({1, 2, 5, 6}, creature:getVocation():getId()) then
					creature:addItem(7590, 100)
				elseif isInArray({4, 8}, creature:getVocation():getId()) then
					creature:addItem(7591, 100)
				elseif isInArray({3, 7}, creature:getVocation():getId()) then
					creature:addItem(8472, 100)
				end
			end
		end
	end
	if creature:getStorageValue(11551) >= 25 then
		if creature:getStorageValue(11554) == -1 then
			creature:setStorageValue(11554, 0)
			creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You completed at least 25 quests. Try talk with the Pac in venonh")
		end
	end
	if creature:getStorageValue(11551) >= 50 then
		if creature:getStorageValue(11554) == 0 then
			creature:setStorageValue(11554, 1)
			creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You completed at least 50 quests. Try talk with the Pac in venonh")
		end
	end
	if creature:getStorageValue(11551) >= 75 then
		if creature:getStorageValue(11554) == 1 then
			creature:setStorageValue(11554, 2)
			creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You completed all the quests and became a God. Try talk with the Pac in venonh")
		end
	end
	if creature:getStorageValue(30018) == 1 then
		playerVoc = creature:getVocation():getId()
		if playerVoc <= 4 then
			local promotedVoc = playerVoc:getPromotion():getId()
			creature:setVocation(promotedVoc)
		end
	end
	return true
end