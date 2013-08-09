modaldialog1 = {
	title = "Offline Training",
	message = "Para qual sala você quer ir?",
	buttons = {
		{ id = 1, text = "ir" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, text = "Sword" },
		{ id = 2, text = "Axe" },
		{ id = 3, text = "Club" },
		{ id = 4, text = "Distance" },
		{ id = 5, text = "Magic Level" }
	},
	popup = true
}

function onStepIn(cid, item, position, fromPosition)
	doPlayerAddDialog(cid, 1001, modaldialog1)
	registerCreatureEvent(cid, "ModalOffline")
	return true
end
