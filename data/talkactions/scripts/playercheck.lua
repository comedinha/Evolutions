local config = {
	check = {"check", "viwer", "verificar", "ver"},
	delete = {"del", "delete", "deletar"},
	search = {"search", "procurar"}
}

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
			if item.type > 0 then
				count = "("..item.type.."x)"
			end
			text = text.."\n"..tsep..getItemNameById(item.itemid).." "..count.." ("..item.itemid..")"
		else
			if getContainerSize(item.uid) > 0 then
				text = text.."\n"..tsep..getItemNameById(item.itemid).." ("..item.itemid..")"
				text = text..getItemsInContainer(item, sep+2).." ("..item.itemid..")"
			else
				text = text.."\n"..tsep..getItemNameById(item.itemid).." ("..item.itemid..")"
			end
		end
	end
	return text
end

function onSay(cid, words, param)
	local slotName = {"Cabeça", "Amuleto", "Backpack", "Armor", "Mao Direita", "Mao Esquerda", "Legs", "Pés", "Ring", "Ammo Slot"}
	local t = string.explode(param, ",")
	if(table.isStrIn(param, config.check)) then
		if getPlayerGroupId (cid) >= 5 then
			local player = getPlayerByNameWildcard(t[2])
			if isPlayer(player) == TRUE then
				local text = getPlayerName(player).."'s Equipment: "
				for i=1, 10 do
					text = text.."\n\n"
					local item = getPlayerSlotItem(player, i)
					if item.itemid > 0 then
						if isContainer(item.uid) == TRUE then
							text = text..slotName[i]..": "..getItemNameById(item.itemid).." ("..item.itemid..") "..getItemsInContainer(item, 1)
						else
							text = text..slotName[i]..": "..getItemNameById(item.itemid).." ("..item.itemid..")"
						end
					else
						text = text..slotName[i]..": Empty"
					end
				end
				doShowTextDialog(cid, 6579, text)
			else
				doPlayerSendCancel(cid, "This player is not online.")
			end
		end
	elseif(table.isStrIn(param, config.delete)) then
		if getPlayerGroupId(cid) >= 5 then
			local player = getPlayerByNameWildcard(t[3])
			if isPlayer(player) == TRUE then
				count = t[4]
				if(not t[4]) then
					count = 1
				end
				if getPlayerItemCount(player, t[2]) > 0 then
					if doPlayerRemoveItem(player, t[2], count) then
						doPlayerSendCancel(cid, "Item Deletado.")
					else
						doPlayerSendCancel(cid, "Este player não esta quantidade.")
					end
				else
					doPlayerSendCancel(cid, "Este player não tem o item.")
				end
			end
		end
	elseif(table.isStrIn(param, config.search)) then
		if getPlayerGroupId (cid) >= 5 then
			local player = getPlayerByNameWildcard(t[3])
			local result = db.getResult("SELECT name, online FROM players WHERE id IN (SELECT player_id FROM player_items WHERE itemtype = ".. t[2] ..");")
			local msg = "Resultados da busca pelo item ".. t[2] .." em seu banco de dados:\n\n"
			if result:getID() ~= -1 then
				while true do
					local name = result:getDataString("name")
					local online = result:getDataInt("online")
					msg = msg .. name .." [".. (online == 1 and "Online" or "Offline") .."]\n"
					if not result:next() then
						break
					end
				end
			else
				msg = msg .. "O item não foi encontrado em nenhum jogador."
			end
			doShowTextDialog(cid, t[2], msg)
		end
	end
	return true
end
