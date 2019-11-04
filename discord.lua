Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId(Change it to your id) -- client id (int)

        SetRichPresence(GetPlayerName(PlayerId()) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("Change to your photo name This will be the photo of the server") -- large logo key (string)
        SetDiscordRichPresenceAssetText("Players:  " ..GetNumberOfPlayers().. "/32 ") -- Large logo "hover" text (string)

        SetDiscordRichPresenceAssetSmall("Change to your photo name This will be the photo of the Health") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText(GetPlayerName(PlayerId()) .. " Health Is: "..(GetEntityHealth(player) -100).. "%") -- small logo "hover" text (string)
    end
end)

--[[
    
    Made By I'm So Lonley Thanks For Using IT
    
--]]
