function doPlayerAddDialog(cid, id, func)
	modalWindow = ModalWindow(id, func.title, func.message)
	if modalWindow:getId() == id then
		for _, v in ipairs(func.buttons) do
        		modalWindow:addButton(v.id, v.text)
		end
		for _, v in ipairs(func.choices) do
       			modalWindow:addChoice(v.id, v.text)
		end
		modalWindow:setDefaultEnterButton(func.buttonEnter)
		modalWindow:setPriority(func.popup)
		modalWindow:setDefaultEscapeButton(func.buttonEscape)
	end
	modalWindow:sendToPlayer(cid)
	return FALSE
end