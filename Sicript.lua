local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local WEBHOOK_URL = "https://discord.com/api/webhooks/1381333725832286350/HFbWhUTZkVjwZhlyjzgP_pofeAjiGffP73wU2N0LpCQxQlkr9SPJ9qCbOl6RhCyJcH4b"

-- Universal request function finder for all major exploits
local function findRequest()
    return (syn and syn.request) -- Synapse X
        or (http and http.request) -- Script-Ware
        or (http_request) -- Krnl, Fluxus, Electron
        or (request) -- Some older/exotic exploits
        or (requestfunc) -- Some older exploits
        or (fluxus and fluxus.request) -- Fluxus
        or (electron and electron.request) -- Electron
        or nil
end

local function sendToDiscord(username, userid)
    local data = {
        ["content"] = string.format("Player joined: %s | UserId: %d", username, userid)
    }
    local jsonData = HttpService:JSONEncode(data)

    local req = findRequest()
    if req then
        req({
            Url = WEBHOOK_URL,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = jsonData
        })
    else
        warn("No compatible exploit request function found. This script must be run in a supported executor.")
    end
end

Players.PlayerAdded:Connect(function(player)
    sendToDiscord(player.Name, player.UserId)
end)
