print("Cheeky Hub Loaded")
local c1 = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local v2 = v1:CreateWindow({
    Title = "Cheeky Hub V1.3 (cracked)",
    Icon = "smartphone",
    Author = "by RoShowcaser lol cracked by kerem#80FF00"
})
v1:AddTheme({
    Name = "Ocean Blue",
    Accent = Color3.fromHex("#1e3a8a"),
    Background = Color3.fromHex("#0f172a"),
    BackgroundTransparency = 1,
    Outline = Color3.fromHex("#60a5fa"),
    Text = Color3.fromHex("#e2e8f0"),
    Placeholder = Color3.fromHex("#94a3b8"),
    Button = Color3.fromHex("#1d4ed8"),
    Icon = Color3.fromHex("#93c5fd"),
    Hover = Color3.fromHex("#60a5fa"),
    WindowBackground = Color3.fromHex("#0f172a"),
    WindowShadow = Color3.fromHex("#000000"),
    DialogBackground = Color3.fromHex("#0f172a"),
    DialogBackgroundTransparency = 0,
    DialogTitle = Color3.fromHex("#e2e8f0"),
    DialogContent = Color3.fromHex("#cbd5e1"),
    DialogIcon = Color3.fromHex("#93c5fd"),
    WindowTopbarButtonIcon = Color3.fromHex("#93c5fd"),
    WindowTopbarTitle = Color3.fromHex("#e2e8f0"),
    WindowTopbarAuthor = Color3.fromHex("#e2e8f0"),
    WindowTopbarIcon = Color3.fromHex("#93c5fd"),
    TabBackground = Color3.fromHex("#1e3a8a"),
    TabTitle = Color3.fromHex("#e2e8f0"),
    TabIcon = Color3.fromHex("#93c5fd"),
    ElementBackground = Color3.fromHex("#1e3a8a"),
    ElementTitle = Color3.fromHex("#e2e8f0"),
    ElementDesc = Color3.fromHex("#cbd5e1"),
    ElementIcon = Color3.fromHex("#93c5fd"),
    PopupBackground = Color3.fromHex("#0f172a"),
    PopupBackgroundTransparency = 0,
    PopupTitle = Color3.fromHex("#e2e8f0"),
    PopupContent = Color3.fromHex("#cbd5e1"),
    PopupIcon = Color3.fromHex("#93c5fd")
})
local v3 = v2:Tab({
    Title = "Main",
    Icon = "settings",
    Locked = false
})
local v4 = v2:Tab({
    Title = "Farming",
    Icon = "leaf",
    Locked = false
})
local v5 = v2:Tab({
    Title = "Antis",
    Icon = "shield-alert",
    Locked = false
})
local v6 = v2:Tab({
    Title = "Teleport",
    Icon = "badge-turkish-lira",
    Locked = false
})
local v7 = v2:Tab({
    Title = "OVERPOWERED",
    Icon = "chess-queen",
    Locked = false
})
local vu8 = {}
local vu9 = game.Players.LocalPlayer
local function vu15()
    local v10, v11, v12 = ipairs(game.Players:GetPlayers())
    while true do
        local v13
        v12, v13 = v10(v11, v12)
        if v12 == nil then
            break
        end
        if v13 ~= vu9 and v13.Character then
            local v14 = Instance.new("Highlight", v13.Character)
            v14.FillTransparency = 0.5
            vu8[v13] = v14
        end
    end
end
local function vu20()
    local v16, v17, v18 = pairs(vu8)
    while true do
        local v19
        v18, v19 = v16(v17, v18)
        if v18 == nil then
            break
        end
        if v19 then
            v19:Destroy()
        end
    end
    vu8 = {}
end
game.Players.PlayerAdded:Connect(function(p21)
    if getgenv().esp then
        task.wait(2)
        if p21.Character then
            local v22 = Instance.new("Highlight", p21.Character)
            v22.FillTransparency = 0.5
            vu8[p21] = v22
        end
    end
end)
getgenv().antivoid = false
local v23 = Instance.new("Part", workspace)
v23.CFrame = CFrame.new(14.538, 195.97, - 210.75)
v23.Anchored = true
v23.Transparency = 1
v23.Size = Vector3.new(2048, 0.5, 2048)
v23.CanCollide = false
v23.Name = "AntiVoidPlatform"
local v24 = Instance.new("Part", workspace)
v24.CFrame = CFrame.new(14.538, 195.97, - 2000.75)
v24.Anchored = true
v24.Transparency = 0.5
v24.Size = Vector3.new(100, 50, 100)
v24.CanCollide = true
v24.Name = "SafeSpot"
local vu25 = game:GetService("RunService")
local vu26 = game:GetService("StarterGui")
local vu27 = game:GetService("TeleportService")
local vu28 = game.Players.LocalPlayer
local vu29 = workspace.CurrentCamera
local vu30 = v24
local vu31 = v23
local vu32 = nil
local vu33 = nil
local vu34 = false
local vu35 = CFrame.new(18.5813675, 210, - 207.809937)
local function vu36()
    if vu33 then
        vu33:Disconnect()
    end
    vu33 = nil
end
local function vu39()
    if vu32 then
        vu36()
        vu28.Character = vu32
        task.wait()
        local v37 = vu32:WaitForChild("Humanoid")
        local v38 = vu32:WaitForChild("HumanoidRootPart")
        vu29.CameraSubject = v37
        v38.CFrame = vu35
        vu31.CanCollide = getgenv().antivoid
        vu26:SetCore("ResetButtonCallback", true)
    end
end
local function vu49(pu40)
    if pu40 then
        vu36()
        vu32 = vu28.Character
        local vu41 = vu32
        local vu42 = pu40:WaitForChild("HumanoidRootPart")
        local v43 = vu41
        local vu44 = vu41.WaitForChild(v43, "HumanoidRootPart")
        vu44.CFrame = vu42.CFrame
        vu28.Character = pu40
        vu29.CameraSubject = pu40:WaitForChild("Humanoid")
        vu31.CanCollide = true
        vu26:SetCore("ResetButtonCallback", false)
        pu40.Humanoid.Died:Connect(function()
            if vu28.Character == pu40 then
                vu27:TeleportToPlaceInstance(game.PlaceId, game.JobId)
            end
        end)
        local vu45 = vu42.CFrame.LookVector
        vu33 = vu25.Heartbeat:Connect(function()
            if vu28.Character == pu40 then
                if pu40.Parent then
                    if vu41.Parent then
                        local v46 = vu42.CFrame.LookVector
                        local v47 = vu45
                        local v48 = math.deg(math.acos(math.clamp(v47:Dot(v46), - 1, 1)))
                        if 35 < v48 and not vu34 then
                            vu34 = true
                            vu44.CFrame = vu30.CFrame * CFrame.new(0, 40, 0)
                        end
                        if vu34 and v48 < 8 then
                            vu34 = false
                            task.wait(0.15)
                            vu44.CFrame = vu42.CFrame * CFrame.new(0, - 14, 0)
                        end
                        if not vu34 then
                            vu44.CFrame = vu42.CFrame * CFrame.new(0, - 14, 0)
                        end
                        vu45 = v46
                    end
                else
                    return
                end
            else
                return
            end
        end)
    end
end
v3:Slider({
    Title = "Walkspeed",
    Desc = "Change player walkspeed",
    Step = 1,
    Value = {
        Min = 16,
        Max = 170,
        Default = 16
    },
    Callback = function(pu50)
        pcall(function()
            if vu28 and vu28.Character and vu28.Character:FindFirstChildOfClass("Humanoid") then
                vu28.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = pu50
            end
        end)
    end
})
v3:Toggle({
    Title = "Glove Reach",
    Desc = "Increase hitbox of glove",
    Icon = "arrows-expand",
    Type = "Checkbox",
    Value = false,
    Callback = function(pu51)
        getgenv().maxHitbox = pu51
        pcall(function()
            local v52 = vu28.Character and vu28.Character:FindFirstChildOfClass("Tool") or vu28.Backpack:FindFirstChildOfClass("Tool")
            if v52 and v52:FindFirstChild("Hitbox") then
                if pu51 then
                    v52.Hitbox.Size = Vector3.new(30, 30, 30)
                    v52.Hitbox.Transparency = 1
                else
                    v52.Hitbox.Size = Vector3.new(1, 1, 1)
                    v52.Hitbox.Transparency = 1
                end
            end
        end)
    end
})
local vu53 = false
local vu54 = nil
v3:Toggle({
    Title = "Noclip",
    Desc = "Toggle noclip on/off",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(p55)
        vu53 = p55
        if vu54 then
            vu54:Disconnect()
            vu54 = nil
        end
        if vu53 then
            vu54 = game:GetService("RunService").Stepped:Connect(function()
                local v56 = game.Players.LocalPlayer.Character
                if v56 then
                    local v57, v58, v59 = ipairs(v56:GetDescendants())
                    while true do
                        local v60
                        v59, v60 = v57(v58, v59)
                        if v59 == nil then
                            break
                        end
                        if v60:IsA("BasePart") then
                            v60.CanCollide = false
                        end
                    end
                end
            end)
        else
            local v61 = game.Players.LocalPlayer.Character
            if v61 then
                local v62, v63, v64 = ipairs(v61:GetDescendants())
                while true do
                    local v65
                    v64, v65 = v62(v63, v64)
                    if v64 == nil then
                        break
                    end
                    if v65:IsA("BasePart") then
                        v65.CanCollide = true
                    end
                end
            end
        end
    end
})
v3:Toggle({
    Title = "Infinite Jump",
    Desc = "i wish jumppower was possible in this game",
    Icon = "chevrons-up",
    Type = "Checkbox",
    Value = false,
    Callback = function(p66)
        local v67 = game:GetService("UserInputService")
        local vu68 = game:GetService("Players").LocalPlayer
        if getgenv().infJumpConnection then
            getgenv().infJumpConnection:Disconnect()
            getgenv().infJumpConnection = nil
        end
        if p66 then
            getgenv().infiniteJumpEnabled = true
            getgenv().infJumpConnection = v67.JumpRequest:Connect(function()
                local v69 = getgenv().infiniteJumpEnabled and vu68.Character and vu68.Character:FindFirstChildOfClass("Humanoid")
                if v69 then
                    v69:ChangeState("Jumping")
                end
            end)
        else
            getgenv().infiniteJumpEnabled = false
        end
    end
})
v3:Toggle({
    Title = "ESP",
    Desc = "Enable player highlights",
    Icon = "eye",
    Type = "Checkbox",
    Value = false,
    Callback = function(p70)
        getgenv().esp = p70
        if p70 then
            vu15()
        else
            vu20()
        end
    end
})
v3:Toggle({
    Title = "Auto Slap",
    Desc = "yes",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(p71)
        getgenv().autoslap = p71
        spawn(function()
            while getgenv().autoslap do
                task.wait(0.006)
                pcall(function()
                    local v72 = vu28.Character and vu28.Character:FindFirstChildOfClass("Tool")
                    if v72 then
                        v72:Activate()
                    end
                end)
            end
        end)
    end
})
v4:Toggle({
    Title = "W Slap Farm",
    Desc = "Automatically collects stuff that gives u slaps",
    Icon = "hand",
    Type = "Checkbox",
    Value = false,
    Callback = function(p73)
        getgenv().slapFarmEnabled = p73
        local vu74 = game.Players.LocalPlayer
        if vu74 then
            if getgenv().__SF_wsConn then
                getgenv().__SF_wsConn:Disconnect()
            end
            if getgenv().__SF_rsConn then
                getgenv().__SF_rsConn:Disconnect()
            end
            local v75 = getgenv()
            getgenv().__SF_rsConn = nil
            v75.__SF_wsConn = nil
            local vu76 = {}
            local function vu78()
                local v77 = vu74.Character
                if v77 then
                    return v77:FindFirstChild("HumanoidRootPart") or v77:FindFirstChild("Torso")
                else
                    return nil
                end
            end
            local function vu81(p79)
                if not p79 then
                    return false
                end
                local v80 = p79.Name
                return v80:match("^slapbox%d*$") and true or ((v80 == "Slapple" or (v80 == "GoldenSlapple" or v80 == "GlowingSlapple")) and true or (v80 == "GlowingSlapel" and true or v80 == "FruitGloves"))
            end
            local function vu88(p82)
                local v83 = {}
                if not p82 then
                    return v83
                end
                if p82:IsA("BasePart") then
                    table.insert(v83, p82)
                    return v83
                end
                if p82:IsA("Model") and p82.PrimaryPart then
                    table.insert(v83, p82.PrimaryPart)
                end
                local v84, v85, v86 = ipairs(p82:GetDescendants())
                while true do
                    local v87
                    v86, v87 = v84(v85, v86)
                    if v86 == nil then
                        break
                    end
                    if v87:IsA("BasePart") then
                        table.insert(v83, v87)
                    end
                end
                return v83
            end
            local function vu91(pu89)
                if pu89 and pu89:IsA("BasePart") then
                    if not vu76[pu89] then
                        vu76[pu89] = true
                        task.spawn(function()
                            while getgenv().slapFarmEnabled and pu89.Parent do
                                local v90 = vu78()
                                if v90 then
                                    pu89.CFrame = v90.CFrame
                                end
                                task.wait()
                            end
                            vu76[pu89] = nil
                        end)
                    end
                else
                    return
                end
            end
            local function vu98(p92)
                if p92 then
                    if not vu81(p92) and (p92.Parent and vu81(p92.Parent)) then
                        p92 = p92.Parent
                    end
                    if vu81(p92) then
                        local v93 = vu88(p92)
                        local v94, v95, v96 = ipairs(v93)
                        while true do
                            local v97
                            v96, v97 = v94(v95, v96)
                            if v96 == nil then
                                break
                            end
                            vu91(v97)
                        end
                    end
                else
                    return
                end
            end
            local vu99, vu100
            if p73 then
                local v101, v102, v103 = ipairs(workspace:GetDescendants())
                vu99 = vu76
                vu100 = vu81
                while true do
                    local v104
                    v103, v104 = v101(v102, v103)
                    if v103 == nil then
                        break
                    end
                    if vu100(v104) or v104.Parent and vu100(v104.Parent) then
                        vu98(v104)
                    end
                end
                local v105, v106, v107 = ipairs(game.ReplicatedStorage:GetDescendants())
                while true do
                    local v108
                    v107, v108 = v105(v106, v107)
                    if v107 == nil then
                        break
                    end
                    if vu100(v108) or v108.Parent and vu100(v108.Parent) then
                        vu98(v108)
                    end
                end
            else
                vu99 = vu76
                vu100 = vu81
            end
            if p73 then
                getgenv().__SF_wsConn = workspace.DescendantAdded:Connect(function(pu109)
                    task.defer(function()
                        if getgenv().slapFarmEnabled then
                            vu98(pu109)
                        end
                    end)
                end)
                getgenv().__SF_rsConn = game.ReplicatedStorage.DescendantAdded:Connect(function(pu110)
                    task.defer(function()
                        if getgenv().slapFarmEnabled then
                            vu98(pu110)
                            if pu110:IsA("Instance") then
                                local vu111 = nil
                                vu111 = pu110.AncestryChanged:Connect(function(_, p112)
                                    if getgenv().slapFarmEnabled then
                                        if p112 == workspace then
                                            vu98(pu110)
                                            if vu111 then
                                                vu111:Disconnect()
                                            end
                                        end
                                    elseif vu111 then
                                        vu111:Disconnect()
                                    end
                                end)
                            end
                        end
                    end)
                end)
            end
            task.spawn(function()
                while getgenv().slapFarmEnabled do
                    local v113, v114, v115 = ipairs(workspace:GetDescendants())
                    while true do
                        local v116
                        v115, v116 = v113(v114, v115)
                        if v115 == nil then
                            break
                        end
                        if vu100(v116) or v116.Parent and vu100(v116.Parent) then
                            vu98(v116)
                        end
                    end
                    task.wait(0.08)
                end
                vu99 = {}
            end)
        end
    end
})
v4:Button({
    Title = "Rejoin",
    Desc = "Rejoin current server",
    Callback = function()
        vu27:TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end
})
v5:Toggle({
    Title = "Anti Void",
    Desc = "Toggle anti-void platform",
    Icon = "anchor",
    Type = "Checkbox",
    Value = getgenv().antivoid or false,
    Callback = function(p117)
        getgenv().antivoid = p117
        vu31.CanCollide = p117
        vu31.Transparency = p117 and 0.7 or 1
    end
})
getgenv().antiragdoll = getgenv().antiragdoll or false
getgenv().antiragdoll_anchoring = getgenv().antiragdoll_anchoring or false
local vu118 = nil
v5:Toggle({
    Title = "Anti Ragdoll",
    Desc = "i hate it when ppl slap",
    Icon = "shield",
    Type = "Checkbox",
    Value = getgenv().antiragdoll,
    Callback = function(p119)
        getgenv().antiragdoll = p119
        if vu118 then
            vu118:Disconnect()
            vu118 = nil
        end
        if p119 then
            task.spawn(function()
                local v120 = vu28.Character
                if v120 then
                    local v121 = v120:WaitForChild("Humanoid")
                    local vu122 = v120:WaitForChild("HumanoidRootPart")
                    vu118 = v121.StateChanged:Connect(function(_, p123)
                        if getgenv().antiragdoll then
                            if p123 == Enum.HumanoidStateType.Ragdoll or p123 == Enum.HumanoidStateType.Physics then
                                getgenv().antiragdoll_anchoring = true
                                vu122.Anchored = true
                            end
                            if p123 == Enum.HumanoidStateType.GettingUp or (p123 == Enum.HumanoidStateType.Running or p123 == Enum.HumanoidStateType.Landed) then
                                vu122.Anchored = false
                                getgenv().antiragdoll_anchoring = false
                            end
                        end
                    end)
                end
            end)
        end
    end
})
getgenv().autokilldummies = getgenv().autokilldummies or false
v5:Toggle({
    Title = "Anti Dummies",
    Desc = "Automatically remove dummies",
    Icon = "trash",
    Type = "Checkbox",
    Value = getgenv().autokilldummies or false,
    Callback = function(p124)
        getgenv().autokilldummies = p124
        task.spawn(function()
            while getgenv().autokilldummies do
                task.wait(0.25)
                pcall(function()
                    if workspace:FindFirstChild("Anchored Dummy") then
                        workspace["Anchored Dummy"]:Destroy()
                    end
                    if workspace:FindFirstChild("Attacking Dummy") then
                        workspace["Attacking Dummy"]:Destroy()
                    end
                    if workspace:FindFirstChild("Dummy") then
                        workspace.Dummy:Destroy()
                    end
                end)
            end
        end)
    end
})
getgenv().antimegarock = getgenv().antimegarock or false
v5:Toggle({
    Title = "Anti Custom",
    Desc = "Automatically removes the custom rock (will improve this feature)",
    Icon = "trash",
    Type = "Checkbox",
    Value = getgenv().antimegarock,
    Callback = function(p125)
        getgenv().antimegarock = p125
        task.spawn(function()
            while getgenv().antimegarock do
                task.wait(0.25)
                pcall(function()
                    local v126, v127, v128 = pairs(workspace:GetDescendants())
                    while true do
                        local v129
                        v128, v129 = v126(v127, v128)
                        if v128 == nil then
                            break
                        end
                        if v129:IsA("BasePart") and v129.Name == "CustomRock" then
                            v129:Destroy()
                        end
                    end
                end)
            end
        end)
    end
})
getgenv().antitimestop = getgenv().antitimestop or false
v5:Toggle({
    Title = "Anti Timestop",
    Desc = "Prevents timestop from freezing ur character",
    Icon = "clock",
    Type = "Checkbox",
    Value = getgenv().antitimestop,
    Callback = function(p130)
        getgenv().antitimestop = p130
        task.spawn(function()
            local vu131 = game.Players.LocalPlayer
            while getgenv().antitimestop do
                task.wait(0.1)
                pcall(function()
                    local v132 = vu131.Character
                    if v132 then
                        local v133 = v132:FindFirstChild("HumanoidRootPart")
                        if v133 then
                            if v133.Anchored and not getgenv().antiragdoll_anchoring then
                                v133.Anchored = false
                                v133.Velocity = Vector3.zero
                            end
                        end
                    else
                        return
                    end
                end)
            end
        end)
    end
})
v5:Button({
    Title = "Anti Cube Of Death",
    Desc = "this shit is getting no diffed",
    Callback = function()
        local v134 = workspace:FindFirstChild("Cube Of Death")
        if v134 then
            v134:Destroy()
        end
    end
})
v6:Button({
    Title = "TP To Safe Spot",
    Desc = "Teleport to the SafeSpot",
    Callback = function()
        if vu28 and vu28.Character and vu28.Character:FindFirstChild("HumanoidRootPart") then
            vu28.Character.HumanoidRootPart.CFrame = vu30.CFrame * CFrame.new(0, 50, 0)
        end
    end
})
v6:Button({
    Title = "TP To Lobby (IF IT TELEPORTS U TO THE ARENA USE IT AGAIN)",
    Desc = "Teleport to the lobby",
    Callback = function()
        if vu28 and vu28.Character and vu28.Character:FindFirstChild("HumanoidRootPart") then
            vu28.Character.HumanoidRootPart.CFrame = CFrame.new(- 40, 645, - 281)
        end
    end
})
v6:Button({
    Title = "TP To Arena",
    Desc = "Teleport to the arena",
    Callback = function()
        if vu28 and vu28.Character and vu28.Character:FindFirstChild("HumanoidRootPart") then
            vu28.Character.HumanoidRootPart.CFrame = CFrame.new(30.064416885375977, 199.97512817382812, - 257.0282897949219)
        end
    end
})
v6:Button({
    Title = "TP To Moai Island",
    Desc = "Teleport to da rocks",
    Callback = function()
        if vu28 and vu28.Character and vu28.Character:FindFirstChild("HumanoidRootPart") then
            vu28.Character.HumanoidRootPart.CFrame = CFrame.new(279.636414, 195.14328, - 186.334015)
        end
    end
})
v6:Button({
    Title = "TP To Slapple Island",
    Desc = "Teleport to the slapple island",
    Callback = function()
        if vu28 and vu28.Character and vu28.Character:FindFirstChild("HumanoidRootPart") then
            vu28.Character.HumanoidRootPart.CFrame = CFrame.new(- 643.229492, 386.479584, - 218.886917)
        end
    end
})
v6:Button({
    Title = "TP To Castle",
    Desc = "Teleport to the island with a castle",
    Callback = function()
        if vu28 and vu28.Character and vu28.Character:FindFirstChild("HumanoidRootPart") then
            vu28.Character.HumanoidRootPart.CFrame = CFrame.new(310.500854, 212.306534, 84.523415)
        end
    end
})
v6:Button({
    Title = "TP To Tree Island",
    Desc = "tree",
    Callback = function()
        if vu28 and vu28.Character and vu28.Character:FindFirstChild("HumanoidRootPart") then
            vu28.Character.HumanoidRootPart.CFrame = CFrame.new(443.904205, 199.975128, 374.889893)
        end
    end
})
v6:Button({
    Title = "TP To Plate",
    Desc = "Teleport to the plate",
    Callback = function()
        local v135 = game.Players.LocalPlayer
        local v136 = (v135.Character or v135.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
        local v137 = workspace:FindFirstChild("Plate", true)
        if v137 then
            if v137:IsA("BasePart") then
                v136.CFrame = v137.CFrame + Vector3.new(0, 5, 0)
            end
        end
    end
})
v7:Toggle({
    Title = "Become Dummy",
    Desc = "Possess him",
    Icon = "user",
    Type = "Checkbox",
    Value = false,
    Callback = function(p138)
        getgenv().becomedummy = p138
        if p138 then
            getgenv().becomeattackingdummy = false
        end
        if p138 then
            vu49(workspace:FindFirstChild("Dummy"))
        else
            vu39()
        end
    end
})
v7:Toggle({
    Title = "Become Attacking Dummy",
    Desc = "Possess him",
    Icon = "user-x",
    Type = "Checkbox",
    Value = false,
    Callback = function(p139)
        getgenv().becomeattackingdummy = p139
        if p139 then
            getgenv().becomedummy = false
        end
        if p139 then
            vu49(workspace:FindFirstChild("Attacking Dummy"))
        else
            vu39()
        end
    end
})
v7:Button({
    Title = "Godmode",
    Desc = "no more slapping",
    Callback = function()
        local vu140 = CFrame.new(- 44.07, 199.98, - 208.22)
        local function vu143(p141)
            local v142 = p141:WaitForChild("HumanoidRootPart")
            for _ = 1, 10 do
                v142.CFrame = vu140
                task.wait(0.03)
            end
        end
        local vu144 = nil
        vu144 = vu28.CharacterAdded:Connect(function(p145)
            vu144:Disconnect()
            vu143(p145)
        end)
        local v146 = vu28.Character
        if v146 then
            v146 = vu28.Character:FindFirstChildOfClass("Humanoid")
        end
        if v146 then
            v146.Health = 0
        end
    end
})
v7:Button({
    Title = "Fling All",
    Desc = "ts skidded from nameless admin btw",
    Callback = function()
        local vu147 = game:GetService("Players")
        local vu148 = vu147.LocalPlayer
        local function vu168(pu149)
            local vu150 = vu148.Character
            local v151
            if vu150 then
                v151 = vu150:FindFirstChildOfClass("Humanoid")
            else
                v151 = vu150
            end
            local vu152
            if v151 then
                vu152 = v151.RootPart
            else
                vu152 = v151
            end
            local v153 = pu149.Character
            local vu154
            if v153 then
                vu154 = v153:FindFirstChildOfClass("Humanoid")
            else
                vu154 = v153
            end
            local v155
            if vu154 then
                v155 = vu154.RootPart
            else
                v155 = vu154
            end
            local v156
            if v153 then
                v156 = v153:FindFirstChild("Head")
            else
                v156 = v153
            end
            local v157
            if v153 then
                v157 = v153:FindFirstChildOfClass("Accessory")
            else
                v157 = v153
            end
            if v157 then
                v157 = v157:FindFirstChild("Handle")
            end
            if vu150 and (v151 and vu152) then
                if vu152.Velocity.Magnitude < 50 then
                    getgenv().OldPos = vu152.CFrame
                end
                if vu154 and vu154.Sit then
                    return
                end
                workspace.CurrentCamera.CameraSubject = v156 or (v157 or vu154)
                if not v153:FindFirstChildWhichIsA("BasePart") then
                    return
                end
                local function vu161(p158, p159, p160)
                    vu152.CFrame = CFrame.new(p158.Position) * p159 * p160
                    vu150:SetPrimaryPartCFrame(CFrame.new(p158.Position) * p159 * p160)
                    vu152.Velocity = Vector3.new(90000000, 900000000, 90000000)
                    vu152.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                end
                local function v166(p162)
                    local v163 = tick()
                    local v164 = 0
                    local v165 = 2
                    while vu152 and vu154 do
                        v164 = v164 + 100
                        vu161(p162, CFrame.new(0, 1.5, 0), CFrame.Angles(math.rad(v164), 0, 0))
                        task.wait()
                        vu161(p162, CFrame.new(0, - 1.5, 0), CFrame.Angles(math.rad(v164), 0, 0))
                        task.wait()
                        if p162.Velocity.Magnitude > 500 or (p162.Parent ~= pu149.Character or (pu149.Parent ~= vu147 or tick() > v163 + v165)) then
                            break
                        end
                    end
                end
                workspace.FallenPartsDestroyHeight = 0 / 0
                local v167 = Instance.new("BodyVelocity")
                v167.Name = "EpixVel"
                v167.Parent = vu152
                v167.Velocity = Vector3.new(900000000, 900000000, 900000000)
                v167.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
                v151:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                if v155 then
                    v166(v155)
                elseif v156 then
                    v166(v156)
                else
                    if not v157 then
                        return
                    end
                    v166(v157)
                end
                v167:Destroy()
                v151:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                workspace.CurrentCamera.CameraSubject = v151
            end
        end
        local v169 = vu147
        local v170, v171, v172 = ipairs(vu147.GetPlayers(v169))
        local v173 = vu148
        local function v177(p174, p175, p176)
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = p174,
                Text = p175,
                Duration = p176
            })
        end
        while true do
            local vu178
            v172, vu178 = v170(v171, v172)
            if v172 == nil then
                break
            end
            if vu178 ~= v173 then
                task.spawn(function()
                    vu168(vu178)
                end)
                task.wait(4)
            end
        end
        v177("Fling All", "Everyone has been sent to diddys house.", 4)
    end
})
v7:Button({
    Title = "Fling GUI",
    Desc = "Send someone to Diddys house",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/amcoolfr/Fling-Gui/75342adb4b54b849d4f276ba5f94967080363b67/opflinggui"))()
    end
})
v7:Toggle({
    Title = "Whirlwind Fling",
    Desc = "massive credit to: BaconScripter",
    Icon = "wind",
    Type = "Checkbox",
    Value = false,
    Callback = function(p179)
        getgenv().WhirlwindFling = p179
        task.spawn(function()
            while getgenv().WhirlwindFling do
                local v180 = game.Players.LocalPlayer
                local v181 = v180.Character
                local v182
                if v181 then
                    v182 = v181:FindFirstChild("HumanoidRootPart")
                else
                    v182 = v181
                end
                if v181 and (v182 and v181:FindFirstChild("Torso")) and v181.Torso:FindFirstChild("tornado") then
                    local v183, v184, v185 = pairs(game.Players:GetPlayers())
                    while true do
                        local v186
                        v185, v186 = v183(v184, v185)
                        if v185 == nil then
                            break
                        end
                        if v186 ~= v180 and v186.Character then
                            local v187 = v186.Character
                            local v188 = v187:FindFirstChild("HumanoidRootPart")
                            if v188 and (not v187:FindFirstChild("MegaRockRock") and (not v187:FindFirstChild("MegaDiamondRock") and (not v187:FindFirstChild("CustomRock") and (v187:FindFirstChild("EnteredArena") and (v187.EnteredArena.Value == true and (v187:FindFirstChild("IsRagdolled") and (v187.IsRagdolled.Value == false and v186.leaderstats.Glove.Value ~= "Spectator"))))))) then
                                v188.CFrame = v182.CFrame * CFrame.new(0, 0, - 2.8)
                            end
                        end
                    end
                end
                task.wait()
            end
        end)
    end
})
if vu26 and vu26.SetCore then
    pcall(function()
        vu26:SetCore("SendNotification", {
            Title = "Cheeky Hub Loaded",
            Text = "Successfully Executed skiddy hub!",
            Duration = 5
        })
    end)
end
