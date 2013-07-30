local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        
		npcHandler:setMessage(MESSAGE_GREET, 'He.. hello. Unless you have official business here or want to pass the gate, please m... move on. <clears throat>')
		
        local travelNode1 = keywordHandler:addKeyword({'arena'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1440, y=2500, z=7}})

        		local travelNode2 = keywordHandler:addKeyword({'alchemist'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1440, y=2493, z=7}, msg = 'Don\'t inhale the c... coloured fog.'})
				
		local travelNode3 = keywordHandler:addKeyword({'zoo'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1440, y=2500, z=7}})
			
        keywordHandler:addKeyword({'pass'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to p... pass the gate? Are you headed for the {arena} or the {alchemist} quarter?'})

npcHandler:addModule(FocusModule:new())