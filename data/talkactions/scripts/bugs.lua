function onSay(cid, words, param)
	if getPlayerGroupId (cid) < 3 then
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
	doShowTextDialog(cid, 7528, notice)
	file:close()
	return false
end
