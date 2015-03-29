function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 18521 then
		if player:getStorageValue(10057) == 1 then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been recived with the first crystal warlord addon.")
		else
			player:addOutfitAddon(512, 1)
			player:addOutfitAddon(513, 1)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the first crystal warlord addon.")
			player:setStorageValue(10057, 1)
		end
	elseif item.itemid == 18522 then
		if player:getStorageValue(10058) == 1 then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been recived with the second crystal warlord addon.")
		else
			player:addOutfitAddon(512, 2)
			player:addOutfitAddon(513, 2)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_BLUE)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the second crystal warlord addon.")
			player:setStorageValue(10058, 1)
		end
	elseif item.itemid == 18518 then
		if player:getStorageValue(10059) == 1 then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been recived with the first soil guardian addon.")
		else
			player:addOutfitAddon(516, 1)
			player:addOutfitAddon(514, 1)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the first soil guardian addon.")
			player:setStorageValue(10059, 1)
		end
	elseif item.itemid == 18519 then
		if player:getStorageValue(10060) == 1 then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return player:sendCancelMessage("You already have been recived with the second soil guardian addon.")
		else
			player:addOutfitAddon(516, 2)
			player:addOutfitAddon(514, 2)
			item:remove()
			player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have recived the second soil guardian addon.")
			player:setStorageValue(10060, 1)
		end
	end
	return true
end