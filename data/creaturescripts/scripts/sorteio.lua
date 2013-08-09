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
		{ id = 1, text = "30 dias de premium!" },
		{ id = 2, text = "Algum Item!" }
	},
	popup = true
}

function onLogin(cid)
	if getPlayerStorageValue(cid, 171020122041) == -1 then
		if math.random(100) <= 50 then
			doPlayerAddDialog(cid, 1000, modaldialog)
			registerCreatureEvent(cid, "ModalSorteio")
		end
		setPlayerStorageValue(cid,171020122041,1)
	end
	return true
end
