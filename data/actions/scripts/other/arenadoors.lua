function onUse(cid, item, fromPosition, itemEx, toPosition)
	local cidPosition = getCreaturePosition(cid)
	if item.actionid ~= 42357 then
		if (item.actionid == 42366 and getPlayerStorageValue(cid,42355) >= 1) or (item.actionid == 42376 and getPlayerStorageValue(cid,42355) >= 2) or (item.actionid == 42386 and getPlayerStorageValue(cid,42355) == 3) then
			if cidPosition.x < toPosition.x then
				doTeleportThing(cid, {x=toPosition.x+1,y=toPosition.y,z=toPosition.z}, TRUE)
			else
				doTeleportThing(cid, {x=toPosition.x-1,y=toPosition.y,z=toPosition.z}, TRUE)
			end
			return TRUE
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce nao pode entrar nesta sala.")
			return TRUE
		end
	elseif (item.actionid == 42357 and getPlayerStorageValue(cid,42351) == 1) then
		if cidPosition.x < toPosition.x then
			doTeleportThing(cid, {x=toPosition.x+1,y=toPosition.y,z=toPosition.z}, TRUE)
		else
			doTeleportThing(cid, {x=toPosition.x-1,y=toPosition.y,z=toPosition.z}, TRUE)
		end
		return TRUE
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Primeiro pague, depois podera entrar.")
		return TRUE
	end
	return FALSE
end