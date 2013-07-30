local LIQUID_CONTAINERS = {1775, 2005, 2006, 2007, 2008, 2009, 2011, 2012, 2013, 2014, 2015, 2023, 2031, 2032, 2033}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 2692 and isInArray(LIQUID_CONTAINERS, itemEx.itemid) and itemEx.type == 6) then
		doChangeTypeItem(item.uid, item.type - 1)
		doPlayerAddItem(cid, 6277, 1)
		doChangeTypeItem(itemEx.uid, item.type - item.type)
	elseif(item.itemid == 2692 and isInArray(LIQUID_CONTAINERS, itemEx.itemid) and itemEx.type == 1) then
		doChangeTypeItem(item.uid, item.type - 1)
		doPlayerAddItem(cid, 2693, 1)
		doChangeTypeItem(itemEx.uid, item.type - item.type)
	elseif(item.itemid == 6277) and (itemEx.itemid == 6574) then
		doTransformItem(item.uid,8846)
		doRemoveItem(itemEx.uid,1)
	elseif(item.itemid == 2694) and (itemEx.itemid == 1381) then
		doTransformItem(item.uid,2692)
	elseif(item.itemid == 6277) and (itemEx.itemid == 2561) then
		doTransformItem(item.uid,8848)
		doRemoveItem(itemEx.uid,1)
	elseif(item.itemid == 2694) and (itemEx.itemid == 1381) then
		doTransformItem(item.uid,2692)
	end
	return true
end