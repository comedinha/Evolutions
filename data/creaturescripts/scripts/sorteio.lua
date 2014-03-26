modaldialog = {
	title = "Quer tentar a sorte?",
	message = "Selecione o que você quer tentar ganhar:",
	buttons = {
		{ id = 1, text = "Tentar" },
		{ id = 2, text = "Cancelar" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, text = "2 dias de premium!" },
		{ id = 2, text = "Algum Item!" }
	},
	popup = true
}

function onLogin(cid)
	if getPlayerStorageValue(cid, 11000) == -1 then
		if math.random(100) <= 50 then
			doPlayerAddDialog(cid, 1000, modaldialog)
			registerCreatureEvent(cid, "ModalSorteio")
		end
		setPlayerStorageValue(cid, 11000, 1)
	end
	return true
end
