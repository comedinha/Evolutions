-- arena script
InitArenaScript = 0
arena_room_max_time = 240 -- time in seconds for one arena room
arenaKickPosition = {x=199, y=610, z=6} -- position where kick from arena when you leave/you did arena level
arena_monsters = {}
arena_monsters[42300] = 'frostfur' -- first monster from 1 arena
arena_monsters[42301] = 'bloodpaw'
arena_monsters[42302] = 'bovinus'
arena_monsters[42303] = 'achad'
arena_monsters[42304] = 'colerian the barbarian'
arena_monsters[42305] = 'the hairy one'
arena_monsters[42306] = 'axeitus headbanger'
arena_monsters[42307] = 'rocky'
arena_monsters[42308] = 'cursed gladiator'
arena_monsters[42309] = 'orcus the cruel'
arena_monsters[42310] = 'avalanche' -- first monster from 2 arena
arena_monsters[42311] = 'kreebosh the exile'
arena_monsters[42312] = 'the dark dancer'
arena_monsters[42313] = 'the hag'
arena_monsters[42314] = 'slim'
arena_monsters[42315] = 'grimgor guteater'
arena_monsters[42316] = 'drasilla'
arena_monsters[42317] = 'spirit of earth'
arena_monsters[42318] = 'spirit of water'
arena_monsters[42319] = 'spirit of fire'
arena_monsters[42320] = 'webster' -- first monster from 3 arena
arena_monsters[42321] = 'darakan the executioner'
arena_monsters[42322] = 'norgle glacierbeard'
arena_monsters[42323] = 'the pit lord'
arena_monsters[42324] = 'svoren the mad'
arena_monsters[42325] = 'the masked marauder'
arena_monsters[42326] = 'gnorre chyllson'
arena_monsters[42327] = "fallen mooh'tah master ghar"
arena_monsters[42328] = 'deathbringer'
arena_monsters[42329] = 'the obliverator'

function getArenaMonsterIdByName(name)
    name = string.lower(tostring(name))
    for i = 42300, 42329 do
        if tostring(arena_monsters[i]) == name then
            return i
        end
    end
    return 0
end  

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
