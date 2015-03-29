function onStepIn(creature, item, position, fromPosition)
	local teleport = {
		[17001] = {x=121, y=161, z=15},
		[17002] = {x=122, y=161, z=15},
		[17003] = {x=123, y=161, z=15},
		[17004] = {x=174, y=152, z=7},
		[17005] = {x=175, y=152, z=7},
		[17006] = {x=176, y=152, z=7},
		[17007] = {x=498, y=521, z=8},
		[17008] = {x=499, y=521, z=8},
		[17009] = {x=124, y=143, z=14},
		[17010] = {x=125, y=143, z=14}
	}

	if(not isPlayer(creature)) then
		return true
	end

	creature:teleportTo(teleport[item.actionid], false)
	creature:say("LOL?", TALKTYPE_SAY)
end