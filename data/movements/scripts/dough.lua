function onAddItem(moveitem, tileitem, position, cid)
	if(moveitem.itemid == 2693) then
		doTransformItem(moveitem.uid, 2689)
		doSendMagicEffect(position, CONST_ME_HITBYFIRE)
	elseif(moveitem.itemid == 6277) then
		doTransformItem(moveitem.uid, 6278)
		doSendMagicEffect(position, CONST_ME_HITBYFIRE)
	elseif(moveitem.itemid == 8846) then
		doTransformItem(moveitem.uid, 8847)
		doSendMagicEffect(position, CONST_ME_HITBYFIRE)
	end
	return true
end
