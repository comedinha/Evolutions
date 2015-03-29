function onStepIn(creature, item, position, fromPosition)
	local gobletPos = item:getPosition()
	if item.actionid == 42360 then
		if creature:getStorageValue(42360) ~= 1 then
			creature:setStorageValue(42360, 1)
			local goblet = Game.createItem(5807, 1, {x=gobletPos.x,y=gobletPos.y-1,z=gobletPos.z})
			goblet:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, "It is given to the courageous victor of the barbarian arena greenhorn difficulty.\nAwarded to " .. creature:getName() .. ".")
		end
	elseif item.actionid == 42370 then
		if creature:getStorageValue(42370) ~= 1 then
			creature:setStorageValue(42370, 1)
			local goblet = Game.createItem(5806, 1, {x=gobletPos.x,y=gobletPos.y-1,z=gobletPos.z})
			goblet:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, "It is given to the courageous victor of the barbarian arena scrapper difficulty.\nAwarded to " .. creature:getName() .. ".")
		end
	elseif item.actionid == 42380 then
		if creature:getStorageValue(42380) ~= 1 then
			creature:setStorageValue(42380, 1)
			local goblet = Game.createItem(5805, 1, {x=gobletPos.x,y=gobletPos.y-1,z=gobletPos.z})
			goblet:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, "It is given to the courageous victor of the barbarian arena warlord difficulty.\nAwarded to " .. creature:getName() .. ".")
		end
	end
	return true
end