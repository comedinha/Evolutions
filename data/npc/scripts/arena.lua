local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg)	end
function onThink() 							npcHandler:onThink()						end

function enterArena(cid, message, keywords, parameters, node)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
	local cost = 0
	local levelname = ''
	if getPlayerStorageValue(cid, 42355) < 1 then
		cost = 1000
		levelname = 'greenshore'
		levelneeded = 30
	elseif getPlayerStorageValue(cid, 42355) == 1 then
		cost = 5000
		levelname = 'scrapper'
		levelneeded = 50
	elseif getPlayerStorageValue(cid, 42355) == 2 then
		cost = 10000
		levelname = 'warlord'
		levelneeded = 80
	end
	if string.lower(keywords[1]) == 'yes' and parameters.prepare ~= 1 then
		if(getPlayerLevel(cid) >= levelneeded) then
			if(getPlayerMoney(cid) >= cost) then
				doPlayerRemoveMoney(cid, cost)
				npcHandler:say('Now you can go to test.', cid)
				setPlayerStorageValue(cid, 42351, 1)
			else
				npcHandler:say('You don\'t have ' .. cost .. ' gp! Come back when you will be ready!', cid)
		    end
		else
			npcHandler:say('You don\'t have ' .. levelneeded .. ' level! Come back when you will be ready!', cid)
		end
		npcHandler:resetNpc()
	elseif string.lower(keywords[1]) == 'no' then
		npcHandler:say('Come back later then!', cid)
		npcHandler:resetNpc()
	else
		if getPlayerStorageValue(cid, 42355) < 3 then
			npcHandler:say('You test will be ' .. levelname .. ' level. If you want enter you must pay ' .. cost .. ' gp and have ' .. levelneeded .. ' level. Wanna try?', cid)
		else
			npcHandler:say('You did all arena levels.',cid)
		end
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|! Do you want to make arena?')

local yesNode = KeywordNode:new({'yes'}, enterArena, {})
local noNode = KeywordNode:new({'no'}, enterArena, {})

local node1 = keywordHandler:addKeyword({'arena'}, enterArena, {prepare=1})
	node1:addChildKeywordNode(yesNode)
	node1:addChildKeywordNode(noNode)
	
local node1 = keywordHandler:addKeyword({'fight'}, enterArena, {prepare=1})
	node1:addChildKeywordNode(yesNode)
	node1:addChildKeywordNode(noNode)
local node1 = keywordHandler:addKeyword({'yes'}, enterArena, {prepare=1})
	node1:addChildKeywordNode(yesNode)
	node1:addChildKeywordNode(noNode)
npcHandler:addModule(FocusModule:new())