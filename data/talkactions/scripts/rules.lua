function onSay(cid, words, param)
	local t = param:split(",")
	if Player(cid):getGroup():getAccess() then
		if t[1] == 'add' then
			file = io.open('txt/rules.txt','a+')
			notice = file:write(""..t[2].."\n")
			file:close()
			return false
		elseif t[1] == 'clean' then
			file = io.open('txt/rules.txt','w')
			notice = file:write("Server Rules\n")
			file:close()
			return false
		end
	end
	file = io.open('txt/rules.txt','r')
	notice = file:read(1000000000)
	doShowTextDialog(cid, 7528, notice)
	file:close()
	return false
end
