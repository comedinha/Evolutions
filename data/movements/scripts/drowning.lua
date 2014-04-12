local condition = Condition(CONDITION_DROWN)
condition:setParameter(CONDITION_PARAM_PERIODICDAMAGE, -20)
condition:setParameter(CONDITION_PARAM_TICKS, -1)
condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 2000)

function onStepIn(cid, item, position, fromPosition)
	local slotItem = getPlayerSlotItem(cid, CONST_SLOT_HEAD)
	if isPlayer(cid) then
		if Player(cid):getCondition(CONDITION_DROWN,CONDITIONID_COMBAT) == nil then
			doAddCondition(cid, condition)
		end
		if getPlayerStorageValue(cid,17100) > os.time() then
			if getPlayerStorageValue(cid,17101) < 1 then
				doChangeSpeed(cid, 600)
				setPlayerStorageValue(cid,17101,1)
			end
		end
	end

	if(math.random(1, 10) == 1) then
		doSendMagicEffect(position, CONST_ME_BUBBLES)
	end
	return true
end

local underWater = {5405, 5406, 5407, 5408, 5409, 5410, 5743, 5744, 5764, 9671, 9672, 9673, 10019}
function onStepOut(cid, item, pos)
	if isPlayer(cid) then
		if(isInArray(underWater, getThingfromPos({x = getThingPos(cid).x, y = getThingPos(cid).y, z = getThingPos(cid).z, stackpos = 0}).itemid)) then
			return true
		else
			doRemoveCondition(cid, CONDITION_DROWN)
			if getPlayerStorageValue(cid,17101) == 1 then
				doChangeSpeed(cid, 600 * (-1))
				setPlayerStorageValue(cid,17101,0)
			end
		end
	end
	return true
end