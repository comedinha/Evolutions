jailedstoragevalue_time = 1338
jailedstoragevalue_bool = 1339
local jailpos = { 
	[1] = {x = 59, y = 52, z =6},
	[2] = {x = 59, y = 52, z =5},
	[3] = {x = 55, y = 47, z =6},
	[4] = {x = 55, y = 47, z =5},
	[5] = {x = 55, y = 52, z =6},
	[6] = {x = 55, y = 52, z =5},
	[7] = {x = 59, y = 47, z =5},
	[8] = {x = 63, y = 52, z =5}
}
local unjailpos = {x = 63, y = 54, z =6}
jail_list = {}
jail_list_work = 0
local default_jail = 30

function checkJailList()
	addEvent(checkJailList, 1000, {})
	for targetID, player in ipairs(jail_list) do
		if Player(player) then
			if Player(player):getStorageValue(jailedstoragevalue_time) < os.time() then
				Player(player):teleportTo(unjailpos, true)
				Player(player):setStorageValue(jailedstoragevalue_time, 0)
				Player(player):setStorageValue(Player(player), jailedstoragevalue_bool, 0)
				table.remove(jail_list,targetID)
				Player(player):sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'You got out of jail, try not to do evil things next time to avoid being arrested again. Take care friend.')
			end
		else
			table.remove(jail_list,targetID)
		end
	end
end

function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	
	if(param == '') then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end
	local t = param:split(", ")
	if jail_list_work == 0 then
		jail_list_work = addEvent(checkJailList, 1000, {})
	end
	local jail_time = -1
	for word in string.gmatch(tostring(t[1]), "(%w+)") do
		if tostring(tonumber(word)) == word then
			jail_time = tonumber(word)
		end
	end
	local isplayer = Player(t[1]):getId()
	if(t[2]) then
		default_jail = t[2]
	end
	if jail_time ~= -1 then
		jail_time = jail_time * 60
	else
		jail_time = default_jail
	end
	
	if (words == '/jail') then
		if Player(isplayer) then
			Player(isplayer):teleportTo(jailpos[math.random(#jailpos)], true)
			Player(isplayer):setStorageValue(jailedstoragevalue_time, os.time()+jail_time)
			Player(isplayer):setStorageValue(jailedstoragevalue_bool, 1)
			table.insert(jail_list,isplayer)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'You arrested the player '.. Player(isplayer):getName() ..' until ' .. os.date("%H:%M:%S", Player(isplayer):getStorageValue(jailedstoragevalue_time)) .. ' (now is: ' .. os.date("%H:%M:%S", os.time()) .. ').')
			Player(isplayer):sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'You were arrested for '.. player:getName() ..' until ' .. os.date("%H:%M:%S", Player(isplayer):getStorageValue(jailedstoragevalue_time)) .. ' (now is: ' .. os.date("%H:%M:%S", os.time()) .. ').')
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "This player does not exist or is offline.")
		end
	elseif (words == '/unjail') then
		if Player(isplayer) then
			if Player(isplayer):getStorageValue(jailedstoragevalue_bool) == 1 then
				Player(isplayer):teleportTo(unjailpos, true)
				Player(isplayer):setStorageValue(jailedstoragevalue_time, 0)
				Player(isplayer):setStorageValue(jailedstoragevalue_bool, 0)
				table.remove(jail_list,targetID)
				Player(isplayer):sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'The player '.. player:getName() ..' brought you out of jail.')
				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'You removed out the player '.. Player(isplayer):getName() ..'of the jail.')
			else
				player:sendTextMessage(MESSAGE_INFO_DESCR, "This player is not stuck.")
			end
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "This player does not exist or is offline.")
		end
	end
	return false
end 
