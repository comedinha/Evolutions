local config = {
	clean = {"clean", "limpar"}
}

function onSay(cid, words, param)
	local t = string.explode(param, ",")
	if(table.isStrIn(param, config.clean)) then
		if getPlayerGroupId (cid) >= 5 then
			file = io.open('data/txt/bugs.txt','w')
			if(param == '') then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
				return true
			end
			notice = file:write("Server Bugs\n")
			file:close()
			return true
		end
		return false
	end
	file = io.open('data/txt/bugs.txt','r')
	notice = file:read(-1)
	doShowTextDialog(cid, 7528, notice)
	file:close()
	return true
end
