function onStepIn(cid, item, position, fromPosition)
	local mensagem = {
		action = item.actionid,
		[50001] = "Hospedaria do Unicornio Saltitante.",
		[50002] = "Dorion."
	}

	if(not isPlayer(cid)) then
		return true
	end
	
	if(item.actionid == mensagem.action) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, mensagem[item.actionid])
	return true
	end
end