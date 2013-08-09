function onModalWindow(cid, modalWindowId, buttonId, choiceId)
	if modalWindowId == 1001 then
		if buttonId == 1 or buttonId == 29 or buttonId == 0 then
			local pos = 0
			if (choiceId == 1) then
				pos = {x=98, y=45, z=15}
			elseif (choiceId == 2) then
				pos = {x=108, y=45, z=15}
			elseif (choiceId == 3) then
				pos = {x=117, y=45, z=15}
			elseif (choiceId == 4) then
				pos = {x=98, y=55, z=15}
			elseif (choiceId == 5) then
				pos = {x=117, y=55, z=15}
			end
			doTeleportThing(cid, pos)
		end
	end
	return true
end
