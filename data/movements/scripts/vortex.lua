function onStepIn(creature, item, position, fromPosition)
	local t = {
		[9238] = {x=231,y=901,z=8},
		[9239] = {x=322,y=655,z=8}
	}
	
	if not Player(creature) then
		creature:teleportTo(fromPosition, false)
		return true
	end
	
	creature:teleportTo(t[item.uid])
	Position(t[item.uid]):sendMagicEffect(CONST_ME_WATERSPLASH)
	creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You dive into the vortex to swim below the rocks to the other side of the cave.")
end
