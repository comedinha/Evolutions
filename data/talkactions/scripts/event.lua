blockEnterItemPosition = {x= 100, y=36, z=6}
gate = {x= 100, y=37, z=6}
enterPosition = {x = 393, y = 667, z = 6}
blockEnterItemID = 1387
gateid = 9485

function onSay(cid, words, param)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return true
	end

	local world = getWorldType()
	param = param:lower()
	if param == 'open' then
		if(getTileItemById(blockEnterItemPosition, blockEnterItemID).uid == 0) then
			doCreateTeleport(blockEnterItemID, enterPosition, blockEnterItemPosition)
			local itemgate = getTileItemById(gate, gateid)
			if(itemgate.uid ~= 0) then
				doRemoveItem(itemgate.uid)
			end
			for _, tmpPlayer in ipairs(Game.getPlayers()) do
				Player(tmpPlayer):channelSay(cid, TALKTYPE_BROADCAST, "Event created! Portal open in temple.", 0)
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "The portal is already open.")
		end
	elseif param == 'close' then
		if(getTileItemById(gate, gateid).uid == 0) then
			doCreateItem(gateid, 1, gate)
			local item = getTileItemById(blockEnterItemPosition, blockEnterItemID)
			if(item.uid ~= 0) then
				doRemoveItem(item.uid)
			end
			for _, tmpPlayer in ipairs(Game.getPlayers()) do
				Player(tmpPlayer):channelSay(cid, TALKTYPE_BROADCAST, "Portal closed!", 0)
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "The portal is not open.")
		end
	end
	return true
end
