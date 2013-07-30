local config = {
	add = {"add", "adicionar", "new"},
	clean = {"clean", "limpar"}
}

function onSay(cid, words, param)
	local t = string.explode(param, ",")
	if(table.isStrIn(param, config.add)) then
		if getPlayerGroupId (cid) >= 5 then
			file = io.open('data/txt/rules.txt','a+')
			if(param == '') then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
				return true
			end
			notice = file:write(""..t[2].."\n")
			file:close()
			return true
		end
	elseif(table.isStrIn(param, config.clean)) then
		if getPlayerGroupId (cid) >= 5 then
			file = io.open('data/txt/rules.txt','w')
			if(param == '') then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
				return true
			end
			notice = file:write("Server Rules\n")
			file:close()
			return true
		end
		return false
	end
	file = io.open('data/txt/rules.txt','r')
	notice = file:read(-1)
	doShowTextDialog(cid, 7528, notice)
	file:close()
	return true
end
