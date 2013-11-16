function onSay(cid, words, param)
	if not Player(cid):getGroup():getAccess() then
		return false
	end
	local t = param:split(",")
	if getPlayerGroupId (cid) == 3 then
		if t[1] == 'add' then
			file = io.open('txt/staffrules.txt','a+')
			notice = file:write(""..t[2].."\n")
			file:close()
			return false
		elseif t[1] == 'clean' then
			file = io.open('txt/staffrules.txt','w')
			notice = file:write("Staff Rules\n")
			file:close()
			return false
		end
	end
	file = io.open('txt/staffrules.txt','r')
	notice = file:read(1000000000)
	doShowTextDialog(cid, 7528, notice)
	file:close()
	return false
end
