local modaldialog = {
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

function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	
	modalWindow = ModalWindow(1003, modaldialog.title, modaldialog.message)
	if modalWindow:getId() == 1003 then
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
	player:registerEvent("ModalTP")
	return false
end
