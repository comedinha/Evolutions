function onStepIn(cid, item, position, fromPosition)
	if(item.actionid == 62325) and (getPlayerStorageValue(cid, 7343) == EMPTY_STORAGE) then
	    doCreatureSay(cid, "You have found the passage through the mountains and can report about your success.", TALKTYPE_ORANGE_1)
	setPlayerStorageValue(cid, 7343, 1)
		end
end