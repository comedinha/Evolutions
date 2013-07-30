modaldialog = {
	title = "Quer tentar a sorte?",
	message = "Selecione o que você quer tentar ganhar:",
	buttons = {
		{ id = 1, value = "Tentar" },
		{ id = 2, value = "Cancelar" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, value = "30 dias de premium!" },
		{ id = 2, value = "Algum Item!" }
	},
	popup = true
}

items = {
	[0] = {id = 2160, count = 1, chance = 1},
	[1] = {id = 2112, count = 1, chance = 2}
} 

function callback(cid, button, choice)
	if button == 1 or button == 29 or button == 0 then
		if (choice == 1) then
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
		end
		if (choice == 2) then
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

function onLogin(cid)
	if getPlayerStorageValue(cid, 171020122041) == -1 then
		if math.random(100) <= 50 then
			addDialog(modaldialog, 1000, cid, callback);
		end
		setPlayerStorageValue(cid,171020122041,1)
	end
	return true
end