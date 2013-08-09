function onLogin(cid)
	registerCreatureEvent(cid, "PlayerDeath")
	registerCreatureEvent(cid, "ArenaKill")
	registerCreatureEvent(cid, "ArenaLogin")
	registerCreatureEvent(cid, "Arena")
	registerCreatureEvent(cid, "MapMark")
	registerCreatureEvent(cid, "FirstItems")
	return TRUE
end
