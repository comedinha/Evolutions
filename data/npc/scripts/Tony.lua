local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        
        local travelNode1 = keywordHandler:addKeyword({'arena'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1447, y=2559, z=7}, msg = 'Be careful. Lots of wild and strange animals run around there.'})

        local travelNode2 = keywordHandler:addKeyword({'foreign'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1447, y=2566, z=7}})
			
		local travelNode3 = keywordHandler:addKeyword({'zoo'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=493, y=653, z=7}, msg = 'Be careful. Lots of wild and strange animals run around there.'})
        keywordHandler:addKeyword({'pass'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Uh, you want to pass the gate? Are you headed for the {arena} or the {foreign} quarter?'})

npcHandler:addModule(FocusModule:new())