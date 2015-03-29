blockEnterItemPosition = {x= 100, y=36, z=6}
gate = {x= 100, y=37, z=6}
enterPosition = {x = 393, y = 667, z = 6}
blockEnterItemID = 1387
gateid = 9485

function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	if(param == '') then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return true
	end

	local world = getWorldType()
	param = param:lower()
	if param == 'open' then
		if pushThing(Tile(blockEnterItemPosition):getItemById(blockEnterItemID)).uid == 0 then
			local teleport = Game.createItem(blockEnterItemID, 1, blockEnterItemPosition)
			teleport:setDestination(enterPosition)
			local itemgate = pushThing(Tile(gate):getItemById(gateid))
			if(itemgate.uid ~= 0) then
				Item(itemgate.uid):remove()
			end
			for _, tmpPlayer in ipairs(Game.getPlayers()) do
				tmpPlayer:sendPrivateMessage(player, "Event created! Portal open in temple.", TALKTYPE_BROADCAST)
			end
		else
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "The portal is already open.")
		end
	elseif param == 'close' then
		if pushThing(Tile(gate):getItemById(gateid)).uid == 0 then
			Game.createItem(gateid, 1, gate)
			local item = pushThing(Tile(blockEnterItemPosition):getItemById(blockEnterItemID))
			if(item.uid ~= 0) then
				Item(item.uid):remove()
			end
			for _, tmpPlayer in ipairs(Game.getPlayers()) do
				tmpPlayer:sendPrivateMessage(player, "Portal closed!", TALKTYPE_BROADCAST)
			end
		else
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "The portal is not open.")
		end
	end
	return true
end
