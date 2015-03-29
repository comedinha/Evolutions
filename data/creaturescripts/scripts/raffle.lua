local modaldialog = {
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

function onLogin(player)
	if player:getStorageValue(11000) == -1 then
		if math.random(100) <= 50 then
			modalWindow = ModalWindow(1000, modaldialog.title, modaldialog.message)
			if modalWindow:getId() == 1000 then
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
			player:registerEvent("ModalRaffle")
		end
		player:setStorageValue(11000, 1)
	end
	return true
end
