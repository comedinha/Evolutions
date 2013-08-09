modaldialog3 = {
	title = "Guild Channel",
	message = "Escolha o que você quer visualizar:",
	buttons = {
		{ id = 1, text = "Ver" },
		{ id = 2, text = "Cancelar" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		--{ id = 1, text = "Membros Online" },
		{ id = 2, text = "Comandos" },
		--{ id = 3, text = "Balance" }
	},
	popup = false
}

function onSay(cid, words, param)
	doPlayerAddDialog(cid, 1003, modaldialog3)
	registerCreatureEvent(cid, "ModalGuild")
end
