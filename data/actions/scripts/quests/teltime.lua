  local config =
{
    newPos = {x=330, y=633, z=6}, -- New player position
    teleportPos = {x=160, y=51, z=8}, -- Teleport position
    LeverPos = {x=159, y=52, z=8}, -- Lever position
    timeToRemove = 10 -- Seconds
}

function onUse(cid, item, frompos, item2, topos)
local teleport = getTileItemById(config.teleportPos, 1387)
local playerPos = getCreaturePosition(cid)
    if item.itemid == 1945 then
        doCreateTeleport(1387, config.newPos, config.teleportPos)
        doSendMagicEffect(config.teleportPos, CONST_ME_TELEPORT)
        doSendMagicEffect(playerPos, CONST_ME_GIFT_WRAPS)
        doCreatureSay(cid, "The teleport has been created!", TALKTYPE_ORANGE_1)
        addEvent(doRemoveTeleport, config.timeToRemove * 1000)
    elseif item.itemid == 1946 then
        doPlayerSendCancel(cid, "O teleport foi criado! Se entrar agora só poderá voltar no final do desafio.")
    return TRUE
    end
end

function doRemoveTeleport()
local teleport = getTileItemById(config.teleportPos, 1387)
local Lever = getTileItemById(config.LeverPos, 1946)
    if teleport.uid > 0 then
        doRemoveItem(teleport.uid)
        doSendMagicEffect(config.teleportPos, CONST_ME_POFF)
        doTransformItem(Lever.uid, 1945)
    end
end 