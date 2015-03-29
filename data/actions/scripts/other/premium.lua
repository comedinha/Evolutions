function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getPremiumDays() > 360 then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return player:sendCancelMessage("You can not have more than 360 days of premium.")
	else
		player:addPremiumDays(30)
		item:remove(1)
		return player:sendCancelMessage("You just received 30 days of premium.")
	end
	return false
end