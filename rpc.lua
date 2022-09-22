local isRDR = not TerraingridActivate

Citizen.CreateThread(function()
	while true do
		local playerPed = PlayerPedId()
		local playerserver_NAME = GetPlayerName(PlayerId())
        local playerserver_ID = GetPlayerServerId(PlayerId())
        local playerserver_COUNT = #GetActivePlayers()

		SetDiscordAppId(YOUR_ID)
        SetRichPresence(""..playerserver_NAME.. " - " ..playerserver_COUNT.. "/1024")

		SetDiscordRichPresenceAsset("your logo")
		SetDiscordRichPresenceAssetText(playerserver_NAME)

        SetDiscordRichPresenceAction(0, "Discord", "your discord")
        SetDiscordRichPresenceAction(1, "Website", "your website")

		Citizen.Wait(5000)
	end
end)
