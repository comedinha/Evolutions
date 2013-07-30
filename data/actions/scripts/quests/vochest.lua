function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,11550) == -1 then
	if math.random(100) <= 10 then
		doPlayerAddItem(cid,16101,1)
		doPlayerSendTextMessage(cid,22,"Parabéns, você ganhou um Premium Scroll.")
	else
		doPlayerSendTextMessage(cid,22,"Você não conseguiu ganhar seu prémio.")
	end
	setPlayerStorageValue(cid,11550,1)
	else
		doPlayerSendTextMessage(cid,22,"Você já tentou pegar o seu prêmio.")
	end
	return true
end