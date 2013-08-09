items = {
	[0] = {id = 2160, count = 1, chance = 1},
	[1] = {id = 2112, count = 1, chance = 2}
} 

function onModalWindow(cid, modalWindowId, buttonId, choiceId)
	if modalWindowId == 1000 then
		if buttonId == 1 or buttonId == 29 or buttonId == 0 then
			if (choiceId == 1) then
				if math.random(100) <= 30 then
					if(getPlayerPremiumDays(cid) > 360) then
						doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você não pode ter mais de 360 dias de premium.")
						doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
					end
					doPlayerAddPremiumDays(cid, 30)
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você acaba de ganhar 30 dias de premium, boa sorte.")
					else
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você não conseguiu ganhar!")
				end
			elseif (choiceId == 2) then
				for i = 0, #items do
				if (items[i].chance > math.random(1, 2)) then
					doPlayerAddItem(cid, items[i].id, items[i].count)
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Seu Item é "..getItemNameById(items[i].id).."!")
					end
				end
			end
			setPlayerStorageValue(cid,171020122041,1)
		end
	end
	return true
end
