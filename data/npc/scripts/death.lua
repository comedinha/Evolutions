  local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)                       npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)                  npcHandler:onCreatureSay(cid, type, msg)                end
function onThink()                                      npcHandler:onThink()                                    end
function creatureSayCallback(cid, type, msg)
        if(not npcHandler:isFocused(cid)) then
                return false
        end
        local crystalid = 9980
        local storage = 9980
        local getstorage = getPlayerStorageValue(cid, storage)
        local sorrymessage = "Desculpe, voce nao tem todos os Crystal Of Power necessarios para completar as missoes..."
        local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
        if msgcontains(msg, 'crystal of power') then
                if getstorage == 6 then
                        npcHandler:say("Voce jah completou a quest", cid)
                elseif getstorage < 6 then
                        npcHandler:say("Voce tem todos os Crystal of power necessarios?", cid)
                        talkState[talkUser] = 1
                end
        elseif msgcontains(msg, 'quest') then
                if getstorage < 1 then
                        npcHandler:say("Voce precisa de 1 {crystal of power} para comecar.", cid)
                elseif getstorage == 1 then
                        npcHandler:say("Voce esta na segunda missao e precisa de mais 5 Crystal of power para continuar.", cid)
                elseif getstorage == 2 then
                        npcHandler:say("Voce esta na terceira missao e precisa de mais 7 Crystal of power para continuar.", cid)
                elseif getstorage == 3 then
                        npcHandler:say("Voce esta na quarta missao e precisa de mais 10 Crystal of power para continuar.", cid)
                elseif getstorage == 4 then
                        npcHandler:say("Voce esta na quinta missao e precisa de mais 15 Crystal of power para continuar.", cid)
                elseif getstorage == 5 then
                        npcHandler:say("Voce esta na sexta e ultima missao e precisa de mais 50 Crystal of power para continuar.", cid)
                elseif getstorage == 6 then
                        npcHandler:say("Voce completou todas as missoes.", cid)
                end
        elseif msgcontains(msg, 'yes') then
                if talkState[talkUser] == 1 then
                        if getstorage < 0 then
                                if doPlayerRemoveItem(cid, crystalid, 1) == TRUE then
                                        npcHandler:say("Voce jah me deu 1 crystal of power. Agora irei precisar de mais {5}.", cid)
                                        setPlayerStorageValue(cid, storage, 1)
                                        doPlayerAddExp(cid, 1000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 1) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 1 then
                                if doPlayerRemoveItem(cid, crystalid, 5) == TRUE then
                                        npcHandler:say("Voce jah me deu 5 crystal of power. Agora irei precisar de mais {7}.", cid)
                                        setPlayerStorageValue(cid, storage, 2)
                                        doPlayerAddExp(cid, 5000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 5) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 2 then
                                if doPlayerRemoveItem(cid, crystalid, 7) == TRUE then
                                        npcHandler:say("Voce jah me deu 7 crystal of power. Agora irei precisar de mais {10}.", cid)
                                        setPlayerStorageValue(cid, storage, 3)
                                        doPlayerAddExp(cid, 7000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 7) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 3 then
                                if doPlayerRemoveItem(cid, crystalid, 10) == TRUE then
                                        npcHandler:say("Voce jah me deu 10 crystal of power. Agora irei precisar de mais {15}.", cid)
                                        setPlayerStorageValue(cid, storage, 4)
                                        doPlayerAddExp(cid, 10000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 10) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 4 then
                                if doPlayerRemoveItem(cid, crystalid, 15) == TRUE then
                                        npcHandler:say("Voce jah me deu 15 crystal of power. E por ultimo, irei precisar de mais {50}.", cid)
                                        setPlayerStorageValue(cid, storage, 5)
                                        doPlayerAddExp(cid, 15000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 15) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 5 then
                                if doPlayerRemoveItem(cid, crystalid, 50) == TRUE then
                                        npcHandler:say("Parabens HehEhehehehe, voce completou todas as missoes. Irei te dar um {Golden Falcon} e alguma experiencia.", cid)
                                        setPlayerStorageValue(cid, storage, 6)
                                        doPlayerAddExp(cid, 900000)
                                        doPlayerAddItem(cid, 8976, 1)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 50) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        end
                end
        elseif(msgcontains(msg, 'no') and talkState[talkUser] == 1) then
                npcHandler:say("OK, Volte quando estiver pronto.", cid)
                talkState[talkUser] = 0
        end
return TRUE
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new()) 