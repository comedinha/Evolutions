function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(getPlayerPremiumDays(cid) > 360) then
		doPlayerSendCancel(cid, "Voce nao pode ter mais de 360 dias de premium.")
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
	else
		doPlayerAddPremiumDays(cid, 30)
		doRemoveItem(item.uid, 1)
		doPlayerSendCancel(cid, "Voce acaba de receber 30 dias de premium.")
	end
	return true
end