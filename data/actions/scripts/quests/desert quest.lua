local config = {
    -- level needed to make the quest
    level = 20,

    -- if players should be able to do the quest unlimited amount of times (not conflicting quest rewards)
    redo = {
        status = true, -- true = unlimited, false = once
        storageValue = 4535 -- only if status is false this will be used
    },
 
    -- vocation requirement, positions and item configuration
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

function onUse(cid)
    local players = {}
    for _, v in ipairs(config) do
 
        v.playerPos.stackpos = 253
        local player = getThingfromPos(v.playerPos).uid
 
        if isPlayer(player) == FALSE then
            return doPlayerSendCancel(cid, "There are not enough players.")
        elseif getPlayerLevel(player) < config.level then
            players.level = true
        elseif isInArray(v.vocations, getPlayerVocation(player)) == FALSE then
            players.vocation = true
        elseif config.redo.status and getPlayerStorageValue(cid, config.redo.storageValue) ~= TRUE then
            players.done = true
        else
            v.itemPos.stackpos = 1
            local item = getThingfromPos(v.itemPos)
 
            if item.itemid ~= v.itemId then
                players.item = true
            else
                table.insert(players, player)
            end
        end
    end

    if players.level then
        doPlayerSendCancel(cid, "All players need to be level " .. config.level .. " or above.")
    elseif players.vocation then
        doPlayerSendCancel(cid, "All players must stand on the correct tiles.")
    elseif players.done then
        doPlayerSendCancel(cid, "A player in your team has already done this quest.")
    elseif players.item then
        doPlayerSendCancel(cid, "All items must be on the correct positions.")
    else
        for k, player in ipairs(players) do
            doSendMagicEffect(getCreaturePosition(player), CONST_ME_POFF)
            doTeleportThing(player, config[k].newPos)
            doSendMagicEffect(getCreaturePosition(player), CONST_ME_TELEPORT)
        end
    end
 
    return TRUE
end