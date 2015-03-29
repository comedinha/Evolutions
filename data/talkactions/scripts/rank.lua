local modaldialog = {
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

function onSay(player, words, param)
	modalWindow = ModalWindow(1002, modaldialog.title, modaldialog.message)
	if modalWindow:getId() == 1002 then
		for _, v in ipairs(modaldialog.buttons) do
			modalWindow:addButton(v.id, v.text)
		end
		for _, v in ipairs(modaldialog.choices) do
			modalWindow:addChoice(v.id, v.text)
		end
		modalWindow:setDefaultEnterButton(modaldialog.buttonEnter)
		modalWindow:setPriority(modaldialog.popup)
		modalWindow:setDefaultEscapeButton(modaldialog.buttonEscape)
	end
	modalWindow:sendToPlayer(player)
	player:registerEvent("ModalRank")
end
