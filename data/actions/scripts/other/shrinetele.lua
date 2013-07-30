local tele = {x=98, y=43, z=10}

function onUse(cid, item, frompos, item2, topos)
	if item.uid ==2133 then
		if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 5 or getPlayerVocation(cid) == 6 and getPlayerLevel(cid) >= 30 then
			doPlayerSendTextMessage(cid,22,"Bem-vindo ao Shrine, onde voce pode encantar suas armas.")
			doTeleportThing(cid,tele)
		else
			doPlayerSendTextMessage(cid,22,"Somente Druids e Sorcerers ou leveis acima de 30 podem usar os Shrines.")
		end
	end
end