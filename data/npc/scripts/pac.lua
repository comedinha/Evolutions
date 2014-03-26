local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

local level = {
	[25] = 5,
	[50] = 10,
	[100] = 20,
	[150] = 30,
	[200] = 50
}

local item = {
	crude = {22398, 22401, 22404, 22407, 22410, 22413, 22416, 22419, 22422},
	normal = {22399, 22402, 22405, 22408, 22411, 22414, 22417, 22420, 22423},
	master = {22400, 22403, 22406, 22409, 22412, 22415, 22418, 22421, 22424}
}

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end

    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

    if(msgcontains(msg, 'upgradee')) then
        selfSay('Voce tem algum umbral item para um upgrade?', cid)
        talkState[talkUser] = 1
    elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
        if(getPlayerItemCount(cid, 10022) >= 1) then
            if(doPlayerRemoveMoney(cid, 30000) == TRUE) then
                doPlayerRemoveItem(cid, 10022, 1)
                doPlayerAddItem(cid, 9933)
                selfSay('Here you are.', cid)
            else
                selfSay('Desculpe, volte quando tiver dinheiro.', cid)
            end
        else
            selfSay('desculpe, voce nao tem este item.', cid)
        end
        talkState[talkUser] = 0
    elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
        talkState[talkUser] = 0
        selfSay('Ok then.', cid)
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())