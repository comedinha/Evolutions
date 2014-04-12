function onSay(cid, words, param)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end
	if getPlayerGroupId(cid) < 3 then
		return false
	end
	local player = Player(param)
	local god = Player(cid)
	if isInArray({4, 5}, player:getSkull()) then
		player:setSkull(0)
		player:setSkullTime(0)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your skull has been removed!")
		god:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your was removed "..param.." skull!")
	else
		god:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can only remove red or black skulls!")
		god:getPosition():sendMagicEffect(CONST_ME_POFF)
	end
    return false
end
