function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.aid == 122 then
		doTeleportThing(cid, {x = 32172, y = 32439, z = 8})
	end
	return FALSE
end