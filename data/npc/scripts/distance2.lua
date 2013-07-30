local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'bow'}, 2456, 400, 'bow')
shopModule:addBuyableItem({'crossbow'}, 2455, 500, 'crossbow')
shopModule:addBuyableItem({'royal spear'}, 7378, 15, 'royal spear')
shopModule:addBuyableItem({'spear'}, 2389, 10, 'spear')
shopModule:addBuyableItem({'arrow'}, 2544, 3, 'arrow')
shopModule:addBuyableItem({'sniper arrow'}, 7364, 5, 'sniper arrow')
shopModule:addBuyableItem({'bolt'}, 2543, 4, 'bolt')
shopModule:addBuyableItem({'earth arrow'}, 7850, 5, 'earth arrow')
shopModule:addBuyableItem({'flaming arrow'}, 7840, 5, 'flaming arrow')
shopModule:addBuyableItem({'flash arrow'}, 7838, 5, 'flash arrow')
shopModule:addBuyableItem({'onyx arrow'}, 7365, 7, 'onyx arrow')
shopModule:addBuyableItem({'power bolt'}, 2547, 7, 'power bolt')
shopModule:addBuyableItem({'throwing star'}, 2399, 42, 'throwing star')
shopModule:addBuyableItem({'shiver arrow'}, 7839, 5, 'shiver arrow')
shopModule:addBuyableItem({'piercing bolt'}, 7363, 5, 'piercing bolt')
shopModule:addBuyableItem({'assassin star'}, 7368, 100, 'assassin star')
shopModule:addBuyableItem({'throwing knife'}, 2410, 25, 'throwing knife')

shopModule:addSellableItem({'bow'}, 2456, 130, 'bow')
shopModule:addSellableItem({'crossbow'}, 2455, 160, 'crossbow')
shopModule:addSellableItem({'spear'}, 2389, 3, 'spear')

npcHandler:addModule(FocusModule:new())