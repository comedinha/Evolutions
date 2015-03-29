function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	
	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end
	
	for _, pid in ipairs(Game.getPlayers()) do
		local split = param:split(",")

		local itemType = ItemType(split[1])
		if itemType:getId() == 0 then
			itemType = ItemType(tonumber(split[1]))
			if itemType:getId() == 0 then
				player:sendCancelMessage("There is no item with that id or name.")
				return false
			end
		end
		
		local count = tonumber(split[2])
		if count ~= nil then
			if itemType:isStackable() then
				count = math.min(10000, math.max(1, count))
			elseif not itemType:hasSubType() then
				count = math.min(100, math.max(1, count))
			else
				count = math.max(1, count)
			end
		else
			count = 1
		end

		local result = pid:addItem(itemType:getId(), count)
		if result ~= nil then
			if not itemType:isStackable() then
				if type(result) == "table" then
					for _, item in ipairs(result) do
						item:decay()
					end
				else
					result:decay()
				end
			end
		end
		pid:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "The "..player:getName().." give ("..count.."x) "..itemType:getName().." for all online players.")
		pid:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	end
	return true
end
