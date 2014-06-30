local tele = {x=98, y=43, z=10}
local level = 30

function onUse(cid, item, frompos, item2, topos)
	if item.uid ==2133 then
		if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 5 or getPlayerVocation(cid) == 6 and getPlayerLevel(cid) >= level then
			doPlayerSendTextMessage(cid,22,"Welcome to the Shrine, where you can enchant your weapons.")
			doTeleportThing(cid,tele)
		else
			doPlayerSendTextMessage(cid,22,"Only Druids and Sorcerers and level above "..level.." can use the Shrines.")
		end
	end
end