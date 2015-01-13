function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if item.uid == 60001 then
		if player:getStorageValue(60001) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a red bag.")
			local bag = player:addItem(1993, 1)
			bag:addItem(2427, 1)
			bag:addItem(2466, 1)
			bag:addItem(5930, 50)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60001, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60002 then
		if player:getStorageValue(60002) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a minotaur leather.")
			player:addItem(5878, 50)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60002, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60003 then
		if player:getStorageValue(60003) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a minotaur leather.")
			player:addItem(5878, 50)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60003, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60004 then
		if player:getStorageValue(60004) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a chicken feather.")
			player:addItem(5890, 50)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60004, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60005 then
		if player:getStorageValue(60005) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a honeycomb.")
			player:addItem(5902, 50)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60005, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60006 then
		if player:getStorageValue(60006) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a Elane's crossbow.")
			player:addItem(5947, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60006, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60007 then
		if player:getStorageValue(60007) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a lizard leather.")
			player:addItem(5876, 100)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60007, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60008 then
		if player:getStorageValue(60008) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a enchanted chicken wing.")
			player:addItem(5891, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60008, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60009 then
		if player:getStorageValue(60009) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a piece of royal steel.")
			player:addItem(5887, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60009, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60010 then
		if player:getStorageValue(60010) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a iron one.")
			player:addItem(5880, 100)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60010, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60011 then
		if player:getStorageValue(60011) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a huge chunk of crude iron.")
			player:addItem(5892, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60011, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60012 then
		if player:getStorageValue(60012) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a perfect behemoth fang.")
			player:addItem(5893,100)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60012, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60013 then
		if player:getStorageValue(60013) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a fighting spirit.")
			player:addItem(5884, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60013, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60014 then
		if player:getStorageValue(60014) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a spool of yarn.")
			player:addItem(5886,10)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60014, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60015 then
		if player:getStorageValue(60015) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a bear paw.")
			player:addItem(5896,40)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60015, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60016 then
		if player:getStorageValue(60016) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a wolf paw.")
			player:addItem(5897,40)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60016, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60017 then
		if player:getStorageValue(60017) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a Ceiron's wolf tooth chain.")
			player:addItem(5940, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60017, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60018 then
		if player:getStorageValue(60018) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a mermaid comb.")
			player:addItem(5945, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60018, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60019 then
		if player:getStorageValue(60019) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a ape fur.")
			player:addItem(5883,100)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60019, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60020 then
		if player:getStorageValue(60020) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a fish fin.")
			player:addItem(5895,100)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60020, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60021 then
		if player:getStorageValue(60021) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a mandrake.")
			player:addItem(5015, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60021, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60022 then
		if player:getStorageValue(60022) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a bag.")
			local bag = player:addItem(1987, 1)
			bag:addItem(5810, 1)
			bag:addItem(3955, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60022, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60023 then
		if player:getStorageValue(60023) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a jester hat.")
			player:addItem(7957, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60023, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60024 then
		if player:getStorageValue(60024) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a jester staff.")
			player:addItem(7958, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60024, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60025 then
		if player:getStorageValue(60025) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a claw of'The Noxious Spawn.")
			player:addItem(10309, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60025, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60026 then
		if player:getStorageValue(60026) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a vampiric crest.")
			player:addItem(9955, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60026, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60027 then
		if player:getStorageValue(60027) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a widow's mandibles.")
			player:addItem(11328, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60027, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60028 then
		if player:getStorageValue(60028) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a nettle blossom.")
			player:addItem(11231, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60028, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60029 then
		if player:getStorageValue(60029) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a fake dwarven beard.")
			player:addItem(7526, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60029, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60030 then
		if player:getStorageValue(60030) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a red bag.")
			local bag = player:addItem(1993, 1)
			bag:addItem(13545, 1)
			bag:addItem(13543, 1)
			bag:addItem(13541, 1)
			bag:addItem(13540, 1)
			bag:addItem(13542, 1)
			bag:addItem(13544, 1)
			bag:addItem(13546, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60030, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60031 then
		if player:getStorageValue(60031) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a life ring.")
			player:addItem(2168, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60031, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60032 then
		if player:getStorageValue(60032) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a pirate voodoo doll.")
			player:addItem(5810, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60032, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60033 then
		if player:getStorageValue(60033) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a mandrake.")
			player:addItem(5015, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60033, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60034 then
		if player:getStorageValue(60034) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a rope.")
			player:addItem(2120, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60034, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60035 then
		if player:getStorageValue(60035) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a voodoo doll.")
			player:addItem(3955, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60035, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60036 then
		if player:getStorageValue(60036) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a royal helmet.")
			player:addItem(2498, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60036, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60037 then
		if player:getStorageValue(60037) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a pair of soft boots.")
			player:addItem(6132, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60037, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60038 then
		if player:getStorageValue(60038) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a draken boots.")
			player:addItem(12646, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60038, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60039 then
		if player:getStorageValue(60039) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a backpack of holding.")
			player:addItem(2365, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60039, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60040 then
		if player:getStorageValue(60040) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a crystal mace.")
			player:addItem(2445, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60040, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60041 then
		if player:getStorageValue(60041) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a stuffed dragon.")
			player:addItem(5791, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60041, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60042 then
		if player:getStorageValue(60042) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a ceremonial ankh.")
			player:addItem(6561, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60042, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60043 then
		if player:getStorageValue(60043) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a necromancer shield.")
			player:addItem(6433, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60043, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60044 then
		if player:getStorageValue(60044) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a frozen starlight.")
			player:addItem(2361, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60044, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60045 then
		if player:getStorageValue(60045) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a daramian waraxe.")
			player:addItem(2440, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60045, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60046 then
		if player:getStorageValue(60046) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a earthborn titan armor.")
			player:addItem(8882, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60046, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60047 then
		if player:getStorageValue(60047) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a red bag.")
			local bag = player:addItem(1993, 1)
			bag:addItem(9776, 1)
			bag:addItem(9777, 1)
			bag:addItem(9778, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60047, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60048 then
		if player:getStorageValue(60048) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a crystal coin.")
			player:addItem(2160, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60048, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60049 then
		if player:getStorageValue(60049) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a boots of haste.")
			player:addItem(2195, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60049, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60050 then
		if player:getStorageValue(60050) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a blue legs.")
			player:addItem(7730, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60050, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60051 then
		if player:getStorageValue(60051) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a helmet of the ancients.")
			player:addItem(2343, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60051, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60052 then
		if player:getStorageValue(60052) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a giant sword.")
			player:addItem(2393, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60052, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60053 then
		if player:getStorageValue(60053) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a naginata.")
			player:addItem(2426, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60053, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60054 then
		if player:getStorageValue(60054) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a great axe.")
			player:addItem(2415, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60054, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60055 then
		if player:getStorageValue(60055) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a skull staff.")
			player:addItem(2436, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60055, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60056 then
		if player:getStorageValue(60056) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a dragon shield.")
			player:addItem(2516, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60056, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60057 then
		if player:getStorageValue(60057) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a djinn blade.")
			player:addItem(2451, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60057, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60058 then
		if player:getStorageValue(60058) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a spirit cloak.")
			player:addItem(8870, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60058, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60059 then
		if player:getStorageValue(60059) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a golden armor.")
			player:addItem(2466, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60059, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60060 then
		if player:getStorageValue(60060) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a mastermind shield.")
			player:addItem(2514, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60060, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60061 then
		if player:getStorageValue(60061) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a golden legs.")
			player:addItem(2470, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60061, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60062 then
		if player:getStorageValue(60062) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a knight armor.")
			player:addItem(2476, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60062, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60063 then
		if player:getStorageValue(60063) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a greenwood coat.")
			player:addItem(8869, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60063, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60064 then
		if player:getStorageValue(60064) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a knight legs.")
			player:addItem(2477, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60064, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60065 then
		if player:getStorageValue(60065) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a firewalker boots.")
			player:addItem(9933, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60065, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60066 then
		if player:getStorageValue(60066) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a crown legs.")
			player:addItem(2488, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60066, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60067 then
		if player:getStorageValue(60067) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a ceremonial mask.")
			player:addItem(2501, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60067, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60068 then
		if player:getStorageValue(60068) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a bunnyslippers.")
			player:addItem(2644, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60068, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60069 then
		if player:getStorageValue(60069) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a eagle shield.")
			player:addItem(2538, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60069, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60070 then
		if player:getStorageValue(60070) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a demon helmet.")
			player:addItem(2493, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60070, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60071 then
		if player:getStorageValue(60071) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a steel boots.")
			player:addItem(2645, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60071, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60072 then
		if player:getStorageValue(60072) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a dwarven armor.")
			player:addItem(2503, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60072, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60073 then
		if player:getStorageValue(60073) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a legion helmet.")
			player:addItem(2480, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60073, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60074 then
		if player:getStorageValue(60074) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a vampire shield.")
			player:addItem(2534, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60074, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	elseif item.uid == 60075 then
		if player:getStorageValue(60075) == -1 then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found a tempest shield.")
			player:addItem(2542, 1)
			player:setStorageValue(11551, player:getStorageValue(11551)+1)
			player:setStorageValue(60075, 1)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
		end
	end
	return true
end
