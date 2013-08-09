local commands = [[[ -- Guilds Commands -- ]
Have guild commands for tfs 1.0?]]

function CountGuildMembers(GuildName) -- function by vodkart
	local count = 0
	local lista = db.getResult("SELECT `name`, `rank_id` FROM `players` WHERE `rank_id` IN (SELECT `id` FROM `guild_ranks` WHERE `guild_id` = " .. getGuildId(GuildName) .. ");")  
	if(lista:getID() ~= -1) then  
	repeat  count = count + 1 until not lista:next()  lista:free() return count end
end

function onModalWindow(cid, modalWindowId, buttonId, choiceId)
	if modalWindowId == 1003 then
		if (buttonId == 1) then
			local str = ''
			if (choiceId == 1) then
				local players,GuildName = {},getPlayerGuildName(cid)
				if getPlayerGuildId(cid) == false then
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Você precisa estar em uma Guild.")
					return true
				end
				for _, cid in pairs(getPlayersOnline()) do
					if getPlayerGuildName(cid) == GuildName then
						table.insert(players, cid)
					end
				end
				str = str .. "Membros total da guild: "..CountGuildMembers(GuildName).." Players.\n\nExiste "..#players.." Players online na sua guild:\n\n"
				for i = 1, #players do
					str = str.."\n["..getPlayerName(players[i]).."]["..getPlayerGuildRank(players[i]).."]"
				end
				doShowTextDialog(cid, 2533, str)
			elseif (choiceId == 2) then
				str = commands
				doShowTextDialog(cid, 2529, str)
			elseif (choiceId == 3) then
				local result = db.getResult('SELECT `name`, `balance` FROM `guilds` WHERE `id` = ' .. getPlayerGuildId(cid))
				if getPlayerGuildId(cid) == false then
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Você não está em nenhuma guild.")
					return false
				end

				str = str .. "Current balance of guild " .. result:getDataString('name') .. " is: " .. result:getDataLong('balance') .. " bronze coins."
				result:free()
				doShowTextDialog(cid, 2529, str)
			end
		end
	end
	return true
end
