function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
	if item.actionid == 4840 then
		Tile({x=269,y=106,z=8}):getTopCreature():teleportTo({x=269,y=106,z=9})
	elseif item.actionid == 4841 then
		Tile({x=269,y=106,z=9}):getTopCreature():teleportTo({x=269,y=106,z=8})
	elseif item.actionid == 4850 then
       Tile({x=329,y=118,z=5}):getTopCreature():teleportTo({x=329,y=118,z=3})
	elseif item.actionid == 4851 then
		Tile({x=329,y=118,z=3}):getTopCreature():teleportTo({x=329,y=118,z=5})
	end
	return true
end