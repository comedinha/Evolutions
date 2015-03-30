local text = true
local site = "none"

function onSay(player, words, param)
	if(param == '') then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end

	local storage = 141120131140
	local p = player:getPosition()
	if player:getStorageValue(storage)-os.time() >= 0 then
		if player:getAccountType() < ACCOUNT_TYPE_TUTOR then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "Exausted, try in "..player:getStorageValue(storage)-os.time().." seconds!")
			return false
		end
	end

	if text == true then
		file = io.open("txt/bugs.txt", "a+")
		file:write("\n"..player:getName().." reported a bug at " .. os.date("%d %B %Y - %X ", os.time()) .."\n"..param.." [x="..p.x..", y="..p.y..", z="..p.z.."].\n")
		file:close()
	end
	
	if site == "znote" then
		db.storeQuery("INSERT INTO  `znote_player_reports` (`id` ,`name` ,`posx` ,`posy` ,`posz` ,`report_description` ,`date`)VALUES (NULL ,  '".. player:getName() .."',  '".. p.x .."',  '".. p.y .."',  '".. p.z .."',  ".. db.escapeString(param) ..",  '".. os.time() .."')")
	end
	
	if site or text == true then
		player:setStorageValue(storage, os.time() + 180)
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Your report has been received successfully!")
	end
	return false
end

