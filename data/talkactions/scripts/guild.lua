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
		{ id = 1, text = "Membros Online" },
		{ id = 2, text = "Balance" }
	},
	popup = false
}

function onSay(cid, words, param)
	if getPlayerGuildId(cid) <= 0 then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Você não está em nenhuma guild.")
		return true
	else
		doPlayerAddDialog(cid, 1003, modaldialog3)
		registerCreatureEvent(cid, "ModalGuild")
	end
end
