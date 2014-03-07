function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60001 then
		if getPlayerStorageValue(cid,60001) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a red bag.")
			local bag = doPlayerAddItem(cid,1993,1)
			doAddContainerItem(bag,2427,1)
			doAddContainerItem(bag,2466,1)
			doAddContainerItem(bag,5930,50)
			setPlayerStorageValue(cid,60001,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60002 then
		if getPlayerStorageValue(cid,60002) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a minotaur leather.")
			doPlayerAddItem(cid,5878,50)
			setPlayerStorageValue(cid,60002,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60003 then
		if getPlayerStorageValue(cid,60003) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a minotaur leather.")
			doPlayerAddItem(cid,5878,50)
			setPlayerStorageValue(cid,60003,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60004 then
		if getPlayerStorageValue(cid,60004) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a chicken feather.")
			doPlayerAddItem(cid,5890,50)
			setPlayerStorageValue(cid,60004,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60005 then
		if getPlayerStorageValue(cid,60005) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a honeycomb.")
			doPlayerAddItem(cid,5902,50)
			setPlayerStorageValue(cid,60005,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60006 then
		if getPlayerStorageValue(cid,60006) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Elane's crossbow.")
			doPlayerAddItem(cid,5947,1)
			setPlayerStorageValue(cid,60006,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60007 then
		if getPlayerStorageValue(cid,60007) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a lizard leather.")
			doPlayerAddItem(cid,5876,100)
			setPlayerStorageValue(cid,60007,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60008 then
		if getPlayerStorageValue(cid,60008) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a enchanted chicken wing.")
			doPlayerAddItem(cid,5891,1)
			setPlayerStorageValue(cid,60008,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60009 then
		if getPlayerStorageValue(cid,60009) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a piece of royal steel.")
			doPlayerAddItem(cid,5887,1)
			setPlayerStorageValue(cid,60009,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60010 then
		if getPlayerStorageValue(cid,60010) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a iron one.")
			doPlayerAddItem(cid,5880,100)
			setPlayerStorageValue(cid,60010,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60011 then
		if getPlayerStorageValue(cid,60011) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a huge chunk of crude iron.")
			doPlayerAddItem(cid,5892,1)
			setPlayerStorageValue(cid,60011,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60012 then
		if getPlayerStorageValue(cid,60012) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a perfect behemoth fang.")
			doPlayerAddItem(cid,5893,100)
			setPlayerStorageValue(cid,60012,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60013 then
		if getPlayerStorageValue(cid,60013) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a fighting spirit.")
			doPlayerAddItem(cid,5884,1)
			setPlayerStorageValue(cid,60013,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60014 then
		if getPlayerStorageValue(cid,60014) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a spool of yarn.")
			doPlayerAddItem(cid,5886,10)
			setPlayerStorageValue(cid,60014,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60015 then
		if getPlayerStorageValue(cid,60015) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bear paw.")
			doPlayerAddItem(cid,5896,40)
			setPlayerStorageValue(cid,60015,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60016 then
		if getPlayerStorageValue(cid,60016) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a wolf paw.")
			doPlayerAddItem(cid,5897,40)
			setPlayerStorageValue(cid,60016,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60017 then
		if getPlayerStorageValue(cid,60017) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Ceiron's wolf tooth chain.")
			doPlayerAddItem(cid,5940,1)
			setPlayerStorageValue(cid,60017,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60018 then
		if getPlayerStorageValue(cid,60018) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a mermaid comb.")
			doPlayerAddItem(cid,5945,1)
			setPlayerStorageValue(cid,60018,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60019 then
		if getPlayerStorageValue(cid,60019) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a ape fur.")
			doPlayerAddItem(cid,5883,1)
			setPlayerStorageValue(cid,60019,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60020 then
		if getPlayerStorageValue(cid,60020) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a fish fin.")
			doPlayerAddItem(cid,5895,100)
			setPlayerStorageValue(cid,60020,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60021 then
		if getPlayerStorageValue(cid,60021) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a mandrake.")
			doPlayerAddItem(cid,5015,1)
			setPlayerStorageValue(cid,60021,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60022 then
		if getPlayerStorageValue(cid,60022) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bag = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bag,5810,1)
			doAddContainerItem(bag,3955,1)
			setPlayerStorageValue(cid,60022,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60023 then
		if getPlayerStorageValue(cid,60023) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a jester hat.")
			doPlayerAddItem(cid,7957,1)
			setPlayerStorageValue(cid,60023,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60024 then
		if getPlayerStorageValue(cid,60024) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a jester staff.")
			doPlayerAddItem(cid,7958,1)
			setPlayerStorageValue(cid,60024,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60025 then
		if getPlayerStorageValue(cid,60025) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a claw of'The Noxious Spawn.")
			doPlayerAddItem(cid,10309,1)
			setPlayerStorageValue(cid,60025,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60026 then
		if getPlayerStorageValue(cid,60026) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a vampiric crest.")
			doPlayerAddItem(cid,9955,1)
			setPlayerStorageValue(cid,60026,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60027 then
		if getPlayerStorageValue(cid,60027) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a widow's mandibles.")
			doPlayerAddItem(cid,11328,1)
			setPlayerStorageValue(cid,60027,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60028 then
		if getPlayerStorageValue(cid,60028) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a nettle blossom.")
			doPlayerAddItem(cid,11231,1)
			setPlayerStorageValue(cid,60028,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60029 then
		if getPlayerStorageValue(cid,60029) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a fake dwarven beard.")
			doPlayerAddItem(cid,7526,1)
			setPlayerStorageValue(cid,60029,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60030 then
		if getPlayerStorageValue(cid,60030) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a red bag.")
			local bag = doPlayerAddItem(cid,1993,1)
			doAddContainerItem(bag,13545,1)
			doAddContainerItem(bag,13543,1)
			doAddContainerItem(bag,13541,1)
			doAddContainerItem(bag,13540,1)
			doAddContainerItem(bag,13542,1)
			doAddContainerItem(bag,13544,1)
			doAddContainerItem(bag,13546,1)
			setPlayerStorageValue(cid,60030,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60031 then
		if getPlayerStorageValue(cid,60031) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a life ring.")
			doPlayerAddItem(cid,2168,1)
			setPlayerStorageValue(cid,60031,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60032 then
		if getPlayerStorageValue(cid,60032) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a pirate voodoo doll.")
			doPlayerAddItem(cid,5810,1)
			setPlayerStorageValue(cid,60032,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60033 then
		if getPlayerStorageValue(cid,60033) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a mandrake.")
			doPlayerAddItem(cid,5015,1)
			setPlayerStorageValue(cid,60033,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60034 then
		if getPlayerStorageValue(cid,60034) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a rope.")
			doPlayerAddItem(cid,2120,1)
			setPlayerStorageValue(cid,60034,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60035 then
		if getPlayerStorageValue(cid,60035) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a voodoo doll.")
			doPlayerAddItem(cid,3955,1)
			setPlayerStorageValue(cid,60035,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60036 then
		if getPlayerStorageValue(cid,60036) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a royal helmet.")
			doPlayerAddItem(cid,2498,1)
			setPlayerStorageValue(cid,60036,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60037 then
		if getPlayerStorageValue(cid,60037) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a pair of soft boots.")
			doPlayerAddItem(cid,6132,1)
			setPlayerStorageValue(cid,60037,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60038 then
		if getPlayerStorageValue(cid,60038) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a draken boots.")
			doPlayerAddItem(cid,12646,1)
			setPlayerStorageValue(cid,60038,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60039 then
		if getPlayerStorageValue(cid,60039) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a backpack of holding.")
			doPlayerAddItem(cid,2365,1)
			setPlayerStorageValue(cid,60039,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60040 then
		if getPlayerStorageValue(cid,60040) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a crystal mace.")
			doPlayerAddItem(cid,2445,1)
			setPlayerStorageValue(cid,60040,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60041 then
		if getPlayerStorageValue(cid,60041) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a stuffed dragon.")
			doPlayerAddItem(cid,5791,1)
			setPlayerStorageValue(cid,60041,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60042 then
		if getPlayerStorageValue(cid,60042) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a ceremonial ankh.")
			doPlayerAddItem(cid,6561,1)
			setPlayerStorageValue(cid,60042,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60043 then
		if getPlayerStorageValue(cid,60043) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a necromancer shield.")
			doPlayerAddItem(cid,6433,1)
			setPlayerStorageValue(cid,60043,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60044 then
		if getPlayerStorageValue(cid,60044) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a frozen starlight.")
			doPlayerAddItem(cid,2361,1)
			setPlayerStorageValue(cid,60044,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60045 then
		if getPlayerStorageValue(cid,60045) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a daramian waraxe.")
			doPlayerAddItem(cid,2440,1)
			setPlayerStorageValue(cid,60045,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60046 then
		if getPlayerStorageValue(cid,60046) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a earthborn titan armor.")
			doPlayerAddItem(cid,8882,1)
			setPlayerStorageValue(cid,60046,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60047 then
		if getPlayerStorageValue(cid,60047) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a red bag.")
			local bag = doPlayerAddItem(cid,1993,1)
			doAddContainerItem(bag,9776,1)
			doAddContainerItem(bag,9777,1)
			doAddContainerItem(bag,9778,1)
			setPlayerStorageValue(cid,60047,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60048 then
		if getPlayerStorageValue(cid,60048) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a crystal coin.")
			doPlayerAddItem(cid,2160,1)
			setPlayerStorageValue(cid,60048,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60049 then
		if getPlayerStorageValue(cid,60049) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a boots of haste.")
			doPlayerAddItem(cid,2195,1)
			setPlayerStorageValue(cid,60049,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60051 then
		if getPlayerStorageValue(cid,60051) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a helmet of the ancients.")
			doPlayerAddItem(cid,2343,1)
			setPlayerStorageValue(cid,60051,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60052 then
		if getPlayerStorageValue(cid,60052) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a giant sword.")
			doPlayerAddItem(cid,2393,1)
			setPlayerStorageValue(cid,60052,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60053 then
		if getPlayerStorageValue(cid,60053) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a naginata.")
			doPlayerAddItem(cid,2426,1)
			setPlayerStorageValue(cid,60053,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60054 then
		if getPlayerStorageValue(cid,60054) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a great axe.")
			doPlayerAddItem(cid,2415,1)
			setPlayerStorageValue(cid,60054,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60055 then
		if getPlayerStorageValue(cid,60055) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a skull staff.")
			doPlayerAddItem(cid,2436,1)
			setPlayerStorageValue(cid,60055,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60056 then
		if getPlayerStorageValue(cid,60056) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a dragon shield.")
			doPlayerAddItem(cid,2516,1)
			setPlayerStorageValue(cid,60056,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60057 then
		if getPlayerStorageValue(cid,60057) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a djinn blade.")
			doPlayerAddItem(cid,2451,1)
			setPlayerStorageValue(cid,60057,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60059 then
		if getPlayerStorageValue(cid,60059) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a golden armor.")
			doPlayerAddItem(cid,2466,1)
			setPlayerStorageValue(cid,60059,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60060 then
		if getPlayerStorageValue(cid,60060) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a mastermind shield.")
			doPlayerAddItem(cid,2514,1)
			setPlayerStorageValue(cid,60060,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60061 then
		if getPlayerStorageValue(cid,60061) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a golden legs.")
			doPlayerAddItem(cid,2470,1)
			setPlayerStorageValue(cid,60061,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60062 then
		if getPlayerStorageValue(cid,60062) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a knight armor.")
			doPlayerAddItem(cid,2476,1)
			setPlayerStorageValue(cid,60062,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60064 then
		if getPlayerStorageValue(cid,60064) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a knight legs.")
			doPlayerAddItem(cid,2477,1)
			setPlayerStorageValue(cid,60064,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60066 then
		if getPlayerStorageValue(cid,60066) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a crown legs.")
			doPlayerAddItem(cid,2488,1)
			setPlayerStorageValue(cid,60066,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60067 then
		if getPlayerStorageValue(cid,60067) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a ceremonial mask.")
			doPlayerAddItem(cid,2501,1)
			setPlayerStorageValue(cid,60067,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60068 then
		if getPlayerStorageValue(cid,60068) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bunnyslippers.")
			doPlayerAddItem(cid,2644,1)
			setPlayerStorageValue(cid,60068,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60069 then
		if getPlayerStorageValue(cid,60069) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a eagle shield.")
			doPlayerAddItem(cid,2538,1)
			setPlayerStorageValue(cid,60069,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60070 then
		if getPlayerStorageValue(cid,60070) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a demon helmet.")
			doPlayerAddItem(cid,2493,1)
			setPlayerStorageValue(cid,60070,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60071 then
		if getPlayerStorageValue(cid,60071) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a steel boots.")
			doPlayerAddItem(cid,2645,1)
			setPlayerStorageValue(cid,60071,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60072 then
		if getPlayerStorageValue(cid,60072) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a dwarven armor.")
			doPlayerAddItem(cid,2503,1)
			setPlayerStorageValue(cid,60072,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60073 then
		if getPlayerStorageValue(cid,60073) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a great shield.")
			doPlayerAddItem(cid,2522,1)
			setPlayerStorageValue(cid,60073,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60074 then
		if getPlayerStorageValue(cid,60074) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a vampire shield.")
			doPlayerAddItem(cid,2534,1)
			setPlayerStorageValue(cid,60074,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	elseif item.uid == 60075 then
		if getPlayerStorageValue(cid,60075) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a tempest shield.")
			doPlayerAddItem(cid,2542,1)
			setPlayerStorageValue(cid,60075,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end
	end
	setPlayerStorageValue(cid, 11551, 1)
	return true
end
