local focuses = {}
local function isFocused(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			return true
		end
	end
	return false
end

local function addFocus(cid)
	if(not isFocused(cid)) then
		table.insert(focuses, cid)
	end
end
local function removeFocus(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			table.remove(focuses, i)
			break
		end
	end
end
local function lookAtFocus()
	for i, v in pairs(focuses) do
		if(isPlayer(v)) then
			doNpcSetCreatureFocus(v)
			return
		end
	end
	doNpcSetCreatureFocus(0)
end

function onCreatureSay(cid, type, msg)
	if((msg == "e o Orshabaal?") or (msg == "e o orshabaal?") or (msg == "e o Orsha?") or (msg == "e o orsha?")) then
		if math.random(300) <= 50 then
			selfSay("Orshabaal! Vai levar pau!", cid, true)
		end
	end
end

function thinkCallback(cid)
	if math.random(300) == 1 then
		selfSay('Orshabaal! Vai levar pau!')
	end
	return true
end