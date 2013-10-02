function onLogin(cid)
	local player = Player(cid)

	local loginStr = configManager.getString(configKeys.LOGIN_MSG)
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Your last visit was on %s.", os.date("%a %b %d %X %Y", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	registerCreatureEvent(cid, "PlayerDeath")
	registerCreatureEvent(cid, "ArenaKill")
	registerCreatureEvent(cid, "ArenaLogin")
	registerCreatureEvent(cid, "Arena")
	registerCreatureEvent(cid, "MapMark")
	registerCreatureEvent(cid, "FirstItems")
	return true
end
