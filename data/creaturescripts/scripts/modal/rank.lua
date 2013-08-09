function onModalWindow(cid, modalWindowId, buttonId, choiceId)
	if modalWindowId == 1002 then
		if (buttonId == 1) then
			local str = ""
			local name_now
			if (choiceId == 1) then
				str = "--[ Fist Rank ]--\n"
				query = db.getResult("SELECT `skill_fist`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_fist` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("skill_fist") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 2) then
				str = "--[ Club Rank ]--\n"
				query = db.getResult("SELECT `skill_club`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_club` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("skill_club") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 3) then
				str = "--[ Sword Rank ]--\n"
				query = db.getResult("SELECT `skill_sword`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_sword` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("skill_sword") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 4) then
				str = "--[ Axe Rank ]--\n"
				query = db.getResult("SELECT `skill_axe`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_axe` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("skill_axe") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 5) then
				str = "--[ Distance Rank ]--\n"
				query = db.getResult("SELECT `skill_dist`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_dist` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("skill_dist") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 6) then
				str = "--[ Shield Rank ]--\n"
				query = db.getResult("SELECT `skill_shielding`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_shielding` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("skill_shielding") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 7) then
				str = "--[ Fish Rank ]--\n"
				query = db.getResult("SELECT `skill_fishing`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_fishing` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("skill_fishing") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 8) then
				str = "--[ Magic Rank ]--\n"
				query = db.getResult("SELECT `maglevel`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `maglevel` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("maglevel") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 9) then
				str = "--[ Level Rank ]--\n"
				query = db.getResult("SELECT `name`, `level`, `experience` FROM `players` WHERE `group_id` < 2 ORDER BY `experience` DESC LIMIT 20;")
				if (query:getID() ~= -1) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(query:getDataString("name")).." - [" .. query:getDataInt("level") .. "]"
					k = k + 1 until not query:next()
				end
			elseif (choiceId == 10) then
				str = "--[ Kills Rank ]--\n"
				query = db.getResult("SELECT `killed_by`, COUNT(`player_deaths`.`unjustified`) FROM `player_deaths` ORDER BY `unjustified` DESC LIMIT 20;")
				if query:getID() == -1 then
					str = str .. "\nNinguém matou ninguém." 
				end
				if (query:getID() >= 0) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(getPlayerNameByGUID(query:getDataInt("killed_by"))).." - [" .. query:getDataInt("unjustified") .. "]"
					k = k + 1 until not query:next()
				end
			end
			doShowTextDialog(cid, 2529, str)
		end
	end
	return true
end
