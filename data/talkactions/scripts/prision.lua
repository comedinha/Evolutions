grouprequired = 2
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
local unjailpos = { x = 63, y = 54, z =6 }
jail_list = {}
jail_list_work = 0

function checkJailList(param)
	addEvent(checkJailList, 1000, {})
	for targetID,player in ipairs(jail_list) do
		if isPlayer(player) == TRUE then
			if getPlayerStorageValue(player, jailedstoragevalue_time) < os.time() then
				doTeleportThing(player, unjailpos, TRUE)
				setPlayerStorageValue(player, jailedstoragevalue_time, 0)
				setPlayerStorageValue(player, jailedstoragevalue_bool, 0)
				table.remove(jail_list,targetID)
				doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_ORANGE, 'You got out of jail, try not to do evil things next time to avoid being arrested again. Take care friend.')
			end
		else
			table.remove(jail_list,targetID)
		end
	end
end

function onSay(cid, words, param)
	if not Player(cid):getGroup():getAccess() then
		return false
	end
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
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
	local isplayer = getPlayerByName(t[1])
	if isPlayer(isplayer) ~= TRUE then
		isplayer = getPlayerByName(string.sub(t[1], string.len("jail_time")+1))
		if isPlayer(isplayer) ~= TRUE then
			isplayer = getPlayerByName(string.sub(t[1], string.len("jail_time")+2))
			if isPlayer(isplayer) ~= TRUE then
				isplayer = getPlayerByName(string.sub(t[1], string.len("jail_time")+3))
			end
		end
	end
	local default_jail = 30
	if(t[2]) then
		default_jail = t[2]
	end
	if jail_time ~= -1 then
		jail_time = jail_time * 60
	else
		jail_time = default_jail
	end
	
	if (words == '/jail') then
		if isPlayer(isplayer) == TRUE then
			doTeleportThing(isplayer, jailpos[math.random(#jailpos)], TRUE)
			setPlayerStorageValue(isplayer, jailedstoragevalue_time, os.time()+jail_time)
			setPlayerStorageValue(isplayer, jailedstoragevalue_bool, 1)
			table.insert(jail_list,isplayer)
			doPlayerSendTextMessage (cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You arrested the player '.. getCreatureName(isplayer) ..' until ' .. os.date("%H:%M:%S", getPlayerStorageValue(isplayer, jailedstoragevalue_time)) .. ' (now is: ' .. os.date("%H:%M:%S", os.time()) .. ').')
			doPlayerSendTextMessage (isplayer, MESSAGE_STATUS_CONSOLE_ORANGE, 'You were arrested for '.. getCreatureName(cid) ..' until ' .. os.date("%H:%M:%S", getPlayerStorageValue(isplayer, jailedstoragevalue_time)) .. ' (now is: ' .. os.date("%H:%M:%S", os.time()) .. ').')
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "This player does not exist or is offline.")
		end
	elseif (words == '/unjail') then
		if isPlayer(isplayer) == TRUE then
			if getPlayerStorageValue(isplayer, jailedstoragevalue_bool) == 1 then
				doTeleportThing(isplayer, unjailpos, TRUE)
				setPlayerStorageValue(isplayer, jailedstoragevalue_time, 0)
				setPlayerStorageValue(isplayer, jailedstoragevalue_bool, 0)
				table.remove(jail_list,targetID)
				doPlayerSendTextMessage(isplayer, MESSAGE_STATUS_CONSOLE_ORANGE, 'The player '.. getCreatureName(cid) ..' brought you out of jail. See you soon!')
				doPlayerSendTextMessage (cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You removed out the player '.. getCreatureName(isplayer) ..'of the jail.')
			else
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "This player is not stuck.")
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "This player does not exist or is offline.")
		end
	end
	return false
end 
