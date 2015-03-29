function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	
	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end
	
	if(param == '') then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end
	
	local target = Player(param)
	if isInArray({4, 5}, target:getSkull()) then
		target:setSkull(0)
		target:setSkullTime(0)
		target:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
		target:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your skull has been removed!")
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your was removed "..param.." skull!")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can only remove red or black skulls!")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	end
    return false
end
