modaldialog = {
	title = "Want to try your luck?",
	message = "Select what you want to try to win:",
	buttons = {
		{ id = 1, text = "Try" },
		{ id = 2, text = "Cancel" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, text = "2 premium days!" },
		{ id = 2, text = "any Item!" }
	},
	popup = true
}

function onLogin(cid)
	if getPlayerStorageValue(cid, 11000) == -1 then
		if math.random(100) <= 50 then
			doPlayerAddDialog(cid, 1000, modaldialog)
			registerCreatureEvent(cid, "ModalRaffle")
		end
		setPlayerStorageValue(cid, 11000, 1)
	end
	return true
end
