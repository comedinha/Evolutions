local messages = {
"Tip: This map have more than 11 cities, each with different characteristics. You can travel to different cities using a boat one a flying carpet.",
"Tip: Explore the map and you can find great riches.",
"Tip: Make no mistake, the portals are not the only areas to hunt, there are hundreds of other places to hunt!",
"Alissow 5.2 :3"
}

local i = 0
function onThink(interval, lastExecution)
	local message = messages[(i % #messages) + 1]
	Game.broadcastMessage("" .. message, MESSAGE_STATUS_CONSOLE_ORANGE)
	Game.broadcastMessage("Found a bug? !bugreport. We will be grateful to you :3", MESSAGE_STATUS_CONSOLE_ORANGE)
	i = i + 1
	return true
end