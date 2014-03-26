local text = true
local site = "none"

function onSay(cid, words, param)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end

	local storage = 141120131140
	local p = getPlayerPosition(cid)
	if(getPlayerStorageValue(cid, storage)-os.time() >= 0) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Exausted, try in "..getPlayerStorageValue(cid, storage)-os.time().." seconds!")
		return false
	end

	if text == true then
		file = io.open("txt/bugs.txt", "a+")
		file:write("\n"..getPlayerName(cid).." reported a bug at " .. os.date("%d %B %Y - %X ", os.time()) .."\n"..param.." [x="..p.x..", y="..p.y..", z="..p.z.."].\n")
		file:close()
	end
	
	if site == "znote" then
		db.query("INSERT INTO  `znote_player_reports` (`id` ,`name` ,`posx` ,`posy` ,`posz` ,`report_description` ,`date`)VALUES (NULL ,  '" .. getPlayerName(cid) .. "',  '" .. p.x .. "',  '" .. p.y .. "',  '" .. p.z .. "',  " .. db.escapeString(param) .. ",  '" .. os.time() .. "')")
	end
	
	if site or text == "true" then
		setPlayerStorageValue(cid, storage, os.time() + 180)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your report has been received successfully!")
	end
	return false
end

