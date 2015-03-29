function getItemsInContainer(cont, sep)
	local text = ""
	local tsep = ""
	local count = ""
	for i=1, sep do
		tsep = tsep.."-"
	end
	tsep = tsep..">"
	for i=0, Container(cont.uid):getSize() - 1 do
		local item = pushThing(Container(cont.uid):getItem(i))
		if not Container(item.uid) then
			if item.type > 1 then
				count = " ("..item.type.."x)"
			end
			text = text.."\n"..tsep..ItemType(item.itemid):getName()..""..count.." ("..item.itemid..")"
		else
			if Container(item.uid):getSize() > 0 then
				text = text.."\n"..tsep..ItemType(item.itemid):getName().." ("..item.itemid..")"
				text = text..getItemsInContainer(item, sep+2)..""
			else
				text = text.."\n"..tsep..ItemType(item.itemid):getName().." ("..item.itemid..")"
			end
		end
	end
	return text
end

function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	
	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end
	
	if(param == '') then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end
	
	local slotName = {"Head", "Amulet", "Backpack", "Armor", "Right Hand", "Left Hand", "Legs", "Feet", "Ring", "Ammo Slot"}
	local t = param:split(', ')
	if(t[1] == 'check') then
		local p = Player(t[2])
		if p then
			local text = p:getName().."'s Equipment: "
			for i=1, 10 do
				text = text.."\n\n"
				local item = pushThing(Player(p:getName()):getSlotItem(i))
				if item.itemid > 0 then
					count = ''
					if item.type > 1 then
						count = " ("..item.type.."x)"
					end
					if Container(item.uid) then
						text = text..slotName[i]..": "..ItemType(item.itemid):getName()..""..count.." ("..item.itemid..") "..getItemsInContainer(item, 1)
					else
						text = text..slotName[i]..": "..ItemType(item.itemid):getName()..""..count.." ("..item.itemid..")"
					end
				else
					text = text..slotName[i]..": Empty"
				end
			end
			player:showTextDialog(6579, text)
		else
			player:sendCancelMessage("This player is not online or not exist.")
		end
	elseif(t[1] == 'delete') then
		local p = Player(t[2])
		if p then
			count = t[4]
			if(not t[4]) then
				count = 1
			end
			if Player(p:getName()):getItemCount(t[3]) > 0 then
				if Player(p:getId()):removeItem(t[3], count) then
					player:sendCancelMessage("Deleted Item.")
				else
					player:sendCancelMessage("This player does not have this amount of item.")
				end
			else
				player:sendCancelMessage("This player does not have the item.")
			end
		else
			player:sendCancelMessage("This player is not online or not exist.")
		end
	else
		local id = ItemType(t[1]):getId()
		if id == 0 then
			return player:sendCancelMessage("The "..t[1].." not exist. ")
		end
		local query = db.storeQuery("SELECT name FROM players WHERE id IN (SELECT player_id FROM player_items WHERE itemtype = ".. id ..");")
		local msg = "Search results by item ".. ItemType(id):getName() .." in your database:\n\n"
		if (query ~= false) then
			while true do
				local name = result.getString(query, "name")
				msg = msg .. name .."\n"
				if not result.next(query) then
					break
				end
			end
		else
			msg = msg .. "The item was not found in any player."
		end
		player:showTextDialog(id, msg)
	end
	return false
end
