local config = {
	daily = "no", -- allow only one enter per day? (like in global Tibia)
	level = 100,
	storage = 30015,
	entry =
	{
		{x = 247, y = 72, z = 7},
		{x = 246, y = 72, z = 7},
		{x = 245, y = 72, z = 7},
		{x = 244, y = 72, z = 7}
	},
	destination =
	{
		{x = 247, y = 76, z = 14},
		{x = 246, y = 76, z = 14},
		{x = 245, y = 76, z = 14},
		{x = 244, y = 76, z = 14}
	}
}

config.daily = getBooleanFromString(config.daily)
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 1946) then
		if(config.daily) then
			doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
		else
			doTransformItem(item.uid, item.itemid - 1)
		end

		return true
	end

	if(item.itemid ~= 1945) then
		return true
	end

	local players = {}
	for _, position in ipairs(config.entry) do
		local pid = getTopCreature(position).uid
		if(pid == 0 or not isPlayer(pid) or getCreatureStorage(pid, config.storage) > 0 or getPlayerLevel(pid) < config.level) then
			doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
			return true
		end

		table.insert(players, pid)
	end

	for i, pid in ipairs(players) do
		doSendMagicEffect(config.entry[i], CONST_ME_POFF)
		doTeleportThing(pid, config.destination[i], false)
		doSendMagicEffect(config.destination[i], CONST_ME_ENERGYAREA)
	end

	doTransformItem(item.uid, item.itemid + 1)
	return true
end
