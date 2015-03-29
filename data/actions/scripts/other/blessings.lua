function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 11262 then
		if player:hasBlessing(1) then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been blessed with the Wisdom of Solitude.")
		else
			player:addBlessing(1)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Wisdom of Solitude.")
		end
	elseif item.itemid == 11258 then
		if player:hasBlessing(2) then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been blessed with the Spark of the Phoenix.")
		else
			player:addBlessing(2)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Spark of the Phoenix.")
		end
	elseif item.itemid == 11261 then
		if player:hasBlessing(3) then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been blessed with the Fire of the Suns.")
		else
			player:addBlessing(3)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Fire of the Suns.")
		end
	elseif item.itemid == 11260 then
		if player:hasBlessing(4) then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been blessed with the Spiritual Shielding.")
		else
			player:addBlessing(4)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Spiritual Shielding.")
		end
	elseif item.itemid == 11259 then
		if player:hasBlessing(5) then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been blessed with the Embrace of Tibia.")
		else
			player:addBlessing(5)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the Embrace of Tibia.")
		end
		return true
	end
end