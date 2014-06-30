local isSpecialServer = false

function onThink(cid, interval)
	if isSpecialServer == true then
		if getPlayerLevel(cid) >= 100 then
			if(getPlayerStorageValue(cid, 11553) == -1) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You got to level 100. Their potions now have a chance to fade. So we're giving you potions.")
				setPlayerStorageValue(cid, 11553, 1)
				if isSorcerer(cid) or isDruid(cid) then
					doPlayerAddItem(cid, 7590, 100)
				elseif isKnight(cid) then
					doPlayerAddItem(cid, 7591, 100)
				elseif isPaladin(cid) then
					doPlayerAddItem(cid, 8472, 100)
				end
			end
		end
	end
	if getPlayerStorageValue(cid, 11551) >= 25 then
		if(getPlayerStorageValue(cid, 11554) == -1) then
			setPlayerStorageValue(cid, 11554, 0)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You completed at least 25 quests. Try talk with the Pac in venonh")
		end
	end
	if getPlayerStorageValue(cid, 11551) >= 50 then
		if(getPlayerStorageValue(cid, 11554) == 0) then
			setPlayerStorageValue(cid, 11554, 1)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You completed at least 50 quests. Try talk with the Pac in venonh")
		end
	end
	if getPlayerStorageValue(cid, 11551) >= 75 then
		if(getPlayerStorageValue(cid, 11554) == 1) then
			setPlayerStorageValue(cid, 11554, 2)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You completed all the quests and became a God. Try talk with the Pac in venonh")
		end
	end
	if(getPlayerStorageValue(cid, 30018) == 1) then
		if getPlayerVocation(cid) <= 4 then
			local promotedVoc = getPromotedVocation(getPlayerVocation(cid))
			doPlayerSetVocation(cid, promotedVoc)
		end
	end
	return true
end