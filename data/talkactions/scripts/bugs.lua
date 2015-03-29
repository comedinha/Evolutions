function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return false
	end
	
	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end
	
	if param == 'clean' then
		file = io.open('txt/bugs.txt','w')
		notice = file:write("Server Bugs\n")
		file:close()
		return false
	end
	
	file = io.open('txt/bugs.txt','r')
	notice = file:read(1000000000)
	player:showTextDialog(7528, notice)
	file:close()
	return false
end
