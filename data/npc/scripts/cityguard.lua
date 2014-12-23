local maxdmg = 500  -- maximum dmg dealt
local mindmg = 300 -- minimum dmg dealt
local speed = 220 -- NPC will follow target every 0.2 seconds (that's "ok" fast)
local atkspeed = 600 -- 1= 1 attack per second (!lowest value!) 2= 1 attack per 2 seconds, 3= 1 attack per 3 seconds,...
local maxchase = 12 -- 12 tiles chase length (depends on PZs, spawnpoint from NPC, surroundings,...
local area = 4 -- 4x4 area will be checked for monsters/players (6 is too much in my oppinion)

local lost = {"I'll get you next time!","I'm to old for this..","Run, coward, RUN!"} -- text if NPC lost target
local ktext = {"One for me!","...unworthy!","Bad luck!"} -- text if NPC kills the target
local ctext = {"I'm here to help!","Let me handle this!","Die!"} -- text while NPC is in battle (talktype orange!)
local ttext = {"Come out ","You coward ","I'll be waiting for you "} -- taunt if player walks into PZ

local hit = 0
local target = 0
local opos = 0
local nid = 0
local spec = {}
local kill = 0
local pz = 0
local tpos = 0
local npos = 0

local function goback(nid, opos)
	if (kill == 0) and (pz == 0) then
		selfSay(lost[math.random(1,#lost)])
	end
	doSendMagicEffect(getCreaturePosition(nid), 2)
	doTeleportThing(nid, opos, false)
	doSendMagicEffect(getCreaturePosition(nid), 101)
	target = 0
	spec = {}
	pz = 0
	kill = 0
end

local function closedis(nid, target, opos)
	if target ~= 0 then
		tpos = getCreaturePosition(target)
		npos = getCreaturePosition(nid)
		if isMonster(target) or isPlayer(target) then
			if getDistanceBetween(opos, tpos) <= maxchase then
				if getDistanceBetween(npos, tpos) <= area then
					if not getTilePzInfo(tpos) then
						if ((tpos.y - npos.y) >= 2) and ((tpos.y - npos.y)<= area) then
							if queryTileAddThing(nid, {x=npos.x,y=npos.y+1,z=npos.z}) == 1 then
								doMoveCreature(nid, SOUTH)
							elseif queryTileAddThing(nid, {x=npos.x,y=npos.y+1,z=npos.z}) ~= 1 then
								doTeleportThing(nid, tpos, true)
							else
								target = 0
								goback(nid,opos)
							end
						end
						if ((npos.y - tpos.y) >= 2) and ((npos.y - tpos.y) <= area) then
							if queryTileAddThing(nid, {x=npos.x,y=npos.y-1,z=npos.z}) == 1 then
								doMoveCreature(nid, NORTH)
							elseif queryTileAddThing(nid, {x=npos.x,y=npos.y-1,z=npos.z}) ~= 1 then
								doTeleportThing(nid, tpos, true)
							else
								target = 0
								goback(nid,opos)
							end
						end
						if((tpos.x - npos.x) >= 2) and ((tpos.x - npos.x) <= area) then
							if queryTileAddThing(nid, {x=npos.x+1,y=npos.y,z=npos.z}) == 1 then
								doMoveCreature(nid, EAST)
							elseif queryTileAddThing(nid, {x=npos.x+1,y=npos.y,z=npos.z}) ~= 1 then
								doTeleportThing(nid, tpos, true)
							else
								target = 0
								goback(nid,opos)
							end
						end
						if((npos.x - tpos.x) >= 2) and ((npos.x - tpos.x) <= area) then
							if queryTileAddThing(nid, {x=npos.x-1,y=npos.y,z=npos.z}) == 1 then
								doMoveCreature(nid, WEST)
							elseif queryTileAddThing(nid, {x=npos.x-1,y=npos.y,z=npos.z}) ~= 1 then
								doTeleportThing(nid, tpos, true)
							else
								target = 0
								goback(nid,opos)
							end
						end
					elseif pz == 0 then
						selfSay(ttext[math.random(1,#ttext)]..""..getCreatureName(target).."!")
						pz = 1
						target = 0
						goback(nid,opos)
					end
				end
			else
				target = 0
				goback(nid,opos)
			end
			addEvent(closedis, speed, nid, target, opos)
		else
			goback(nid, opos)
		end
	end
end

local function check_target(nid, opos)
	local position = nid:getPosition()
	spec = getSpectators(position, area, area,false,false)
	if spec then
		for i = 1, #spec do
			if isMonster(spec[i]) then
				target = spec[i]
				closedis(nid, target, opos)
				break
			elseif isPlayer(spec[i]) then
				if getPlayerSkullType(spec[i]) == (SKULL_WHITE or SKULL_RED) then
					target = spec[i]
					closedis(nid, target, opos)
					break
				end
			else
				target = 0
			end
		end
	end
end



function onCreatureAppear(cid)
	if isNpc(cid) then
		nid = cid
		opos = nid:getPosition()
	end
end

function onThink(cid)
	if target == 0 then
		check_target(nid, opos)
	end
	if target == 0 and kill == 1 then
		goback(nid,opos)
	end
	if (os.clock() - hit) >= atkspeed then
		if target ~= 0 then
			if not getTilePzInfo(getCreaturePosition(target)) then
				if math.random(1,10) < 3 then
					doSendDistanceShoot(getCreaturePosition(nid), getCreaturePosition(target), 30)
					doTargetCombatHealth(nid, target, COMBAT_HOLYDAMAGE, -mindmg, -maxdmg, 39)
					return true
				else
					doTargetCombatHealth(nid, target, COMBAT_PHYSICALDAMAGE, -mindmg, -maxdmg, 0)
					return true
				end
				if getCreatureHealth(target) <= 0 then
					kill = 1
					selfSay(ktext[math.random(1,#ktext)])
					target = 0
				else
					kill = 0
				end
				hit = os.clock()
				if math.random(1,10) < 3 then
					doCreatureSay(nid, ctext[math.random(1,#ctext)], TALKTYPE_MONSTER_SAY)
				end
			end
		end
	end
end