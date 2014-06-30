function onAddItem(moveitem, tileitem, position, cid)
	gol1 = {
		{x=11,y=54,z=7},
		{x=12,y=56,z=7}
	}
	gol2 = {
		{x=40,y=54,z=7},
		{x=41,y=56,z=7}
	}
	poscentro = {x = 26,y = 55,z = 7}
	if inArea(position,gol1[1],gol1[2]) then
		doRemoveItem(moveitem.uid)
		doCreateItem(moveitem.itemid,poscentro)
	elseif inArea(position,gol2[1], gol2[2]) then
		doRemoveItem(moveitem.uid)
		doCreateItem(moveitem.itemid,poscentro)
	end
	return true
end

function inArea(p,pos1,pos2)
	if p.x >= pos1.x and p.x <= pos2.x then
		if p.y >= pos1.y and p.y <= pos2.y then
			if p.z == pos1.z then
				return true
			end
		end
	end
	return false
end