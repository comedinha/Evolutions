function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target:getId() == 16021 then
		target:remove()
		item:transform(16023)
	end
	return true
end
