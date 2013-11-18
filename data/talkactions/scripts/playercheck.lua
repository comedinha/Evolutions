function getItemsInContainer(cont, sep)
	local text = ""
	local tsep = ""
	local count = ""
	for i=1, sep do
		tsep = tsep.."-"
	end
	tsep = tsep..">"
	for i=0, getContainerSize(cont.uid)-1 do
		local item = getContainerItem(cont.uid, i)
		if isContainer(item.uid) == FALSE then
			if item.type > 1 then
				count = " ("..item.type.."x)"
			end
			text = text.."\n"..tsep..getItemName(item.itemid)..""..count.." ("..item.itemid..")"
		else
			if getContainerSize(item.uid) > 0 then
				text = text.."\n"..tsep..getItemName(item.itemid).." ("..item.itemid..")"
				text = text..getItemsInContainer(item, sep+2)..""
			else
				text = text.."\n"..tsep..getItemName(item.itemid).." ("..item.itemid..")"
			end
		end
	end
	return text
end

function onSay(cid, words, param)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end
	local slotName = {"Cabeça", "Amuleto", "Backpack", "Armor", "Mao Direita", "Mao Esquerda", "Legs", "Pés", "Ring", "Ammo Slot"}
	local t = param:split(', ')
	if(t[1] == 'check') then
		if getPlayerGroupId(cid) >= 2 then
			local p = Player(t[2])
			if p then
				local text = p:getName().."'s Equipment: "
				for i=1, 10 do
					text = text.."\n\n"
					local item = getPlayerSlotItem(p:getName(), i)
					if item.itemid > 0 then
						count = ''
						if item.type > 1 then
							count = " ("..item.type.."x)"
						end
						if isContainer(item.uid) == TRUE then
							text = text..slotName[i]..": "..getItemName(item.itemid)..""..count.." ("..item.itemid..") "..getItemsInContainer(item, 1)
						else
							text = text..slotName[i]..": "..getItemName(item.itemid)..""..count.." ("..item.itemid..")"
						end
					else
						text = text..slotName[i]..": Empty"
					end
				end
				doShowTextDialog(cid, 6579, text)
			else
				doPlayerSendCancel(cid, "This player is not online or not exist.")
			end
		end
	elseif(t[1] == 'delete') then
		if getPlayerGroupId(cid) == 3 then
			local p = Player(t[2])
			if p then
				count = t[4]
				if(not t[4]) then
					count = 1
				end
				if getPlayerItemCount(p:getName(), t[3]) > 0 then
					if doPlayerRemoveItem(p:getId(), t[3], count) then
						doPlayerSendCancel(cid, "Deleted Item.")
					else
						doPlayerSendCancel(cid, "This player does not have this amount of item.")
					end
				else
					doPlayerSendCancel(cid, "This player does not have the item.")
				end
			else
				doPlayerSendCancel(cid, "This player is not online or not exist.")
			end
		end
	elseif(type(t[1]) == 'string') then
		local t = param:split(',')
		if getPlayerGroupId(cid) == 3 then
			id = getItemIdByName(t[1])
			if not id then
				doPlayerSendCancel(cid, "The "..t[1].." not exist. ")
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Using item name not put space after the comma.")
				return false
			end
			local result = db.getResult("SELECT name FROM players WHERE id IN (SELECT player_id FROM player_items WHERE itemtype = ".. id ..");")
			local msg = "Search results by item ".. getItemName(id) .." in your database:\n\n"
			if result:getID() ~= -1 then
				while true do
					local name = result:getDataString("name")
					msg = msg .. name .."\n"
					if not result:next() then
						break
					end
				end
			else
				msg = msg .. "The item was not found in any player."
			end
			doShowTextDialog(cid, id, msg)
		end
	end
	return true
end
