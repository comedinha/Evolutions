local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                        npcHandler:onThink()                        end

function greetCallback(cid)

return true

end

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
        if (getPlayerStorageValue(cid, parameters.storageGain) ~= -1) then
            npcHandler:say('You already have this addon!', cid)
            npcHandler:resetNpc()
            return true
        end
        npcHandler:say('You have completed the ' .. parameters.quest .. ' quest for ' .. keywords[1] .. '?', cid)
        return true
    elseif (parameters.confirm == true) then
		local addonNode = node:getParent()
		local addoninfo = addonNode:getParameters()
		if (getPlayerStorageValue(cid, parameters.storageID) == 1) then
			doPlayerAddOutfit(cid, addoninfo.outfit_male, addoninfo.addon)
			doPlayerAddOutfit(cid, addoninfo.outfit_female, addoninfo.addon)
			setPlayerStorageValue(cid,addoninfo.storageGain,1)
			npcHandler:say('Here you are.', cid)
		else
			npcHandler:say('Voce nao completou a quest.', cid)
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

local outfit_node = keywordHandler:addKeyword({'first'}, playerBuyAddonNPC, {premium = false, quest = 'anhi', outfit_female = 433, outfit_male = 432, addon = 1, storageID = 5010, storageGain = 10065}) 
	outfit_node:addChildKeywordNode(yesNode) 
	outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second'}, playerBuyAddonNPC, {premium = false, quest = 'demon oak', outfit_female = 433, outfit_male = 432, addon = 2, storageID = 50090, storageGain = 10066}) 
	outfit_node:addChildKeywordNode(yesNode) 
	outfit_node:addChildKeywordNode(noNode) 
	
keywordHandler:addKeyword({'addon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can give you {first} and {second} Demon addon.'})
 
npcHandler:setCallback(CALLBACK_ONTHINK, thinkCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:addModule(FocusModule:new())
