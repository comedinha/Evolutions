local config = {
    level = 20,
    redo = {
        status = true,
        storageValue = 4535
    },
    {
        vocations = {1, 5},
        itemId = 2175,
        playerPos = {x=41, y=84, z=8},
        newPos = {x=35, y=123, z=8},
        itemPos = {x=42, y=84, z=8}
    },
    {
        vocations = {2, 6},
        itemId = 2674,
        playerPos = {x=31, y=84, z=8},
        newPos = {x=33, y=123, z=8},
        itemPos = {x=30, y=84, z=8}
    },
    {
        vocations = {3, 7},
        itemId = 2455,
        playerPos = {x=26, y=87, z=8},
        newPos = {x=35, y=122, z=8},
        itemPos = {x=36, y=88, z=8}
    },
    {
        vocations = {4, 8},
        itemId = 2376,
        playerPos = {x=36, y=80, z=8},
        newPos = {x=33, y=122, z=8},
        itemPos = {x=36, y=79, z=8}
    }
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local players = {}
    for _, v in ipairs(config) do
 
        v.playerPos.stackpos = 253
        local users = getThingfromPos(v.playerPos).uid
        if Player(users) == nil then
            return doPlayerSendCancel(cid, "There are not enough players.")
        elseif users:getLevel() < config.level then
            players.level = true
        elseif isInArray(v.vocations, users:getVocation():getId()) == FALSE then
            players.vocation = true
        elseif config.redo.status and player:getStorageValue(config.redo.storageValue) ~= TRUE then
            players.done = true
        else
            v.itemPos.stackpos = 1
            local item = getThingfromPos(v.itemPos)
 
            if item.itemid ~= v.itemId then
                players.item = true
            else
                table.insert(players, users)
            end
        end
    end

	if players.level then
		player:sendCancelMessage("All players need to be level " .. config.level .. " or above.")
	elseif players.vocation then
		player:sendCancelMessage("All players must stand on the correct tiles.")
	elseif players.done then
		player:sendCancelMessage("A player in your team has already done this quest.")
	elseif players.item then
		player:sendCancelMessage("All items must be on the correct positions.")
    else
        for k, users in ipairs(users) do
			users:getPosition():sendMagicEffect(CONST_ME_POFF)
			users:teleportTo(config[k].newPos, false)
			users:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        end
    end
    return true
end