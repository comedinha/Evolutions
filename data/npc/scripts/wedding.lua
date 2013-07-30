local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
local Topic, Partner = {}, {}
 
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
 
function say(msg, cid)
	local npc, _msg = getNpcId(), msg:gsub('{', ''):gsub('}', '')
	local pos = getThingPos(npc)
	for _, tid in ipairs(getSpectators(pos, 7, 5, false) or {}) do
		if isPlayer(tid) then
			doCreatureSay(npc, tid ~= cid and _msg or msg, tid == cid and TALKTYPE_PRIVATE_NP or TALKTYPE_SAY, false, tid, pos)
		end
	end
end
 
local function marry(cid, msg, ext)
	msg = msg:gsub('my heart belongs to ', '')
	local player = getPlayerByName(msg)
	if player then
		if player ~= cid then
			if getPlayerPartner(player) == 0 then
				if getPlayerStorageValue(cid, 46000) == 1 then
					if getPlayerStorageValue(player, 46001) == getPlayerGUID(cid) then
						doCreatureSay(cid, msg, TALKTYPE_SAY)
						say('By the powers of the Gods your souls are now bound together for eternity. As a symbol of your love, receive your engraved wedding rings and festive clothes. ...', cid)
						say('May the Gods watch with grace over your future life as a married couple. Go now and celebrate your honeymoon on the peaceful island of Meluna!', cid)
						for _, pid in ipairs({cid, player}) do
							doPlayerAddOutfitId(pid, 34, 0)
							local v = getCreatureOutfit(pid)
							v.lookType = getPlayerSex(pid) == 0 and 329 or 328
							doCreatureChangeOutfit(pid, v)
							doSendMagicEffect(getThingPos(pid), CONST_ME_HEARTS)
							setPlayerStorageValue(pid, 46002, os.time() + 86400)
						end
						doSendMagicEffect(getNpcPos(), CONST_ME_MAGIC_BLUE)
						local nc, np = getCreatureName(cid), getCreatureName(player)
						doItemSetAttribute(doPlayerAddItem(cid, 10502, 1), 'description', np .. ' & ' .. nc .. ' forever - married on ' .. os.date('%b ' .. os.date('*t').day .. ', %Y') .. '.')
						doItemSetAttribute(doPlayerAddItem(player, 10502, 1), 'description', nc .. ' & ' .. np .. ' forever - married on ' .. os.date('%b ' .. os.date('*t').day .. ', %Y') .. '.')
						doPlayerSetPartner(cid, getPlayerGUID(player))
						doPlayerSetPartner(player, getPlayerGUID(cid))
						Topic[cid] = nil
						return true
					elseif ext == 1 then
						say(getCreatureName(cid) .. ', are you sure of your love to ' .. getCreatureName(player) .. ' and wish to bind your souls together for eternity?', cid)
						Topic[cid] = 5
						Partner[cid] = getPlayerGUID(player)
					end
				else
					say('Oh no! Your ring and outfit box are missing! I hope you didn\'t forget them! Can you please give them to me now?', cid)
					Topic[cid] = 8
					return true
				end
			else
				if ext then say('This person is already married to someone.', cid) end
			end
		else
			if ext then say('You cannot marry yourself.', cid) end
		end
	else
		if ext then say('This person is not online.', cid) end
	end
	if ext then doCreatureSay(cid, msg, TALKTYPE_SAY) end
end
 
function creatureSayCallback(cid, type, msg)
	if msgcontains(msg, 'my heart belongs to') and not npcHandler:isFocused(cid) then
		local v =  marry(cid, msg)
		if v then
			npcHandler:addFocus(cid)
			return true
		end
	elseif (msgcontains(msg, 'hello') or msgcontains(msg, 'hi')) and (not npcHandler:isFocused(cid)) then
		npcHandler:say('Hello '..getCreatureName(cid)..'! I have power to {marriage} you. Or {divorce}.', cid)
		npcHandler:addFocus(cid)
		Topic[cid] = nil
	elseif not npcHandler:isFocused(cid) then
		return false
	elseif msgcontains(msg, 'bye') or msgcontains(msg, 'farewell') then
		npcHandler:say('Good bye, '..getCreatureName(cid)..'. May the Gods watch over you, my child!', cid)
		Topic[cid] = nil
		npcHandler:releaseFocus(cid)
	elseif msgcontains(msg, 'marriage') or msgcontains(msg, 'marry') or msgcontains(msg, 'ceremony') or msgcontains(msg, 'wedding') then
		if getPlayerPartner(cid) ~= 0 then
			say('Yes, indeed, you are married, ' .. getCreatureName(cid) .. '. I hope your love is still blooming and flourishing.', cid)
			Topic[cid] = nil
		elseif getPlayerStorageValue(cid, 46000) < 1 then
			say('Before we can start the marriage ceremony, each of you need to hand me a blank wedding ring and a box with a wedding outfit. ' .. getCreatureName(cid) .. ', do you have these items with you and are you willing to give them to me now?', cid)
			Topic[cid] = 6
		else
			say('Do you wish me to initiate the marriage ceremony now?', cid)
			Topic[cid] = 1
		end
		doCreatureSay(cid, msg, TALKTYPE_SAY)
	elseif Topic[cid] == 1 then
		if msgcontains(msg, 'yes') or (msgcontains(msg, 'i') and msgcontains(msg, 'will')) then
			say('In the name of the Gods of Benevolence, I ask you, ' .. getCreatureName(cid) .. ': are both of you ready and eager to be bound in marriage?', cid)
			Topic[cid] = 2
		else
			say('Perhaps another time, marriage isn\'t a step one should consider without love in the heart.', cid)
			Topic[cid] = nil
		end
		doCreatureSay(cid, msg, TALKTYPE_SAY)
	elseif Topic[cid] == 2 then
		if msgcontains(msg, 'yes') or (msgcontains(msg, 'i') and msgcontains(msg, 'will')) then
			say('A moment of silence please... I hereby invoke the eternal powers who watch over our souls and lives. Please repeat after me: {May the gods bless us}!', cid)
			doSendMagicEffect(getNpcPos(), CONST_ME_MAGIC_BLUE)
			Topic[cid] = 3
		end
		doCreatureSay(cid, msg, TALKTYPE_SAY)
	elseif Topic[cid] == 3 then
		if msgcontains(msg, 'may') and msgcontains(msg, 'gods') and msgcontains(msg, 'bless') and msgcontains(msg, 'us') then
			say('I ask thee, ' .. getCreatureName(cid) .. ', what is the name of the person your {heart belongs to}?', cid)
			Topic[cid] = 4
		else
			--
		end
		doCreatureSay(cid, msg, TALKTYPE_SAY)
	elseif Topic[cid] == 4 then
		marry(cid, msg, 1)
	elseif Topic[cid] == 5 then
		if msgcontains(msg, 'yes') or (msgcontains(msg, 'i') and msgcontains(msg, 'will')) then
			say('So by the powers of the Gods, your soul is now bound to your beloved. ' .. getPlayerNameByGUID(Partner[cid]) .. ', now step forward and tell me if your heart belongs to ' .. getCreatureName(cid) .. ' too.', cid)
			setPlayerStorageValue(cid, 46001, Partner[cid])
			Topic[cid] = nil
			doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_RED)
		elseif msgcontains(msg, 'no') then
			say('Your neglection of love hurts my heart. Leave now!', cid)
			Topic[cid] = nil
			npcHandler:releaseFocus(cid)
		end
		doCreatureSay(cid, msg, TALKTYPE_SAY)
	elseif Topic[cid] == 6 then
		if msgcontains(msg, 'yes') or (msgcontains(msg, 'i') and msgcontains(msg, 'will')) then
			if getPlayerItemCount(cid, 2121) ~= 0 and doPlayerRemoveItem(cid, 10503, 1) then
				doPlayerRemoveItem(cid, 2121, 1)
				say('Thank you. I\'ll give them back to you when the time is right. Please make sure that BOTH of you have handed me your items before we start the {ceremony}.', cid)
				setPlayerStorageValue(cid, 46000, 1)
			else
				say('I\'m sorry, but you don\'t seem to have a ring and an outfit. I fear you need say {trade} for me to buy.', cid)
			end
		else
			say('Hm, then not.', cid)
		end
		Topic[cid] = nil
	elseif msgcontains(msg, 'meluna') then
		if getPlayerPartner(cid) ~= 0 then
			if getPlayerSex(cid) == 1 then
				say('You can travel to Meluna with Kamil who you will find to the south of Fibula, but only on the day of your wedding.  This island is protected by the Gods. They will not allow violence there. But on your honeymoon your thoughts should be on things other than violence. ...', cid)
				say(getCreatureName(cid) .. ', just so that you won\'t have to fear an ambush on your wedding day, would you like me to bring you to the boat on Fibula, from where you can travel to Meluna?', cid)
			else
				say('You can travel to Meluna with Kamil south of Fibula, but only on the day of your wedding. This island is protected by the Gods. They will not allow violence there. ...', cid)
				say(getCreatureName(cid) .. ', since you might not want to get your new clothes dirty, would you like me to bring you to the boat on Fibula, from where you can travel to Meluna?', cid)
			end
			Topic[cid] = 7
		else
			npcHandler:say('You can travel to Meluna with Kamil south of Fibula, but only on the day of your wedding. This island is protected by the Gods. They will not allow violence there.', cid)
			Topic[cid] = nil
		end
	elseif Topic[cid] == 7 then
		if msgcontains(msg, 'yes') then
			Topic[cid] = nil
			say(getPlayerSex(cid) == 1 and 'Ow no the city have destroyed by the Orshabaal, all who were there died!', cid)
			say(getPlayerSex(cid) == 1 and 'Sorry!', cid)
		else
			say('Hm, then not.', cid)
		end
		Topic[cid] = nil
	elseif Topic[cid] == 8 then
		if msgcontains(msg, 'yes') then
			if getPlayerItemCount(cid, 2121) ~= 0 and doPlayerRemoveItem(cid, 10503, 1) then
				doPlayerRemoveItem(cid, 2121, 1)
				say('Thank you. Now let\'s continue - please tell me again whom your heart belongs to!', cid)
				setPlayerStorageValue(cid, 46000, 1)
				Topic[cid] = 9
				return true
			else
				say('I\'m sorry, but you don\'t seem to have a ring and an outfit. I fear you need say {trade} for me to buy.', cid)
			end
		else
			say('Hm, then not.', cid)
		end
		Topic[cid] = nil
	elseif Topic[cid] == 9 then
		marry(cid, msg, true)
	elseif msgcontains(msg, 'divorce') and getPlayerPartner(cid) > 0 then
		npcHandler:say('What, a divorce? Do you yearn for the joys of singledom? I know it well, my marriage was a battleground... but less of that. Are you unhappily married?', cid)
		Topic[cid] = 10
	elseif Topic[cid] == 10 and msgcontains(msg, 'yes') then
		npcHandler:say('There\'s no justice in the world when a pretty lady like yourself is treated badly. Not that I have a special connection to the Gods or anything - but I can arrange your divorce, if that is what you wish. Do you?', cid)
		Topic[cid] = 11
	elseif Topic[cid] == 11 and msgcontains(msg, 'yes') then
		npcHandler:say('Hm. You see, uh... I would do it for free, but I could in fact use some cash. Do me a favour and \'donate\' 5000 gold coins so I can buy some, uhm... bibles. Then I\'ll do the rest. What do you say? ', cid)
		Topic[cid] = 12
	elseif Topic[cid] == 12 and msgcontains(msg, 'yes') then
		npcHandler:say('No p... problem. And no turning back now! But, just to be certain, - are you sure that you want to free yourself from the misery of being tied to the good-for-nothing person you married in a moment of madness? ', cid)
		Topic[cid] = 13
	elseif Topic[cid] == 13 and msgcontains(msg, 'yes') then
		if doPlayerRemoveMoney(cid, 5000) then
			npcHandler:say('Ehem. By the Gods and let this unhappy and mistaken marriage come to an end. All bonds be broken and so on. Thanks for the beer - I mean bible money. Don\'t make the same mistake again!', cid)
			local partner = getPlayerPartner(cid)
			if partner ~= 0 then
				local t = {cid}
				local player = getPlayerByGUID(partner)
				if player then
					table.insert(t, player)
				else
					db.executeQuery("UPDATE `players` SET `marriage` = 0 WHERE `id` = " .. partner)
					db.executeQuery("UPDATE `player_items` SET `itemtype` = 10510 WHERE `player_id` = " .. partner .. " AND `itemtype` = 10502")
				end
				for _, pid in ipairs(t) do
					doPlayerSetPartner(pid, 0)
					local v = getCreatureOutfit(pid)
					if isInArray({328, 329}, v.lookType) then
						v.lookType = getPlayerSex(pid) == 0 and 136 or 128
						doCreatureChangeOutfit(pid, v)
					end
					doPlayerRemoveOutfitId(pid, 34)
					while doPlayerRemoveItem(pid, 10502, 1) do
						doPlayerAddItem(pid, 10510, 1)
					end
				end
			end
		else
			npcHandler:say('Damn, I bet <hicks> your cheating spouse took all of your money <hicks> from you. You\'re as poor as a church mouse. <hicks>', cid)
		end
	end
	return true
end
 
npcHandler:setMessage(MESSAGE_FAREWELL, 'May the Gods be with you!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'May the Gods be with you!')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)