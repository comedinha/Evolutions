function onModalWindow(player, modalWindowId, buttonId, choiceId)
	if modalWindowId == 1003 then
		if (buttonId == 1) then
			local pos = 0
			if (choiceId == 1) then
				pos = {x=100, y=40, z=6}
			elseif (choiceId == 2) then
				pos = {x=95, y=28, z=7}
			elseif (choiceId == 3) then
				pos = {x=318, y=330, z=7}
			elseif (choiceId == 4) then
				pos = {x=393, y=667, z=6}
			end
			player:teleportTo(pos, false)
		end
	end
	return true
end
