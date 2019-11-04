Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId(640944828502245376) -- client id (int)

        SetRichPresence(GetPlayerName(PlayerId()) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("big") -- large logo key (string)
        SetDiscordRichPresenceAssetText("Players:  " ..GetNumberOfPlayers().. "/64 ") -- Large logo "hover" text (string)

        SetDiscordRichPresenceAssetSmall("health") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText(GetPlayerName(PlayerId()) .. " Health Is: "..(GetEntityHealth(player) -100).. "%") -- small logo "hover" text (string)
    end
end)

--[[
    
    Made By I'm So Lonley Thanks For Using IT
    
--]]