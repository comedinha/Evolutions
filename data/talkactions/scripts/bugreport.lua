function onSay(cid, words, param)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return false
	end

	local storage = getPlayerStorageValue(cid, 141120131140)
	if(storage-os.time() >= 0) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Exausted, try in "..storage-os.time().."!")
		return false
	end

	setPlayerStorageValue(cid, 141120131140, os.time() + 180)
	file = io.open("txt/bugs.txt", "a+")
	file:write("\n"..getPlayerName(cid).." reported a bug at " .. os.date("%d %B %Y - %X ", os.time()) .."\n"..param.." [x="..getPlayerPosition(cid).x..", y="..getPlayerPosition(cid).y..", z="..getPlayerPosition(cid).z.."].\n")
	file:close()
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your report has been received successfully!")
	return false
end

