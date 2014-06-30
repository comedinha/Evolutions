function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2217 and item.itemid == 1945 then
		player1pos = {x=48, y=102, z=6, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=48, y=104, z=6, stackpos=253}
		player2 = getThingfromPos(player2pos)

		if player1.itemid > 0 and player2.itemid > 0 then
			arenalevel = 50
			player1level = getPlayerLevel(player1.uid)
			player2level = getPlayerLevel(player2.uid)

			if player1level >= arenalevel and player2level >= arenalevel then
				for arenax = 33,46 do
					for arenay = 98,107 do
						arenapos = {x=arenax, y=arenay, z=6, stackpos=253}
						arenacreature = getThingfromPos(arenapos)

						if arenacreature.itemid > 0 then
							doPlayerSendCancel(cid,"Expect the duel finish.")
							return 1
						end
					end
				end

				nplayer1pos = {x=38, y=102, z=6}
				nplayer2pos = {x=41, y=102, z=6}

				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)

				doPlayerSendTextMessage(player1.uid,18,"FIGHT!")
				doPlayerSendTextMessage(player2.uid,18,"FIGHT!")
			else
				doPlayerSendCancel(cid,"The two fighters must be at least level "..arenalevel..".")
			end
		else
			doPlayerSendCancel(cid,"You need 2 players to fight.")
		end
	else
		return 0
   	end

	return 1
end