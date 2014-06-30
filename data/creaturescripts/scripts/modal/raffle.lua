items = {
	[0] = {id = 2160, count = 1, chance = 1},
	[1] = {id = 2112, count = 1, chance = 2},
	[2] = {id = 2160, count = 2, chance = 3},
	[3] = {id = 2160, count = 3, chance = 4},
	[4] = {id = 2152, count = 1, chance = 5},
	[5] = {id = 2152, count = 50, chance = 6},
} 

function onModalWindow(cid, modalWindowId, buttonId, choiceId)
	if modalWindowId == 1000 then
		if buttonId == 1 or buttonId == 29 or buttonId == 0 then
			if (choiceId == 1) then
				if math.random(100) <= 10 then
					if(getPlayerPremiumDays(cid) > 360) then
						doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You can not have more than 360 days of premium.")
						doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
						return false
					end
					doPlayerAddPremiumDays(cid, 2)
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You just won 2 days premium.")
					else
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You failed to win!")
				end
			elseif (choiceId == 2) then
				for i = 0, #items do
				if (items[i].chance > math.random(1, 6)) then
					doPlayerAddItem(cid, items[i].id, items[i].count)
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your prize is "..getItemName(items[i].id).."!")
					end
				end
			end
			setPlayerStorageValue(cid, 171020122041, 1)
		end
	end
	return true
end
