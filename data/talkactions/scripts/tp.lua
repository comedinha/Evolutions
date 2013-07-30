modaldialog3 = {
	title = "Acesso Rapido",
	message = "Para onde você quer ir?",
	buttons = {
		{ id = 1, value = "Ir" },
		{ id = 2, value = "Cancelar" },
	},
	buttonEnter = 1,
	buttonEscape = 2,
	choices = {
		{ id = 1, value = "Templo" },
		{ id = 2, value = "Gm Island" },
		{ id = 3, value = "XedeguX Island" },
		{ id = 4, value = "Sala de eventos" }
	},
	popup = false
}


function callback3(cid, button, choice)
	if (button == 1) then
		local pos = 0
		if (choice == 1) then
			pos = {x=100, y=40, z=6}
		elseif (choice == 2) then
			pos = {x=95, y=28, z=7}
		elseif (choice == 3) then
			pos = {x=318, y=330, z=7}
		elseif (choice == 4) then
			pos = {x=393, y=667, z=6}
		end
		doTeleportThing(cid, pos)
	end
end

function onSay(cid, words, param)
	addDialog(modaldialog3, 1003, cid, callback3);
	return true
end