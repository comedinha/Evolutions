local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end


-------------------------------------Healing Part------------------------------
function healCreature(cid, message, keywords, parameters)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
	if(getCreatureHealth(cid) < 65) then
		local position = getCreaturePosition(cid)
		doSendMagicEffect(position, 12)
		local healHP = 65 - getCreatureHealth(cid)
		doCreatureAddHealth(cid,healHP)
		doRemoveCondition(cid, CONDITION_ENERGY)
		doRemoveCondition(cid, CONDITION_FIRE)
		doRemoveCondition(cid, CONDITION_POISON)
		doRemoveCondition(cid, CONDITION_FREEZING)
		doRemoveCondition(cid, CONDITION_DAZZLED)
		doRemoveCondition(cid, CONDITION_CURSED)
		npcHandler:say('You are looking really bad. Let me heal your wounds.', cid)
	else
		npcHandler:say('You aren\'t looking really bad, ' .. getCreatureName(cid) .. '. I only help in cases of real emergencies. Raise your health simply by eating food.', cid)
	end	
	return true
end

function healCreatureNoMsg(cid, maxheal)
	if(getCreatureHealth(cid) < 65) then
		local position = getCreaturePosition(cid)
		doSendMagicEffect(position, 12)
		local healHP = 65 - getCreatureHealth(cid)
		doCreatureAddHealth(cid,healHP)
		doRemoveCondition(cid, CONDITION_ENERGY)
		doRemoveCondition(cid, CONDITION_FIRE)
		doRemoveCondition(cid, CONDITION_POISON)
		doRemoveCondition(cid, CONDITION_FREEZING)
		doRemoveCondition(cid, CONDITION_DAZZLED)
		doRemoveCondition(cid, CONDITION_CURSED)
	end	
	return true
end

function greet(cid, message, keywords, parameters)       
		if(getCreatureHealth(cid) >= 65) then
			npcHandler:setMessage(MESSAGE_GREET, 'Hello, ' .. getCreatureName(cid) .. '! I will heal you if you are injured. Feel free to ask me for help.')
		else
		npcHandler:setMessage(MESSAGE_GREET, 'Hello, ' .. getCreatureName(cid) .. '! You are looking really bad. Let me heal your wounds.')
			healCreatureNoMsg(cid, 65)
		end	
		return true
end

npcHandler:setCallback(CALLBACK_GREET, greet)
keywordHandler:addKeyword({'heal'},     healCreature, {maxheal = 65})

local node1 = keywordHandler:addKeyword({'first bless'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the first blessing for 10000 gold?'})
	node1:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, bless = 1, premium = true, cost = 10000})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local node2 = keywordHandler:addKeyword({'second bless'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the second blessing for 10000 gold?'})
	node2:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, bless = 2, premium = true, cost = 10000})
	node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local node3 = keywordHandler:addKeyword({'third bless'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the third blessing for 10000 gold?'})
	node3:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, bless = 3, premium = true, cost = 10000})
	node3:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local node4 = keywordHandler:addKeyword({'fourth bless'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the fourth blessing for 10000 gold?'})
	node4:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, bless = 4, premium = true, cost = 10000})
	node4:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local node5 = keywordHandler:addKeyword({'fifth bless'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the fifth blessing for 10000 gold?'})
	node5:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, bless = 5, premium = true, cost = 10000})
	node5:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
	
npcHandler:addModule(FocusModule:new())