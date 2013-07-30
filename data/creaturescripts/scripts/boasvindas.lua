local message = [[Seja bem vindo ao Alissow OTs!

Utilize o canal help para maiores informações.

Para começar, pedimos após a criação do char, vá ao bau do lado direito do templo para tentar pegar um bonus!

Enjoy xD]]
function onLogin(cid)
	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NEW) then
		doPlayerPopupFYI(cid, message)
	end
	return true
end