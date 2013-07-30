function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,11566)


if voc == 1 then
if queststatus == -1 then
doPlayerAddItem(cid,9778,1)
setPlayerStorageValue(cid,11566,1)
else
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
elseif voc == 2 then
if queststatus == -1 then
doPlayerAddItem(cid,9778,1)
setPlayerStorageValue(cid,11566,1)
else
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
elseif voc == 3 then
if queststatus == -1 then
doPlayerAddItem(cid,9777,1)
setPlayerStorageValue(cid,11566,1)
else
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
elseif voc == 4 then
if queststatus == -1 then
doPlayerAddItem(cid,9776,1)

setPlayerStorageValue(cid,11566,1)
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
elseif voc == 5 then
if queststatus == -1 then
doPlayerAddItem(cid,9778,1)

setPlayerStorageValue(cid,11566,1)
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
elseif voc == 6 then
if queststatus == -1 then
doPlayerAddItem(cid,9778,1)

setPlayerStorageValue(cid,11566,1)
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
elseif voc == 7 then
if queststatus == -1 then
doPlayerAddItem(cid,9777,1)

setPlayerStorageValue(cid,11566,1)
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
elseif voc == 8 then
if queststatus == -1 then
doPlayerAddItem(cid,9776,1)

setPlayerStorageValue(cid,11566,1) else
doPlayerSendTextMessage(cid,22,"Você já recebeu o seu prêmio.")
end
else
return 0
end

return 1
end