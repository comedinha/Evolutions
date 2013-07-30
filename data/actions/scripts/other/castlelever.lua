function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.actionid == 4850) then
       doTeleportThing(getTopCreature({x=329,y=118,z=5}).uid, {x=329,y=118,z=3})
	elseif (item.actionid == 4851) then
		doTeleportThing(getTopCreature({x=329,y=118,z=3}).uid, {x=329,y=118,z=5})
	
	end
	return true
end