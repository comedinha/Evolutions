modaldialog2 = {
	title = "Rank",
	message = "Select the rank you want to view:",
	buttons = {
		{ id = 1, text = "See" },
		{ id = 2, text = "Cancel" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, text = "Fist" },
		{ id = 2, text = "Club" },
		{ id = 3, text = "Sword" },
		{ id = 4, text = "Axe" },
		{ id = 5, text = "Distance" },
		{ id = 6, text = "Shield" },
		{ id = 7, text = "Fish" },
		{ id = 8, text = "Magic" },
		{ id = 9, text = "Level" }
	},
	popup = false
}

function onSay(cid, words, param)
	doPlayerAddDialog(cid, 1002, modaldialog2)
	registerCreatureEvent(cid, "ModalRank")
end
