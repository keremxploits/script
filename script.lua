local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local WEBHOOK_URL = "https://discord.com/api/webhooks/1381333725832286350/HFbWhUTZkVjwZhlyjzgP_pofeAjiGffP73wU2N0LpCQxQlkr9SPJ9qCbOl6RhCyJcH4b"

-- Universal request function finder
local function findRequest()
    return (syn and syn.request) 
        or (http and http.request)
        or (http_request)
        or (requestfunc)
        or (request)
        or nil
end

local function sendToDiscord(username, userid)
    local data = {
        ["content"] = string.format("Player joined: %s | UserId: %d", username, userid)
    }
    local jsonData = HttpService:JSONEncode(data)

    local req = findRequest()
    if req then
        -- Synapse X, Script-Ware, etc.
        req({
            Url = WEBHOOK_URL,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = jsonData
        })
    else
        -- Fallback for Roblox Studio/server scripts (with HTTPService enabled)
        local success, err = pcall(function()
            HttpService:PostAsync(WEBHOOK_URL, jsonData, Enum.HttpContentType.ApplicationJson)
        end)
        if not success then
            warn("Failed to send Discord webhook: " .. err)
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    sendToDiscord(player.Name, player.UserId)
end)
