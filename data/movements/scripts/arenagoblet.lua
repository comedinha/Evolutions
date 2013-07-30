function onStepIn(cid, item, position, fromPosition) 
	local gobletPos = getThingPos(item.uid)
	if item.actionid == 42360 then 
		if getPlayerStorageValue(cid, 42360) ~= 1 then 
			setPlayerStorageValue(cid, 42360, 1) 
			local goblet = doCreateItemEx(5807, 1) 
			doItemSetAttribute(goblet, "description", "It is given to the courageous victor of the barbarian arena greenhorn difficulty.\nAwarded to " .. getCreatureName(cid) .. ".") 
			doTileAddItemEx({x=gobletPos.x,y=gobletPos.y-1,z=gobletPos.z}, goblet) 
		end 
	elseif item.actionid == 42370 then 
		if getPlayerStorageValue(cid, 42370) ~= 1 then 
			setPlayerStorageValue(cid, 42370, 1) 
			local goblet = doCreateItemEx(5806, 1) 
			doItemSetAttribute(goblet, "description", "It is given to the courageous victor of the barbarian arena scrapper difficulty.\nAwarded to " .. getCreatureName(cid) .. ".") 
			doTileAddItemEx({x=gobletPos.x,y=gobletPos.y-1,z=gobletPos.z}, goblet) 
		end 
	elseif item.actionid == 42380 then 
		if getPlayerStorageValue(cid, 42380) ~= 1 then 
			setPlayerStorageValue(cid, 42380, 1) 
			local goblet = doCreateItemEx(5805, 1) 
			doItemSetAttribute(goblet, "description", "It is given to the courageous victor of the barbarian arena warlord difficulty.\nAwarded to " .. getCreatureName(cid) .. ".") 
			doTileAddItemEx({x=gobletPos.x,y=gobletPos.y-1,z=gobletPos.z}, goblet) 
		end 
	end 
	doTransformItem(item.uid, item.itemid - 1) 
	return TRUE 
end 

function onStepOut(cid, item, pos) 
	doTransformItem(item.uid, item.itemid + 1) 
	return TRUE 
end
