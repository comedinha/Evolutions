modaldialog4 = {
	title = "Quick Access",
	message = "Where are you going?",
	buttons = {
		{ id = 1, text = "Go" },
		{ id = 2, text = "Cancel" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, text = "Temple" },
		{ id = 2, text = "Gm Island" },
		{ id = 3, text = "XedeguX Island" },
		{ id = 4, text = "Event Room" }
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
