modaldialog4 = {
	title = "Acesso Rapido",
	message = "Para onde você quer ir?",
	buttons = {
		{ id = 1, text = "Ir" },
		{ id = 2, text = "Cancelar" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, text = "Templo" },
		{ id = 2, text = "Gm Island" },
		{ id = 3, text = "XedeguX Island" },
		{ id = 4, text = "Sala de eventos" }
	},
	popup = false
}

function onSay(cid, words, param)
	if not Player(cid):getGroup():getAccess() then
		return false
	end
	doPlayerAddDialog(cid, 1003, modaldialog4)
	registerCreatureEvent(cid, "ModalTP")
end
