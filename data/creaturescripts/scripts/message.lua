function onThink(cid, interval)
	if getPlayerLevel(cid) >= 100 then
		if(getPlayerStorageValue(cid, 11553) == -1) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce chegou ao level 100. Agora suas potions tem uma chance de sumir. Por isso estamos lhe dando potions.")
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
	if getPlayerStorageValue(cid, 11551) >= 25 then
		if(getPlayerStorageValue(cid, 11554) == -1) then
			setPlayerStorageValue(cid, 11554, 0)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce completou pelo menos 25 quests. Tente falar com o Pac de venonh")
		end
	elseif getPlayerStorageValue(cid, 11554) >= 50 then
		if(getPlayerStorageValue(cid, 11554) == 0) then
			setPlayerStorageValue(cid, 11552, 1)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce completou pelo menos 50 quests. Tente falar com o Pac de venonh")
		end
	elseif getPlayerStorageValue(cid, 11554) >= 75 then
		if(getPlayerStorageValue(cid, 11554) == 1) then
			setPlayerStorageValue(cid, 11552, 2)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce completou todas as quests e se tornou um Deus. Tente falar com o Pac de venonh")
		end
	end
	return true
end