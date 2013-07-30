function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.actionid == 4840) then
       doTeleportThing(getTopCreature({x=269,y=106,z=8}).uid, {x=269,y=106,z=9})
	elseif (item.actionid == 4841) then
		doTeleportThing(getTopCreature({x=269,y=106,z=9}).uid, {x=269,y=106,z=8})
	
	end
	return true
end