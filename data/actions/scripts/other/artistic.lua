function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 16021 then
		doChangeTypeItem(16021, 16023)
		return true
	end
	return false
end
