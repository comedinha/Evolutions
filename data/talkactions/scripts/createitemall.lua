function onSay(cid, words, param)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end
	if getPlayerGroupId(cid) < 3 then
		return false
	end
	for _, pid in ipairs(Game.getPlayers()) do
		local t = param:split(", ")

		id = t[1]
		amount = t[2]
		if(not t[2]) then
			amount = 1
		end

		if(not isPlayerGhost(cid)) then
			doSendMagicEffect(pos, CONST_ME_MAGIC_RED)
		end

		item = doCreateItemEx(id, amount)
		if doPlayerAddItemEx(pid:getName(), item, true) then
			doPlayerSendTextMessage(pid, MESSAGE_STATUS_CONSOLE_BLUE, "The "..getCreatureName(cid).." give ("..amount.."x) "..getItemName(id).." for all online players.")
		else
			doPlayerSendCancel(cid, "Item wich such name does not exists.")
		end
	end
	return true
end
