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
        local crystalid = 2349
        local storage = 2349
        local getstorage = getPlayerStorageValue(cid, storage)
        local sorrymessage = "Desculpe, voce nao tem todos os Blue note necessarios para completar as missoes..."
        local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
        if msgcontains(msg, 'Blue Note') then
                if getstorage == 6 then
                        npcHandler:say("Voce jah completou a quest", cid)
                elseif getstorage < 6 then
                        npcHandler:say("Voce tem todos os Blue note necessarios?", cid)
                        talkState[talkUser] = 1
                end
        elseif msgcontains(msg, 'quest') then
                if getstorage < 1 then
                        npcHandler:say("Voce precisa de 1 {Blue note} para comecar.", cid)
                elseif getstorage == 1 then
                        npcHandler:say("Voce esta na segunda missao e precisa de mais 1 Blue note para continuar.", cid)
                elseif getstorage == 2 then
                        npcHandler:say("Voce esta na terceira missao e precisa de mais 1 Blue note para continuar.", cid)
                elseif getstorage == 3 then
                        npcHandler:say("Voce esta na quarta missao e precisa de mais 1 Blue note para continuar.", cid)
                elseif getstorage == 4 then
                        npcHandler:say("Voce esta na quinta missao e precisa de mais 1 Blue note para continuar.", cid)
                elseif getstorage == 5 then
                        npcHandler:say("Voce esta na sexta e ultima missao e precisa de mais 1 Blue note para continuar.", cid)
                elseif getstorage == 6 then
                        npcHandler:say("Voce ja completou todas as missoes.", cid)
                end
        elseif msgcontains(msg, 'yes') then
                if talkState[talkUser] == 1 then
                        if getstorage < 0 then
                                if doPlayerRemoveItem(cid, crystalid, 1) == TRUE then
                                        npcHandler:say("Voce jah me deu 1 Blue note. Agora irei precisar de mais {1}.", cid)
                                        setPlayerStorageValue(cid, storage, 1)
                                        doPlayerAddExp(cid, 10000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 1) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 1 then
                                if doPlayerRemoveItem(cid, crystalid, 1) == TRUE then
                                        npcHandler:say("Voce jah me deu mais 2 blue note. Agora irei precisar de mais {1}.", cid)
                                        setPlayerStorageValue(cid, storage, 2)
                                        doPlayerAddExp(cid, 50000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 1) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 2 then
                                if doPlayerRemoveItem(cid, crystalid, 1) == TRUE then
                                        npcHandler:say("Voce jah me deu 3 blue note. Agora irei precisar de mais {1}.", cid)
                                        setPlayerStorageValue(cid, storage, 3)
                                        doPlayerAddExp(cid, 70000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 1) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 3 then
                                if doPlayerRemoveItem(cid, crystalid, 1) == TRUE then
                                        npcHandler:say("Voce jah me deu 4 blue note. Agora irei precisar de mais {1}.", cid)
                                        setPlayerStorageValue(cid, storage, 4)
                                        doPlayerAddExp(cid, 10000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 1) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 4 then
                                if doPlayerRemoveItem(cid, crystalid, 1) == TRUE then
                                        npcHandler:say("Voce jah me deu 5 blue note. E por ultimo, irei precisar de mais {1}.", cid)
                                        setPlayerStorageValue(cid, storage, 5)
                                        doPlayerAddExp(cid, 150000)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 1) == FALSE then
                                        npcHandler:say(sorrymessage, cid)
                                        talkState[talkUser] = 0
                                end
                        elseif getstorage == 5 then
                                if doPlayerRemoveItem(cid, crystalid, 1) == TRUE then
                                        npcHandler:say("Muito bem, voce completou todas as missoes. Irei te dar experiencia e um {blessed shield} como premio.", cid)
                                        setPlayerStorageValue(cid, storage, 6)
                                        doPlayerAddExp(cid, 900000)
                                        doPlayerAddItem(cid, 2523, 1)
                                        talkState[talkUser] = 0
                                elseif doPlayerRemoveItem(cid, crystalid, 1) == FALSE then
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