local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        
        local travelNode1 = keywordHandler:addKeyword({'cemetery'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1550, y=2409, z=7}})

        		local travelNode2 = keywordHandler:addKeyword({'magician'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1557, y=2409, z=7}})
			
			 local travelNode3 = keywordHandler:addKeyword({'cemetary'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1550, y=2409, z=7}})
        keywordHandler:addKeyword({'pass'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Uh, you want to pass the gate? Are you headed for the {cemetery} or the {magician} quarter?'})

npcHandler:addModule(FocusModule:new())