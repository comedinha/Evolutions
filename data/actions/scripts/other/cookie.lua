function onUse(cid, item, frompos, item2, topos)
    	if (item.itemid == 8848) and (item2.itemid ==  8684) then
				doTransformItem(item.uid,2687, 12)
				doDeleteItem(item.cid,1)
    	elseif (item.itemid == 8848) and (item2.itemid ==  8686) then
				doTransformItem(item.uid,2687, 12)
				doDeleteItem(item.cid,1)
	else 
		return 0
	end
	return 1
end