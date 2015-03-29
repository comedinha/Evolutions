function onModalWindow(player, modalWindowId, buttonId, choiceId)
	if modalWindowId == 1002 then
		if (buttonId == 1) then
			local str = ""
			local name_now
			if (choiceId == 1) then
				str = "--[ Fist Rank ]--\n"
				query = db.storeQuery("SELECT `skill_fist`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_fist` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "skill_fist") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 2) then
				str = "--[ Club Rank ]--\n"
				query = db.storeQuery("SELECT `skill_club`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_club` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "skill_club") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 3) then
				str = "--[ Sword Rank ]--\n"
				query = db.storeQuery("SELECT `skill_sword`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_sword` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "skill_sword") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 4) then
				str = "--[ Axe Rank ]--\n"
				query = db.storeQuery("SELECT `skill_axe`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_axe` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "skill_axe") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 5) then
				str = "--[ Distance Rank ]--\n"
				query = db.storeQuery("SELECT `skill_dist`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_dist` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "skill_dist") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 6) then
				str = "--[ Shield Rank ]--\n"
				query = db.storeQuery("SELECT `skill_shielding`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_shielding` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "skill_shielding") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 7) then
				str = "--[ Fish Rank ]--\n"
				query = db.storeQuery("SELECT `skill_fishing`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `skill_fishing` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "skill_fishing") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 8) then
				str = "--[ Magic Rank ]--\n"
				query = db.storeQuery("SELECT `maglevel`, `name` FROM `players` WHERE `group_id` < 2 ORDER BY `maglevel` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "maglevel") .. "]"
					k = k + 1 until not result.next(query)
				end
			elseif (choiceId == 9) then
				str = "--[ Level Rank ]--\n"
				query = db.storeQuery("SELECT `name`, `level`, `experience` FROM `players` WHERE `group_id` < 2 ORDER BY `experience` DESC LIMIT 20;")
				if (query ~= false) then k = 1 repeat if k > 20 then break end
					str = str .. "\n " .. k .. ". "..(result.getString(query, "name")).." - [" .. result.getNumber(query, "level") .. "]"
					k = k + 1 until not result.next(query)
				end
			end
			player:showTextDialog(2529, str)
		end
	end
	return true
end
