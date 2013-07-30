local talk_state = 0

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)  npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink()  npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)


     if msgcontains(msg, 'spool of yarn') then
              if getPlayerItemCount(cid,5879) >= 10 then
                    if doPlayerRemoveItem(cid,5879,10) == 1 then
                              npcHandler:say('Ew... gooey... there you go. .')
                              doPlayerAddItem(cid,5886,1)
                    end
              else
                    npcHandler:say('Ew... gooey... you dont have required items. ')
                    talk_state = 0
              end
     elseif msgcontains(msg, 'no') then
              npcHandler:say('Ok.. Good bye then!!')
              talk_state = 0
     end

return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())