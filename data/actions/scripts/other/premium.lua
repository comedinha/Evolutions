function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(getPlayerPremiumDays(cid) > 360) then
		doPlayerSendCancel(cid, "You can not have more than 360 days of premium.")
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
	else
		doPlayerAddPremiumDays(cid, 30)
		doRemoveItem(item.uid, 1)
		doPlayerSendCancel(cid, "You just received 30 days of premium.")
	end
	return true
end