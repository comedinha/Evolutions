blockEnterItemPosition = {x= 100, y=36, z=6}
gate = {x= 100, y=37, z=6}
enterPosition = {x = 393, y = 667, z = 6}
blockEnterItemID = 1387
gateid = 9485

local config = {
	open = {"open", "abir", "1"},
	close = {"close", "closed", "2", "fechar"}
}

function onSay(cid, words, param, channel)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return true
	end

	local world = getWorldType()
	param = param:lower()
	if(table.isStrIn(param, config.open)) then
		if(getTileItemById(blockEnterItemPosition, blockEnterItemID).uid == 0) then
			local tp = doCreateTeleport(blockEnterItemID, enterPosition, blockEnterItemPosition)
			doItemSetAttribute(tp)
			local itemgate = getTileItemById(gate, gateid)
			if(itemgate.uid ~= 0) then
				doRemoveItem(itemgate.uid)
			end
			doBroadcastMessage("Event created by "..getCreatureName(cid).." Open in temple.")
			else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O portal já está aberto.")
		end
	elseif(table.isStrIn(param, config.close)) then
		if(getTileItemById(gate, gateid).uid == 0) then
			doCreateItem(gateid, 1, gate)
			local item = getTileItemById(blockEnterItemPosition, blockEnterItemID)
			if(item.uid ~= 0) then
				doRemoveItem(item.uid)
			end
			doBroadcastMessage("Event created by "..getCreatureName(cid).." closed.")
			else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O portal não está aberto.")
		end
	end
	return true
end