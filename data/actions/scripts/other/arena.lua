local config = {
	player1enterpos = {x=48, y=102, z=6, stackpos=255},
	player2enterpos = {x=48, y=104, z=6, stackpos=255},
	player1newpos = {x=38, y=102, z=6, stackpos=255},
	player2newpos = {x=41, y=102, z=6, stackpos=255},
	level = 50
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.uid == 2217 and item.itemid == 1945 then
		player1 = getThingfromPos(config.player1enterpos)
		player2 = getThingfromPos(config.player2enterpos)
		if player1.itemid > 0 and player2.itemid > 0 then
			if Player(player1.uid):getLevel() >= config.level and Player(player2.uid):getLevel() >= config.level then
				for arenax = 33, 46 do
					for arenay = 98, 107 do
						arenacreature = getThingfromPos({x=arenax, y=arenay, z=6, stackpos=255})
						if arenacreature.itemid > 0 then
							return player:sendCancelMessage("Expect the duel finish.")
						end
					end
				end
				Position(config.player1enterpos):sendMagicEffect(CONST_ME_LOSEENERGY)
				Position(config.player2enterpos):sendMagicEffect(CONST_ME_LOSEENERGY)
				Creature(player1.uid):teleportTo(config.player1newpos)
				Creature(player2.uid):teleportTo(config.player2newpos)
				Position(config.player1newpos):sendMagicEffect(CONST_ME_HITAREA)
				Position(config.player2newpos):sendMagicEffect(CONST_ME_HITAREA)
				Player(player1.uid):sendTextMessage(MESSAGE_STATUS_WARNING, "FIGHT!")
				Player(player2.uid):sendTextMessage(MESSAGE_STATUS_WARNING, "FIGHT!")
			else
				return player:sendCancelMessage("The two fighters must be at least level "..config.level..".")
			end
		else
			return player:sendCancelMessage("You need 2 players to fight.")
		end
   	end
	return true
end