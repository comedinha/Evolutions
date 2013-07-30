local commands = [[[ -- Guilds Commands -- ]
/disband - Deleta a guild
/invite - Invitar um membro na guild
/leave - Sai da guild
/revoke - Tira o convite de membro para a guild
/promote - Promove o membro da guild
/demote - Tira a promoção de um membro da guild
/passleadership - Passa o lider para outro membro
/kick - Kika o membro da guild
/nick - Adiciona um "guildnick" ao membro
/setrankname - Muda o nome de algum rank da guild
/setmotd - Muda a mensagem inicial da guild
/cleanmotd - Limpa a mensagem inicial da guild
/war - (TAGS: invite, accept, reject, cancel, end) iniciar, invitar e terminar uma guerra
/balance - (TAGS: pick, donate) pegar e adicionar dinheiro a guild]]

function CountGuildMembers(GuildName) -- function by vodkart
	local count = 0
	local lista = db.getResult("SELECT `name`, `rank_id` FROM `players` WHERE `rank_id` IN (SELECT `id` FROM `guild_ranks` WHERE `guild_id` = " .. getGuildId(GuildName) .. ");")  
	if(lista:getID() ~= -1) then  
	repeat  count = count + 1 until not lista:next()  lista:free() return count end
end

modaldialog5 = {
	title = "Guild Channel",
	message = "Escolha o que você quer visualizar:",
	buttons = {
		{ id = 1, value = "Ver" },
		{ id = 2, value = "Cancelar" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, value = "Membros Online" },
		{ id = 2, value = "Comandos" },
		{ id = 3, value = "Balance" }
	},
	popup = false
}

function callback5(cid, button, choice)
	if (button == 1) then
		local str = ''
		if (choice == 1) then
			local players,GuildName = {},getPlayerGuildName(cid)
			if getPlayerGuildId(cid) <= 0 then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Você precisa estar em uma Guild.") return true end
				for _, cid in pairs(getPlayersOnline()) do
				if getPlayerGuildName(cid) == GuildName then
					table.insert(players, cid)
				end
			end
			str = str .. "Membros total da guild: "..CountGuildMembers(GuildName).." Players.\n\nExiste "..#players.." Players online na sua guild:\n\n"
			for i = 1, #players do
				str = str.."\n["..getPlayerName(players[i]).."]["..getPlayerGuildRank(players[i]).."]"
			end
			return doShowTextDialog(cid, 2533, str)
		elseif (choice == 2) then
			str = commands
			doShowTextDialog(cid, 2529, str)
		elseif (choice == 3) then
			local result = db.getResult('SELECT `name`, `balance` FROM `guilds` WHERE `id` = ' .. guild)
			if(result:getID() == -1) then
				return false
			end

			str = str .. "Current balance of guild " .. result:getDataString('name') .. " is: " .. result:getDataLong('balance') .. " bronze coins."
			result:free()
			doShowTextDialog(cid, 2529, str)
		end
	end
end

function onSay(cid, words, param)
	if getPlayerGuildId(cid) <= 0 then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Você não está em nenhuma guild.")
		return true
	end
	
	addDialog(modaldialog5, 1005, cid, callback5);
	return true
end