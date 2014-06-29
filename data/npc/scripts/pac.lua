local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end

    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

    if(msgcontains(msg, 'bonus')) then
        selfSay('Completed the quests for the bonus?', cid)
        talkState[talkUser] = 1
    elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
        if getPlayerStorageValue(cid, 11551) >= 25 then
			if(getPlayerStorageValue(cid, 11555) == -1) then
				setPlayerStorageValue(cid, 11555, 0)
				doPlayerAddItem(cid, 2160, 10)
				selfSay('Here you are.', cid)
			end
		elseif getPlayerStorageValue(cid, 11551) >= 50 then
			if(getPlayerStorageValue(cid, 11555) == 0) then
				setPlayerStorageValue(cid, 11555, 1)
				doPlayerAddItem(cid, 2160, 50)
				selfSay('Here you are.', cid)
			end
		elseif getPlayerStorageValue(cid, 11551) >= 75 then
			if(getPlayerStorageValue(cid, 11555) == 1) then
				setPlayerStorageValue(cid, 11555, 2)
				doPlayerAddItem(cid, 2160, 100)
				selfSay('Here you are.', cid)
			else
				selfSay('Have you completed all.', cid)
			end
        end
		selfSay('You have completed '..getPlayerStorageValue(cid, 11551)..' quests. And pickup '.. getPlayerStorageValue(cid, 11555)+1 ..' bonus', cid)
        talkState[talkUser] = 0
    elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == true) then
        talkState[talkUser] = 0
        selfSay('Ok then.', cid)
    end

    return true
end

function playerUpgradeUmbral(cid, message, keywords, parameters, node)
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
            npcHandler:say('You already upgraded an item and can not update another!', cid)
            npcHandler:resetNpc()
            return true
        end
        local text = ''
        if (parameters.cost > 0) then
            text = parameters.cost .. ' gp'
		end
        npcHandler:say('Did you bring me ' .. text .. ' for ' .. keywords[1] .. '?', cid)
        return true
    elseif (parameters.confirm == true) then
		local upgradeNode = node:getParent()
		local upgradeinfo = upgradeNode:getParameters()
		print(upgradeinfo.cost)
		print(upgradeinfo.item)
        if(getPlayerMoney(cid) >= upgradeinfo.cost) and (getPlayerItemCount(cid, upgradeinfo.item) >= 1) then
			doPlayerRemoveMoney(cid, upgradeinfo.cost)
			doPlayerRemoveItem(cid,upgradeinfo.item,1)
			doPlayerAddItem(cid, upgradeinfo.item+1)
            setPlayerStorageValue(cid,upgradeinfo.storageID,1)
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

local noNode = KeywordNode:new({'no'}, playerUpgradeUmbral, {decline = true})
local yesNode = KeywordNode:new({'yes'}, playerUpgradeUmbral, {confirm = true})

local upgrade_node = keywordHandler:addKeyword({'crude umbral blade'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22398, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral blade'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22399, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral slayer'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22401, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral slayer'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22402, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral axe'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22404, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral axe'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22405, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral chopper'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22407, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral chopper'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22408, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral mace'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22410, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral mace'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22411, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral hammer'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22413, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral hammer'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22414, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral bow'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22416, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral bow'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22417, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral crossbow'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22419, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral crossbow'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22420, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
local upgrade_node = keywordHandler:addKeyword({'crude umbral spellbook'}, playerUpgradeUmbral, {premium = false, cost = 500000, item = 22422, storageID = 12001})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
local upgrade_node = keywordHandler:addKeyword({'umbral spellbook'}, playerUpgradeUmbral, {premium = false, cost = 1000000, item = 22423, storageID = 12002})
    upgrade_node:addChildKeywordNode(yesNode)
    upgrade_node:addChildKeywordNode(noNode)
	
keywordHandler:addKeyword({'upgrade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Just say the name of your umbral item to see if I upgrade.'})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())