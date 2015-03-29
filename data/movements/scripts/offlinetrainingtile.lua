local config = {
	offlineLevel = 8,
	needPremium = false,
	backPosition = {x = 97, y = 48, z = 9}
}

function onStepIn(creature, item, position, fromPosition)
	if config.needPremium == true and creature:getPremiumDays() < 1 then
		creature:teleportTo(config.backPosition, false)
		return creature:sendCancelMessage("Offline trainer is only for premiums")
	end
	if creature:getLevel() < config.offlineLevel then
		creature:teleportTo(config.backPosition, false)
		return creature:sendCancelMessage("The level to enter here is "..config.offlineLevel.."")
	end
end