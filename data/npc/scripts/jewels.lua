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

shopModule:addSellableItem({'white pearl'}, 2143, 160, 'white pearl')
shopModule:addSellableItem({'black pearl'}, 2144, 280, 'black pearl')
shopModule:addSellableItem({'small diamond'}, 2145, 300, 'small diamond')
shopModule:addSellableItem({'small sapphire'}, 2146, 250, 'small sapphire')
shopModule:addSellableItem({'small ruby'}, 2147, 250, 'small ruby')
shopModule:addSellableItem({'small emerald'}, 2149, 250, 'small emerald')
shopModule:addSellableItem({'small amethyst'}, 2150, 200, 'small amethyst')
shopModule:addSellableItem({'small topaz'}, 9970, 250, 'small topaz')
shopModule:addSellableItem({'gold ingot'}, 9971, 5000, 'gold ingot')
shopModule:addSellableItem({'talon'}, 2151, 320, 'talon')
shopModule:addSellableItem({'scarab coin'},	2159, 100, 'scarab coin')
shopModule:addSellableItem({'giant shimmering pearl'},	7632, 3000, 'giant shimmering pearl')

shopModule:addBuyableItem({'white pearl'}, 2143, 320, 'white pearl')
shopModule:addBuyableItem({'black pearl'}, 2144, 560, 'black pearl')
shopModule:addBuyableItem({'small diamond'}, 2145, 600, 'small diamond')
shopModule:addBuyableItem({'small sapphire'}, 2146, 500, 'small sapphire')
shopModule:addBuyableItem({'small ruby'}, 2147, 500, 'small ruby')
shopModule:addBuyableItem({'small emerald'}, 2149, 500, 'small emerald')
shopModule:addBuyableItem({'small amethyst'}, 2150, 400, 'small amethyst')

shopModule:addBuyableItem({'bronze goblet'}, 5807, 2000, 'bronze goblet')
shopModule:addBuyableItem({'silver goblet'}, 5806, 3000, 'silver goblet')
shopModule:addBuyableItem({'golden goblet'}, 5805, 5000, 'golden goblet')

shopModule:addBuyableItem({'wedding ring'}, 2121, 990, 'wedding ring')
shopModule:addBuyableItem({'golden amulet'}, 2130, 6600, 'golden amulet')
shopModule:addBuyableItem({'ruby necklace'}, 2133, 3560, 'ruby necklace')

npcHandler:addModule(FocusModule:new())