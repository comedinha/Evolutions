local BLESSINGS = {"Wisdom of Solitude", "Spark of the Phoenix", "Fire of the Suns", "Spiritual Shielding", "Embrace of Tibia", "Twist of Fate"}
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local result = ""
	for i = 1, (table.maxn(BLESSINGS) - 1) do
		result = (player:hasBlessing(i) and result .. (result:len() > 0 and ", " or "") .. BLESSINGS[i] or result)
	end
	if player:hasBlessing() == table.maxn(BLESSINGS) - 1 then
		result = result .. ", " .. BLESSINGS[table.maxn(BLESSINGS)]
	end
	return player:sendTextMessage(MESSAGE_INFO_DESCR, result:len() > 0 and "Currently you have the following blessings: " .. result .. "." or "You do not have any blessing.")
end