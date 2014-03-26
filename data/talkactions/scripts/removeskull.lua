function onSay(cid, words, param)
	local player = Player(cid)
	if player:getPremiumDays() >= 3 then
		if player:removeMoney(1000000) then
			if isInArray({4, 5}, player:getSkull()) then
				player:removePremiumDays(3)
				player:setSkull(0)
				player:setSkullTime(0)
				player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your skull has been removed!")
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can only remove red or black skulls!")
				player:getPosition():sendMagicEffect(CONST_ME_POFF)
			end
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need have 1kk!")
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need have 3 premium days!")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
    end
    return false
end
