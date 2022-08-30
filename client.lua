local opened = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(3)
		SetPauseMenuActive(false)
	end
end)


function SetDisplay(bool)
	SetNuiFocus(bool, bool)
	SetNuiFocusKeepInput(false)
	DisableIdleCamera(bool)
	SetCursorLocation(0.5, 0.5)
	SendNUIMessage({
        type = "ui",
        status = bool,
		rule = Config.Rules
    });
end

function close()
	SetDisplay(false)
    opened = false
end

-- 0 -1 0
------------------------------------------------------------------------------

RegisterNUICallback("close", function(data)
    close()
end)

RegisterNUICallback("map", function(data)
    close()
	ActivateFrontendMenu('FE_MENU_VERSION_SP_PAUSE')
	Wait(50)
	PauseMenuceptionGoDeeper(-1)
	PauseMenuceptionTheKick()
end)

RegisterNUICallback("settings", function(data)
    close()
	ActivateFrontendMenu('FE_MENU_VERSION_LANDING_MENU',0, 1)
end)

RegisterNUICallback("keymap", function(data)
    close()
	ActivateFrontendMenu('FE_MENU_VERSION_LANDING_KEYMAPPING_MENU',0, 1)
end)

RegisterNUICallback("discord", function(data)
    close()
	SendNUIMessage({
        type = "discord",
        url = Config.discord,
    });
end)

RegisterNUICallback("quit", function(data)
    close()
	TriggerServerEvent('echap:DropPlayer')
end)
------------------------------------------------------------------------------

RegisterKeyMapping("openesc", "Mettre sur pause", "keyboard", "R")
RegisterCommand('openesc', function ()
	if not IsPauseMenuActive() and not IsNuiFocused() then
		SetDisplay(true)
	end
end)