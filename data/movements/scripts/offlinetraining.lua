modaldialog1 = {
	title = "Offline Training",
	message = "Para qual sala você quer ir?",
	buttons = {
		{ id = 1, value = "Ir" },
	},
	buttonEnter = 1,
	choices = {
		{ id = 1, value = "Sword" },
		{ id = 2, value = "Axe" },
		{ id = 3, value = "Club" },
		{ id = 4, value = "Distance" },
		{ id = 5, value = "Magic Level" }
	},
	popup = false
}


function callback1(cid, button, choice)
	if button == 1 or button == 29 or button == 0 then
		local pos = 0
		if (choice == 1) then
			pos = {x=98, y=45, z=15}
		end
		if (choice == 2) then
			pos = {x=108, y=45, z=15}
		end
		if (choice == 3) then
			pos = {x=117, y=45, z=15}
		end
		if (choice == 4) then
			pos = {x=98, y=55, z=15}
		end
		if (choice == 5) then
			pos = {x=117, y=55, z=15}
		end
		doTeleportThing(cid, pos)
	end
end

function onStepIn(cid, item, position, fromPosition)
	addDialog(modaldialog1, 1001, cid, callback1);
end
