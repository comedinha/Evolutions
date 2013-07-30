local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'orange'}, 2675, 10, 'orange')
shopModule:addBuyableItem({'banana'}, 2676, 5, 'banana')
shopModule:addBuyableItem({'blueberry'}, 2677, 1, 'blueberry')
shopModule:addBuyableItem({'cherry'}, 2679, 1, 'cherry')
shopModule:addBuyableItem({'strawberry'}, 2680, 2, 'strawberry')
shopModule:addBuyableItem({'grape'}, 2680, 3, 'grapes')
shopModule:addBuyableItem({'melon'}, 2682, 10, 'melon')
shopModule:addBuyableItem({'pumpkin'}, 2683, 10, 'pumpkin')
shopModule:addBuyableItem({'carrot'}, 2684, 3, 'carrot')
shopModule:addBuyableItem({'corncob'}, 2686, 3, 'corncob')
shopModule:addBuyableItem({'lemon'}, 8841, 3, 'lemon')
shopModule:addBuyableItem({'mango'}, 5097, 10, 'mango')
shopModule:addBuyableItem({'potato'}, 8838, 4, 'potato')
shopModule:addBuyableItem({'white mushroom'}, 2787, 10, 'white mushroom')
shopModule:addBuyableItem({'juice squeezer'}, 5865, 100, 'juice squeezer')





npcHandler:addModule(FocusModule:new())