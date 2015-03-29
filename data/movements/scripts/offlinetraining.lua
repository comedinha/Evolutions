local modaldialog = {
	title = "Offline Training",
	message = "To which room you want to go?",
	buttons = {
		{ id = 1, text = "go" },
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

function onStepIn(creature, item, position, fromPosition)
	modalWindow = ModalWindow(1001, modaldialog.title, modaldialog.message)
	if modalWindow:getId() == 1001 then
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
	modalWindow:sendToPlayer(creature)
	creature:registerEvent("ModalOffline")
	return true
end