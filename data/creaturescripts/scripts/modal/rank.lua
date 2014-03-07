function createClass(parent)
	local newClass = {}
	function newClass:new(instance)
		local instance = instance or {}
		setmetatable(instance, {__index = newClass})
		return instance
	end

	if(parent ~= nil) then
		setmetatable(newClass, {__index = parent})
	end

	function newClass:getSelf()
		return newClass
	end

	function newClass:getParent()
		return baseClass
	end

	function newClass:isa(class)
		local tmp = newClass
		while(tmp ~= nil) do
			if(tmp == class) then
				return true
			end

			tmp = tmp:getParent()
		end

		return false
	end

	function newClass:setAttributes(attributes)
		for k, v in pairs(attributes) do
			newClass[k] = v
		end
	end

	return newClass
end

db.updateQueryLimitOperator = db.updateLimiter
db.stringComparisonOperator = db.stringComparer
db.stringComparison = db.stringComparer
db.executeQuery = db.query
db.quote = db.escapeString

if(result == nil) then
	print("> WARNING: Couldn't load database lib.")
	return
end

Result = createClass(nil)
Result:setAttributes({
	id = -1,
	query = ""
})

function Result:getID()
	return self.id
end

function Result:setID(_id)
	self.id = _id
end

function Result:getQuery()
	return self.query
end

function Result:setQuery(_query)
	self.query = _query
end

function Result:create(_query)
	self:setQuery(_query)
	local _id = db.storeQuery(self:getQuery())
	if(_id) then
		self:setID(_id)
	end

	return self:getID()
end

function Result:getRows(free)
	local free = free or false
	if(self:getID() == -1) then
		error("[Result:getRows] Result not set!")
	end

	local c = 0
	repeat
		c = c + 1
	until not self:next()

	local _query = self:getQuery()
	self:free()
	if(not free) then
		self:create(_query)
	end

	return c
end

function Result:getDataInt(s)
	if(self:getID() == -1) then
		error("[Result:getDataInt] Result not set!")
	end

	return result.getDataInt(self:getID(), s)
end

function Result:getDataLong(s)
	if(self:getID() == -1) then
		error("[Result:getDataLong] Result not set!")
	end

	return result.getDataLong(self:getID(), s)
end

function Result:getDataString(s)
	if(self:getID() == -1) then
		error("[Result:getDataString] Result not set!")
	end

	return result.getDataString(self:getID(), s)
end

function Result:getDataStream(s)
	if(self:getID() == -1) then
		error("[Result:getDataStream] Result not set!")
	end

	return result.getDataStream(self:getID(), s)
end

function Result:next()
	if(self:getID() == -1) then
		error("[Result:next] Result not set!")
	end

	return result.next(self:getID())
end

function Result:free()
	if(self:getID() == -1) then
		error("[Result:free] Result not set!")
	end

	self:setQuery("")
	local ret = result.free(self:getID())
	self:setID(-1)
	return ret
end

Result.numRows = Result.getRows
function db.getResult(query)
	if(type(query) ~= 'string') then
		return nil
	end

	local ret = Result:new()
	ret:create(query)
	return ret
end

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
