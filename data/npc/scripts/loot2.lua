local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)    npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                        npcHandler:onThink()                        end

function thinkCallback(cid)
	local rand = math.random(1,100)
	if rand == 1 then
		selfSay('I buy armor and shields, i pays well. Besides, Im the one who buy.')
	end
	return true
end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'steel helmet', 'steel helmet'},			2457, 293,		'steel helmet')
shopModule:addSellableItem({'chain helmet', 'chain helmet'},			2458, 17,		'chain helmet')
shopModule:addSellableItem({'iron helmet', 'iron helmet'},				2459, 150,		'iron helmet')
shopModule:addSellableItem({'brass helmet', 'brass helmet'},			2460, 30,		'brass helmet')
shopModule:addSellableItem({'leather helmet', 'leather helmet'},		2461, 4,		'leather helmet')
shopModule:addSellableItem({'devil helmet', 'devil helmet'},			2462, 1000,		'devil helmet')
shopModule:addSellableItem({'golden helmet', 'golden helmet'},			2471, 450,	'golden helmet')
shopModule:addSellableItem({'viking helmet', 'viking helmet'},			2473, 66,		'viking helmet')
shopModule:addSellableItem({'winged helmet', 'winged helmet'},			2474, 320,	'winged helmet')
shopModule:addSellableItem({'warrior helmet', 'warrior helmet'},		2475, 5000,		'warrior helmet')
shopModule:addSellableItem({'strange helmet', 'strange helmet'},		2479, 500,		'strange helmet')
shopModule:addSellableItem({'legion helmet', 'legion helmet'},			2480, 22,		'legion helmet')
shopModule:addSellableItem({'soldier helmet', 'soldier helmet'},		2481, 16,		'soldier helmet')
shopModule:addSellableItem({'studded helmet', 'studded helmet'},		2482, 20,		'studded helmet')
shopModule:addSellableItem({'dark helmet', 'dark helmet'},				2490, 250,		'dark helmet')
shopModule:addSellableItem({'crown helmet', 'crown helmet'},			2491, 2500,		'crown helmet')
shopModule:addSellableItem({'demon helmet', 'demon helmet'},			2493, 40000,	'demon helmet')
shopModule:addSellableItem({'horned helmet', 'horned helmet'},			2496, 155,	'horned helmet')
shopModule:addSellableItem({'crusader helmet', 'crusader helmet'},		2497, 6000,		'crusader helmet')
shopModule:addSellableItem({'royal helmet', 'royal helmet'},			2498, 30000,	'royal helmet')
shopModule:addSellableItem({'ceremonial mask', 'ceremonial mask'},		2501, 1000,		'ceremonial mask')
shopModule:addSellableItem({'dwarven helmet', 'dwarven helmet'},		2502, 10000,	'dwarven helmet')
shopModule:addSellableItem({'mystic turban', 'mystic turban'},			2663, 150,		'mystic turban')
shopModule:addSellableItem({'tribal mask', 'tribal mask'},				3967, 250,		'tribal mask')
shopModule:addSellableItem({'horseman helmet', 'horseman helmet'},		3969, 280,		'horseman helmet')
shopModule:addSellableItem({'feather headdress', 'feather head'},		3970, 850,		'feather headdress')
shopModule:addSellableItem({'charmer tiara', 'charmer tiara'},			3971, 900,	'charmer tiara')
shopModule:addSellableItem({'bonelord helmet', 'bonelord helmet'},		3972, 7500,	'bonelord helmet')
shopModule:addSellableItem({'santa hat', 'santa hat'},					6531, 5000,		'santa hat')
shopModule:addSellableItem({'skull helmet', 'skull helmet'},			5741, 40000,	'skull helmet')
shopModule:addSellableItem({'pirate hat', 'pirate hat'},				6096, 1000,		'pirate hat')
shopModule:addSellableItem({'krimhorn helmet', 'krimhorn helmet'},		7461, 200,		'krimhorn helmet')
shopModule:addSellableItem({'ragnir helmet', 'ragnir helmet'},			7462, 400,		'ragnir helmet')
shopModule:addSellableItem({'cobra crown', 'cobra crown'},				12630, 50000,	'cobra crown')
shopModule:addSellableItem({'jade hat', 'jade hat'},					11368, 9000,	'jade hat')
shopModule:addSellableItem({'Zaoan helmet', 'Zaoan helmet'},			11302, 45000,	'Zaoan helmet')
shopModule:addSellableItem({'pair of earmuffs', 'pair of earmuffs'},	7459, 1000,		'pair of earmuffs')
shopModule:addSellableItem({'terra hood', 'terra hood'},				7903, 3500,		'terra hood')
shopModule:addSellableItem({'lighting headband', 'lighba'},				7901, 8000,		'lighting headband')
shopModule:addSellableItem({'glacier mask', 'glacier mask'},			7902, 4000,		'glacier mask')
shopModule:addSellableItem({'helmet of the deep', 'hotd'},				5461, 5000,		'helmet of the deep')
shopModule:addSellableItem({'depth galea', 'depth galea'},				15408, 35000,	'depth galea')

shopModule:addSellableItem({'dragon scale mail', 'dsm'},						2492, 40000,	'dragon scale mail')
shopModule:addSellableItem({'dwarven armor', 'dwarven armor'},					2503, 30000,	'dwarven armor')
shopModule:addSellableItem({'golden armor', 'golden armor'},					2466, 20000,	'golden armor')
shopModule:addSellableItem({'leopard armor', 'leopard armor'},					3968, 1000,		'leopard armor')
shopModule:addSellableItem({'mammoth fur cape', 'mfc'},							7463, 6000,		'mammoth fur cape')
shopModule:addSellableItem({'plate armor', 'plate armor'},						2463, 400,		'plate armor')
shopModule:addSellableItem({'chain armor', 'chain armor'},						2464, 70,		'chain armor')
shopModule:addSellableItem({'brass armor', 'brass armor'},						2465, 150,		'brass armor')
shopModule:addSellableItem({'leather armor', 'leather armor'},					2467, 12,		'leather armor')
shopModule:addSellableItem({'magic plate armor', 'magic plate armor'},			2472, 90000,	'magic plate armor')
shopModule:addSellableItem({'knight armor', 'knight armor'},					2476, 5000,		'knight armor')
shopModule:addSellableItem({'scale armor', 'scale armor'},						2483, 75,		'scale armor')
shopModule:addSellableItem({'studded armor', 'studded armor'},					2484, 25,		'studded armor')
shopModule:addSellableItem({'doublet', 'doublet'},								2485, 3,		'doublet')
shopModule:addSellableItem({'noble armor', 'noble armor'},						2486, 900,		'noble armor')
shopModule:addSellableItem({'crown armor', 'crown armor'},						2487, 12000,	'crown armor')
shopModule:addSellableItem({'pirate shirt', 'pirate shirt'},					6095, 500,		'pirate shirt')
shopModule:addSellableItem({'dark armor', 'dark armor'},						2489, 400,		'dark armor')
shopModule:addSellableItem({'demon armor', 'demon armor'},						2494, 195,		'demon armor')
shopModule:addSellableItem({'native armor', 'native armor'},					2508, 3000,		'native armor')
shopModule:addSellableItem({'jacket', 'jacket'},								2650, 1,		'jacket')
shopModule:addSellableItem({'blue robe', 'blue robe'},							2656, 10000,	'blue robe')
shopModule:addSellableItem({'rangers cloak', 'rangers cloak'},					2660, 250,		'rangers cloak')
shopModule:addSellableItem({'terra mantle', 'terra mantle'},					7884, 11000,	'terra mantle')
shopModule:addSellableItem({'glacier robe', 'glacier robe'},					7897, 11000,	'glacier robe')
shopModule:addSellableItem({'lightning robe', 'lightning robe'},				7898, 11000,	'lightning robe')
shopModule:addSellableItem({'magma coat', 'magma coat'},						7899, 11000,	'magma coat')
shopModule:addSellableItem({'belted cape', 'belted cape'},						8872, 500,		'belted cape')
shopModule:addSellableItem({'calopteryx cape', 'calopteryx cape'},				15489, 15000,	'calopteryx cape')
shopModule:addSellableItem({'crystalline armor', 'crystalline armor'},			8878, 16000,	'crystalline armor')
shopModule:addSellableItem({'depth lorica', 'depth lorica'},					15407, 8000,	'depth lorica')
shopModule:addSellableItem({'earthborn titan armor', 'earthborn titan armor'},	15407, 2000,	'earthborn titan armor')
shopModule:addSellableItem({'elite draken mail', 'elite draken mail'},			12607, 50000,	'elite draken mail')
shopModule:addSellableItem({'focus cape', 'focus cape'},						8871, 6000,		'focus cape')
shopModule:addSellableItem({'glacier robe', 'glacier robe'},					7897, 11000,	'glacier robe')
shopModule:addSellableItem({'lightning robe', 'lightning robe'},				7898, 11000,	'lightning robe')
shopModule:addSellableItem({'paladin armor', 'paladin armor'},					8891, 15000,	'paladin armor')
shopModule:addSellableItem({'skullcracker armor', 'skullcracker armor'},		8889, 18000,	'skullcracker armor')
shopModule:addSellableItem({'spellweavers robe', 'spellweavers robe'},			11355, 12000,	'spellweavers robe')
shopModule:addSellableItem({'swamplair armor', 'swamplair armor'},				8880, 16000,	'swamplair armor')
shopModule:addSellableItem({'Zaoan armor', 'Zaoan armor'},						11301, 14000,	'Zaoan armor')
shopModule:addSellableItem({'Zaoan robe', 'Zaoan robe'},						11356, 12000,	'Zaoan robe')
shopModule:addSellableItem({'fur cap', 'fur cap'},								7458, 30000,	'fur cap')

shopModule:addSellableItem({'studded legs', 'studded legs'},			2468, 15,		'studded legs')
shopModule:addSellableItem({'dragon scale legs', 'dsl'},				2469, 180,		'dragon scale legs')
shopModule:addSellableItem({'golden legs', 'golden legs'},				2470, 30000,	'golden legs')
shopModule:addSellableItem({'knight legs', 'knight legs'},				2477, 5000,		'knight legs')
shopModule:addSellableItem({'brass legs', 'brass legs'},				2478, 49,		'brass legs')
shopModule:addSellableItem({'crown legs', 'crown legs'},				2488, 12000,	'crown legs')
shopModule:addSellableItem({'demon legs', 'demon legs'},				2495, 84,		'demon legs')
shopModule:addSellableItem({'dwarven legs', 'dwarven legs'},			2504, 40000,	'dwarven legs')
shopModule:addSellableItem({'plate legs', 'plate legs'},				2647, 115,		'plate legs')
shopModule:addSellableItem({'chain legs', 'chain legs'},				2648, 25,		'chain legs')
shopModule:addSellableItem({'leather legs', 'leather legs'},			2649, 9,		'leather legs')
shopModule:addSellableItem({'mammoth fur shorts', 'mfs'},				7464, 850,		'mammoth fur shorts')
shopModule:addSellableItem({'terra legs', 'terra legs'},				7885, 11000,	'terra legs')
shopModule:addSellableItem({'magma legs', 'magma legs'},				7894, 11000,	'magma legs')
shopModule:addSellableItem({'lightning legs', 'lightning legs'},		7895, 11000,	'lightning legs')
shopModule:addSellableItem({'glacier kilt', 'glacier kilt'},			7896, 11000,	'glacier kilt')
shopModule:addSellableItem({'bast skirt', 'bast skirt'},				3983, 750,		'bast skirt')
shopModule:addSellableItem({'blue legs', 'blue legs'},					7730, 15000,	'blue legs')
shopModule:addSellableItem({'pirate knee breeches', 'pkb'},				5918, 200,		'pirate knee breeches')
shopModule:addSellableItem({'depth ocrea', 'depth ocrea'},				15409, 1600,	'depth ocrea')
shopModule:addSellableItem({'grasshopper legs', 'grasshopper legs'},	15490, 15000,	'grasshopper legs')
shopModule:addSellableItem({'ornate legs', 'ornate legs'},				15412, 40000,	'ornate legs')
shopModule:addSellableItem({'Zaoan legs', 'Zaoan legs'},				11304, 14000,	'Zaoan legs')

shopModule:addSellableItem({'boots of haste', 'boots of haste'},	2195, 30000,	'boots of haste')
shopModule:addSellableItem({'soft boots', 'soft boots'},			6132, 250000,	'soft boots')
shopModule:addSellableItem({'patched boots', 'patched boots'},		2641, 2000,		'patched boots')
shopModule:addSellableItem({'sandals', 'sandals'},					2642, 1,		'sandals')
shopModule:addSellableItem({'leather boots', 'leather boots'},		2643, 2,		'leather boots')
shopModule:addSellableItem({'bunnyslippers', 'bunnyslippers'},		2644, 1000,		'bunnyslippers')
shopModule:addSellableItem({'steel boots', 'steel boots'},			2645, 35000,	'steel boots')
shopModule:addSellableItem({'golden boots', 'golden boots'},		2646, 2000000,	'golden boots')
shopModule:addSellableItem({'crocodile boots', 'crocodile boots'},	3982, 1000,		'crocodile boots')
shopModule:addSellableItem({'pirate boots', 'pirate boots'},		5462, 3000,		'pirate boots')
shopModule:addSellableItem({'fur boots', 'fur boots'},				7457, 2000,		'fur boots')
shopModule:addSellableItem({'terra boots', 'terra boots'},			7886, 2500,		'terra boots')
shopModule:addSellableItem({'magma boots', 'magma boots'},			7891, 2500,		'magma boots')
shopModule:addSellableItem({'glacier shoes', 'glacier shoes'},		7892, 2500,		'glacier shoes')
shopModule:addSellableItem({'lightning boots', 'lightning boots'},	7893, 2500,		'lightning boots')
shopModule:addSellableItem({'draken boots', 'draken boots'},		12646, 40000,	'draken boots')
shopModule:addSellableItem({'Zaoan shoes', 'Zaoan shoes'},			11303, 5000,	'Zaoan shoes')

shopModule:addSellableItem({'steel shield', 'steel shield'},					2509, 80,		'steel shield')
shopModule:addSellableItem({'plate shield', 'plate shield'},					2510, 45,		'plate shield')
shopModule:addSellableItem({'brass shield', 'brass shield'},					2511, 25,		'brass shield')
shopModule:addSellableItem({'wooden shield', 'wooden shield'},					2512, 5,		'wooden shield')
shopModule:addSellableItem({'battle shield', 'battle shield'},					2513, 95,		'battle shield')
shopModule:addSellableItem({'mastermind shield', 'mastermind shield'},			2514, 50000,	'mastermind shield')
shopModule:addSellableItem({'guardian shield', 'guardian shield'},				2515, 2000,		'guardian shield')
shopModule:addSellableItem({'dragon shield', 'dragon shield'},					2516, 4000,		'dragon shield')
shopModule:addSellableItem({'shield of honour', 'shield of honour'},			2517, 250,		'shield of honour')
shopModule:addSellableItem({'bonelord shield', 'bonelord shield'},				2518, 1200,		'bonelord shield')
shopModule:addSellableItem({'crown shield', 'crown shield'},					2519, 8000,		'crown shield')
shopModule:addSellableItem({'demon shield', 'demon shield'},					2520, 30000,	'demon shield')
shopModule:addSellableItem({'dark shield', 'dark shield'},						2521, 400,		'dark shield')
shopModule:addSellableItem({'great shield', 'great shield'},					2522, 480,		'great shield')
shopModule:addSellableItem({'blessed shield', 'blessed shield'},				2523, 650,		'blessed shield')
shopModule:addSellableItem({'ornamented shield', 'ornamented shield'},			2524, 1500,		'ornamented shield')
shopModule:addSellableItem({'dwarven shield', 'dwarven shield'},				2525, 100,		'dwarven shield')
shopModule:addSellableItem({'studded shield', 'studded shield'},				2526, 16,		'studded shield')
shopModule:addSellableItem({'rose shield', 'rose shield'},						2527, 49,		'rose shield')
shopModule:addSellableItem({'tower shield', 'tower shield'},					2528, 8000,		'tower shield')
shopModule:addSellableItem({'black shield', 'black shield'},					2529, 800,		'black shield')
shopModule:addSellableItem({'copper shield', 'copper shield'},					2530, 50,		'copper shield')
shopModule:addSellableItem({'viking shield', 'viking shield'},					2531, 85,		'viking shield')
shopModule:addSellableItem({'ancient shield', 'ancient shield'},				2532, 900,		'ancient shield')
shopModule:addSellableItem({'griffin shield', 'griffin shield'},				2533, 59,		'griffin shield')
shopModule:addSellableItem({'vampire shield', 'vampire shield'},				2534, 15000,	'vampire shield')
shopModule:addSellableItem({'castle shield', 'castle shield'},					2535, 5000,		'castle shield')
shopModule:addSellableItem({'medusa shield', 'medusa shield'},					2536, 9000,		'medusa shield')
shopModule:addSellableItem({'phoenix shield', 'phoenix shield'},				2539, 16000,	'phoenix shield')
shopModule:addSellableItem({'scarab shield', 'scarab shield'},					2540, 2000,		'scarab shield')
shopModule:addSellableItem({'bone shield', 'bone shield'},						2541, 80,		'bone shield')
shopModule:addSellableItem({'tempest shield', 'tempest shield'},				2542, 35000,	'tempest shield')
shopModule:addSellableItem({'tusk shield', 'tusk shield'},						3973, 850,		'tusk shield')
shopModule:addSellableItem({'sentinel shield', 'sentinel shield'},				3974, 120,		'sentinel shield')
shopModule:addSellableItem({'salamander shield', 'salamander shield'},			3975, 280,		'salamander shield')
shopModule:addSellableItem({'tortoise shield', 'tortoise shield'},				6131, 150,		'tortoise shield')
shopModule:addSellableItem({'nightmare shield', 'nightmare shield'},			6391, 250000,	'nightmare shield')
shopModule:addSellableItem({'necromancer shield', 'necromancer shield'},		6433, 150000,	'necromancer shield')
shopModule:addSellableItem({'norse shield', 'norse shield'},					7460, 1500,		'norse shield')
shopModule:addSellableItem({'carapace shield', 'carapace shield'},				15491, 32000,	'carapace shield')
shopModule:addSellableItem({'ornate shield', 'ornate shield'},					15413, 40000,	'ornate shield')
shopModule:addSellableItem({'shield of corruption', 'shield of corruption'},	12644, 3000000,	'shield of corruption')
shopModule:addSellableItem({'spike shield', 'spike shield'},					20090, 250,		'spike shield')
shopModule:addSellableItem({'warriors shield', 'warriors shield'},				15453, 9000,	'warriors shield')

shopModule:addBuyableItem({'helmet of the deep', 'helmet of the deep'},	5461, 5000,		'helmet of the deep')
shopModule:addBuyableItem({'depth galea', 'depth galea'},				15408, 70000,	'depth galea')

function playerBuyAddonNPC(cid, message, keywords, parameters, node)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    if (parameters.confirm ~= true) and (parameters.decline ~= true) then
        if(getPlayerPremiumDays(cid) == 1) and (parameters.premium == true) then
            npcHandler:say('Sorry, but this addon is only for vip players!', cid)
            npcHandler:resetNpc()
            return true
        end
        if (getPlayerStorageValue(cid, parameters.storageID) ~= -1) then
            npcHandler:say('You already have this addon!', cid)
            npcHandler:resetNpc()
            return true
        end
        local itemsTable = parameters.items
        local items_list = ''
        if table.maxn(itemsTable) > 0 then
            for i = 1, table.maxn(itemsTable) do
                local item = itemsTable[i]
                items_list = items_list .. item[2] .. ' ' .. getItemName(item[1])
                if i ~= table.maxn(itemsTable) then
                    items_list = items_list .. ', '
                end
            end
        end
        local text = ''
        if (parameters.cost > 0) and table.maxn(parameters.items) then
            text = items_list .. ' and ' .. parameters.cost .. ' gp'
        elseif (parameters.cost > 0) then
            text = parameters.cost .. ' gp'
        elseif table.maxn(parameters.items) then
            text = items_list
        end
        npcHandler:say('Did you bring me ' .. text .. ' for ' .. keywords[1] .. '?', cid)
        return true
    elseif (parameters.confirm == true) then
        local addonNode = node:getParent()
        local addoninfo = addonNode:getParameters()
        local items_number = 0
        if table.maxn(addoninfo.items) > 0 then
            for i = 1, table.maxn(addoninfo.items) do
                local item = addoninfo.items[i]
                if (getPlayerItemCount(cid,item[1]) >= item[2]) then
                    items_number = items_number + 1
                end
            end
        end
        if(getPlayerMoney(cid) >= addoninfo.cost) and (items_number == table.maxn(addoninfo.items)) then
            doPlayerRemoveMoney(cid, addoninfo.cost)
            if table.maxn(addoninfo.items) > 0 then
                for i = 1, table.maxn(addoninfo.items) do
                    local item = addoninfo.items[i]
                    doPlayerRemoveItem(cid,item[1],item[2])
                end
            end
            doPlayerAddOutfit(cid, addoninfo.outfit_male, addoninfo.addon)
            doPlayerAddOutfit(cid, addoninfo.outfit_female, addoninfo.addon)
            setPlayerStorageValue(cid,addoninfo.storageID,1)
            npcHandler:say('Here you are.', cid)
        else
            npcHandler:say('You do not have needed items or cash!', cid)
        end
        npcHandler:resetNpc()
        return true
    elseif (parameters.decline == true) then
        npcHandler:say('Not interested? Maybe other addon?', cid)
        npcHandler:resetNpc()
        return true
    end
    return false
end

local noNode = KeywordNode:new({'no'}, playerBuyAddonNPC, {decline = true})
local yesNode = KeywordNode:new({'yes'}, playerBuyAddonNPC, {confirm = true})

local outfit_node = keywordHandler:addKeyword({'first'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5880,100}, {5892,1}}, outfit_female = 139, outfit_male = 131, addon = 1, storageID = 10003})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5893,100}}, outfit_female = 139, outfit_male = 131, addon = 2, storageID = 10004})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
	
keywordHandler:addKeyword({'addon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can give you {first} and {second} Knight addon.'})

npcHandler:setCallback(CALLBACK_ONTHINK, thinkCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  
