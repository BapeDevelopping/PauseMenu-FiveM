RegisterNetEvent('echap:DropPlayer')
AddEventHandler('echap:DropPlayer', function()
    print("test")
    local src = source
    DropPlayer(src, 'Vous venez de vous déconnectez du serveur. Merci d\'être venu ! Bonne journée à vous')
end)