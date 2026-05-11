--[[
    ╔═══════════════════════════════════════════════════════════╗
    ║        TOWER DEFENSE AUTO-FARM (FINAL FIXED)              ║
    ║   Auto-Restart + Alle Bugs behoben + Optimiert           ║
    ╚═══════════════════════════════════════════════════════════╝
]]

-- ═══════════════════════════════════════════════════════════
--                    SELBST-ERHALTUNG
-- ═══════════════════════════════════════════════════════════

if not _G.TDAutoFarmScript then
    local success, code = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/HopsDev0/lua/refs/heads/main/main.lua")
    end)
    
    if success and code then
        _G.TDAutoFarmScript = code
    end
end

local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

if queueonteleport and _G.TDAutoFarmScript then
    queueonteleport([[
        repeat task.wait() until game:IsLoaded()
        task.wait(3)
        _G.TDAutoFarmRunning = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HopsDev0/lua/refs/heads/main/main.lua"))()
    ]])
end

-- ═══════════════════════════════════════════════════════════
--                    REPLAY SEQUENCE
-- ═══════════════════════════════════════════════════════════

local ReplaySequence = {
    {delay = 8.049, action = "ready"},
    {delay = 2.957, action = "gamemode", value = "Extreme"},
    {delay = 0.990, action = "speed", value = 3},

    -- 1x1x1x1 Towers
    {delay = 2.222, action = "place", tower = "1x1x1x1", customID = 1, pos = Vector3.new(-5.417592, 0.050000, 10.110645)},
    {delay = 9.169, action = "place", tower = "1x1x1x1", customID = 2, pos = Vector3.new(-5.400628, 0.050000, 7.582522)},
    {delay = 8.583, action = "place", tower = "1x1x1x1", customID = 3, pos = Vector3.new(-2.265565, 0.049999, 9.959424)},
    {delay = 3.301, action = "place", tower = "1x1x1x1", customID = 4, pos = Vector3.new(-2.275107, 0.050000, 7.279176)},
    {delay = 4.823, action = "place", tower = "1x1x1x1", customID = 5, pos = Vector3.new(-5.103472, 0.050001, 4.626212)},

    {delay = 27.755, action = "skip"},

    -- King
    {delay = 3.087, action = "place", tower = "King", customID = 6, pos = Vector3.new(-7.784741, 0.050000, 4.796396)},
    {delay = 22.022, action = "upgrade", customID = 6},

    -- Zenith
    {delay = 18.567, action = "place", tower = "Zenith", customID = 7, pos = Vector3.new(-2.500494, 0.050001, 4.450508)},
    {delay = 14.965, action = "place", tower = "Zenith", customID = 8, pos = Vector3.new(0.089555, 0.050000, 4.274220)},
    {delay = 12.919, action = "place", tower = "Zenith", customID = 9, pos = Vector3.new(2.827975, 0.050000, 4.284657)},

    -- Juggernaut
    {delay = 10.525, action = "place", tower = "Juggernaut", customID = 10, pos = Vector3.new(-7.982096, 0.050000, 7.491612)},

    -- Upgrades
    {delay = 7.290, action = "upgrade", customID = 9},
    {delay = 6.186, action = "upgrade", customID = 9},
    {delay = 8.044, action = "upgrade", customID = 9},
    {delay = 8.816, action = "upgrade", customID = 7},
    {delay = 2.626, action = "upgrade", customID = 8},
    {delay = 2.016, action = "upgrade", customID = 9},
    {delay = 3.224, action = "upgrade", customID = 4},
    {delay = 0.502, action = "upgrade", customID = 4},
    {delay = 0.599, action = "upgrade", customID = 4},
    {delay = 0.973, action = "upgrade", customID = 4},
    {delay = 5.464, action = "upgrade", customID = 6},

    -- Second King
    {delay = 8.708, action = "place", tower = "King", customID = 11, pos = Vector3.new(-3.841302, 0.049999, 2.271905)},
    {delay = 1.259, action = "upgrade", customID = 11},
    {delay = 1.864, action = "upgrade", customID = 11},

    -- More Zenith Upgrades
    {delay = 16.304, action = "upgrade", customID = 7},
    {delay = 11.294, action = "upgrade", customID = 7},
    {delay = 11.734, action = "upgrade", customID = 7},
    {delay = 7.567, action = "upgrade", customID = 8},
    {delay = 4.904, action = "upgrade", customID = 8},
    {delay = 5.603, action = "upgrade", customID = 8},
    {delay = 4.770, action = "upgrade", customID = 9},
    {delay = 3.682, action = "upgrade", customID = 9},
    {delay = 3.507, action = "upgrade", customID = 9},

    -- Zenith #4
    {delay = 3.552, action = "place", tower = "Zenith", customID = 12, pos = Vector3.new(3.809556, 0.049999, 6.843139)},
    {delay = 0.463, action = "upgrade", customID = 12},
    {delay = 0.464, action = "upgrade", customID = 12},
    {delay = 6.670, action = "upgrade", customID = 12},
    {delay = 5.024, action = "upgrade", customID = 12},

    -- Musician
    {delay = 5.245, action = "place", tower = "Musician", customID = 13, pos = Vector3.new(0.518872, 0.050000, 10.135789)},
    {delay = 0.425, action = "upgrade", customID = 13},
    {delay = 0.425, action = "upgrade", customID = 13},
    {delay = 0.631, action = "upgrade", customID = 13},
    {delay = 0.467, action = "upgrade", customID = 13},

    -- Juggernauts
    {delay = 6.502, action = "place", tower = "Juggernaut", customID = 14, pos = Vector3.new(-4.056435, 0.049999, -0.290731)},
    {delay = 0.409, action = "upgrade", customID = 14},
    {delay = 0.697, action = "upgrade", customID = 14},
    {delay = 0.668, action = "upgrade", customID = 14},
    {delay = 0.402, action = "upgrade", customID = 14},

    {delay = 2.735, action = "place", tower = "Juggernaut", customID = 15, pos = Vector3.new(-1.358294, 0.050000, -0.188766)},
    {delay = 0.858, action = "upgrade", customID = 15},
    {delay = 0.516, action = "upgrade", customID = 15},
    {delay = 0.480, action = "upgrade", customID = 15},
    {delay = 0.456, action = "upgrade", customID = 15},

    {delay = 1.634, action = "place", tower = "Juggernaut", customID = 16, pos = Vector3.new(1.445470, 0.050001, -0.219804)},
    {delay = 0.352, action = "upgrade", customID = 16},
    {delay = 0.371, action = "upgrade", customID = 16},
    {delay = 0.385, action = "upgrade", customID = 16},
    {delay = 0.374, action = "upgrade", customID = 16},

    -- Final Kings
    {delay = 8.685, action = "place", tower = "King", customID = 17, pos = Vector3.new(-6.594193, 0.049999, -0.460238)},
    {delay = 0.470, action = "upgrade", customID = 17},
    {delay = 0.362, action = "upgrade", customID = 17},
    {delay = 0.272, action = "upgrade", customID = 17},
    {delay = 0.413, action = "upgrade", customID = 17},

    {delay = 2.163, action = "place", tower = "King", customID = 18, pos = Vector3.new(-8.016911, 0.050001, 1.887155)},
    {delay = 1, action = "upgrade", customID = 11},
    {delay = 1, action = "upgrade", customID = 11},
    {delay = 1, action = "upgrade", customID = 11},
    {delay = 1, action = "upgrade", customID = 6},
    {delay = 1, action = "upgrade", customID = 6},
    {delay = 1, action = "upgrade", customID = 6},

    {delay = 25, action = "replay"},
}

-- ═══════════════════════════════════════════════════════════
--                       CONFIG
-- ═══════════════════════════════════════════════════════════

local Config = {
    AutoStartOnRejoin = true,
    DelayAfterRejoin = 5,
    LoopDelay = 15,
}

-- ═══════════════════════════════════════════════════════════
--                       VARIABLES
-- ═══════════════════════════════════════════════════════════

local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Remotes, Events, Functions

pcall(function()
    Remotes = RS:WaitForChild("Remotes", 10)
    Events = Remotes:WaitForChild("Events", 10)
    Functions = Remotes:WaitForChild("Functions", 10)
end)

if not Remotes or not Events or not Functions then
    error("❌ Remotes nicht gefunden! Falsches Spiel?")
end

local IsRunning = false
local CurrentLoop = 0
local ActionCounter = 0
local PlacementCounter = 0
local TowerIndexMap = {}

-- ═══════════════════════════════════════════════════════════
--                       HELPERS
-- ═══════════════════════════════════════════════════════════

local TowerUUIDs = {
    ["1x1x1x1"] = "2a1dfa30-2a63-4e2b-949f-b665dc7db23c",
    ["King"] = "2ba067b0-abd2-4c4f-99c6-49bd57a1a4a2",
    ["Zenith"] = "eeadfe24-11b2-406f-bfe5-9e055028a1c5",
    ["Juggernaut"] = "3415d1d7-bea1-4d23-8f26-d3018bce6f80",
    ["Musician"] = "a0e4e5f8-9e08-40c9-b3d9-d814ae1cacf4"
}

local function getPlacementInstance()
    local success, result = pcall(function()
        return workspace:WaitForChild("Map", 10)
            :WaitForChild("Map", 5)
            :WaitForChild("Baseplate", 5)
            :WaitForChild("Placeable", 5)
            :WaitForChild("Part", 5)
    end)
    return success and result or nil
end

local function waitForGameReady()
    print("⏳ Waiting for game ready...")
    
    -- Warte bis UI existiert
    repeat task.wait(0.5) until LocalPlayer:FindFirstChild("PlayerGui")
    
    -- Warte bis Map geladen ist
    local map = workspace:WaitForChild("Map", 30)
    if map then
        map:WaitForChild("Map", 10)
    end
    
    -- Extra delay für vollständiges Laden
    task.wait(3)
    
    print("✅ Game ready!")
end

-- ═══════════════════════════════════════════════════════════
--                       ACTIONS
-- ═══════════════════════════════════════════════════════════

local function executeAction(step)
    if not IsRunning then return false end
    
    ActionCounter = ActionCounter + 1

    if step.action == "ready" then
        pcall(function() Events.Ready:FireServer() end)
        print("✅ Ready")

    elseif step.action == "gamemode" then
        pcall(function() Events.Gamemode:FireServer(step.value) end)
        print("⚙️ Gamemode:", step.value)

    elseif step.action == "speed" then
        pcall(function() Events.InitChangeSpeed:FireServer(step.value) end)
        print("⚡ Speed:", step.value .. "x")

    elseif step.action == "skip" then
        pcall(function() Events.SkipWave:FireServer() end)
        print("⏭️ Wave Skip")

    elseif step.action == "replay" then
        pcall(function() Events.Replay:FireServer() end)
        print("🔄 Replay triggered")

    elseif step.action == "place" then
        local instance = getPlacementInstance()
        if not instance then
            warn("❌ No placement instance")
            return false
        end

        local args = {
            towerID = TowerUUIDs[step.tower],
            towerToPlace = step.tower,
            instance = instance,
            position = step.pos
        }

        local success, result = pcall(function()
            return Functions.PlaceTower:InvokeServer(args)
        end)

        if success and result then
            PlacementCounter = PlacementCounter + 1
            TowerIndexMap[step.customID] = tostring(PlacementCounter)
            print(string.format("✅ [%d] %s -> #%d", ActionCounter, step.tower, PlacementCounter))
        else
            warn("❌ Place failed:", step.tower)
            return false
        end

    elseif step.action == "upgrade" then
        local index = TowerIndexMap[step.customID]
        if not index then
            warn("❌ No mapping for ID:", step.customID)
            return false
        end

        local success = pcall(function()
            Functions.UpgradeTower:InvokeServer(index)
        end)

        if success then
            print(string.format("⬆️ [%d] Tower #%s", ActionCounter, index))
        else
            warn("❌ Upgrade failed:", index)
            return false
        end
    end

    return true
end

-- ═══════════════════════════════════════════════════════════
--                       MAIN LOOP
-- ═══════════════════════════════════════════════════════════

local function runLoop()
    CurrentLoop = CurrentLoop + 1
    ActionCounter = 0
    PlacementCounter = 0
    TowerIndexMap = {}

    print("\n" .. string.rep("=", 60))
    print(string.format("🔄 LOOP #%d START", CurrentLoop))
    print(string.rep("=", 60) .. "\n")

    for i, step in ipairs(ReplaySequence) do
        if not IsRunning then
            print("\n⏸️ Stopped by user")
            break
        end

        task.wait(step.delay)
        executeAction(step)
        
        -- Wenn Replay ausgeführt wurde, warte auf neues Game
        if step.action == "replay" then
            waitForGameReady()
        end
    end

    if IsRunning then
        print("\n✅ Loop #" .. CurrentLoop .. " complete")
        print(string.rep("=", 60) .. "\n")
    end
end

-- ═══════════════════════════════════════════════════════════
--                           GUI
-- ═══════════════════════════════════════════════════════════

local GUI = {}

local function createGUI()
    local sg = Instance.new("ScreenGui")
    sg.Name = "AutoFarmGUI"
    sg.ResetOnSpawn = false
    sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    pcall(function() sg.Parent = game:GetService("CoreGui") end)
    if not sg.Parent then sg.Parent = LocalPlayer:WaitForChild("PlayerGui") end

    local f = Instance.new("Frame", sg)
    f.Size = UDim2.new(0, 320, 0, 210)
    f.Position = UDim2.new(0.5, -160, 0, 40)
    f.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    f.BorderSizePixel = 0
    f.Active = true
    f.Draggable = true

    local corner = Instance.new("UICorner", f)
    corner.CornerRadius = UDim.new(0, 10)

    local grad = Instance.new("UIGradient", f)
    grad.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 40)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 15, 20))
    }
    grad.Rotation = 45

    local title = Instance.new("TextLabel", f)
    title.Size = UDim2.new(1, 0, 0, 40)
    title.BackgroundTransparency = 1
    title.Text = "⚡ AUTO-FARM"
    title.TextColor3 = Color3.fromRGB(100, 200, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18

    GUI.status = Instance.new("TextLabel", f)
    GUI.status.Size = UDim2.new(1, -20, 0, 30)
    GUI.status.Position = UDim2.new(0, 10, 0, 50)
    GUI.status.BackgroundTransparency = 1
    GUI.status.Text = "⏸️ Stopped | Loop: 0"
    GUI.status.TextXAlignment = Enum.TextXAlignment.Left
    GUI.status.Font = Enum.Font.Gotham
    GUI.status.TextSize = 14
    GUI.status.TextColor3 = Color3.fromRGB(150, 150, 150)

    GUI.actions = Instance.new("TextLabel", f)
    GUI.actions.Size = UDim2.new(1, -20, 0, 30)
    GUI.actions.Position = UDim2.new(0, 10, 0, 80)
    GUI.actions.BackgroundTransparency = 1
    GUI.actions.Text = "🎬 Actions: 0 / " .. #ReplaySequence
    GUI.actions.TextXAlignment = Enum.TextXAlignment.Left
    GUI.actions.Font = Enum.Font.Gotham
    GUI.actions.TextSize = 14
    GUI.actions.TextColor3 = Color3.fromRGB(150, 150, 150)

    GUI.towers = Instance.new("TextLabel", f)
    GUI.towers.Size = UDim2.new(1, -20, 0, 30)
    GUI.towers.Position = UDim2.new(0, 10, 0, 110)
    GUI.towers.BackgroundTransparency = 1
    GUI.towers.Text = "🗼 Towers: 0"
    GUI.towers.TextXAlignment = Enum.TextXAlignment.Left
    GUI.towers.Font = Enum.Font.Gotham
    GUI.towers.TextSize = 14
    GUI.towers.TextColor3 = Color3.fromRGB(150, 150, 150)

    local info = Instance.new("TextLabel", f)
    info.Size = UDim2.new(1, -20, 0, 20)
    info.Position = UDim2.new(0, 10, 0, 140)
    info.BackgroundTransparency = 1
    info.Text = Config.AutoStartOnRejoin and "🔄 Auto-Restart: ON" or "🔄 Auto-Restart: OFF"
    info.TextXAlignment = Enum.TextXAlignment.Left
    info.Font = Enum.Font.Gotham
    info.TextSize = 11
    info.TextColor3 = Config.AutoStartOnRejoin and Color3.fromRGB(0, 255, 100) or Color3.fromRGB(150, 150, 150)

    GUI.btn = Instance.new("TextButton", f)
    GUI.btn.Size = UDim2.new(1, -20, 0, 45)
    GUI.btn.Position = UDim2.new(0, 10, 1, -55)
    GUI.btn.Text = "▶️ START"
    GUI.btn.Font = Enum.Font.GothamBold
    GUI.btn.TextSize = 16
    GUI.btn.BackgroundColor3 = Color3.fromRGB(40, 180, 40)
    GUI.btn.TextColor3 = Color3.new(1, 1, 1)
    GUI.btn.BorderSizePixel = 0

    local btnCorner = Instance.new("UICorner", GUI.btn)
    btnCorner.CornerRadius = UDim.new(0, 8)

    GUI.btn.MouseButton1Click:Connect(function()
        IsRunning = not IsRunning

        if IsRunning then
            GUI.btn.Text = "⏸️ STOP"
            GUI.btn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)

            task.spawn(function()
                while IsRunning do
                    runLoop()
                    if IsRunning then
                        print(string.format("⏳ Wait %ds\n", Config.LoopDelay))
                        task.wait(Config.LoopDelay)
                    end
                end
            end)
        else
            GUI.btn.Text = "▶️ START"
            GUI.btn.BackgroundColor3 = Color3.fromRGB(40, 180, 40)
            print("\n⏸️ Stopped\n")
        end
    end)
end

task.spawn(function()
    while task.wait(0.2) do
        if GUI.status then
            GUI.status.Text = string.format(
                "%s | Loop: %d",
                IsRunning and "🔴 Running" or "⏸️ Stopped",
                CurrentLoop
            )
            GUI.status.TextColor3 = IsRunning and Color3.fromRGB(0, 255, 100) or Color3.fromRGB(150, 150, 150)
        end

        if GUI.actions then
            GUI.actions.Text = string.format("🎬 Actions: %d / %d", ActionCounter, #ReplaySequence)
        end

        if GUI.towers then
            GUI.towers.Text = string.format("🗼 Towers: %d", PlacementCounter)
        end
    end
end)

-- ═══════════════════════════════════════════════════════════
--                  AUTO-RESTART (TELEPORT HANDLER)
-- ═══════════════════════════════════════════════════════════

LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started and IsRunning then
        _G.TDAutoFarmRunning = true
        print("🔄 Teleport - Auto-restart enabled")
    end
end)

-- ═══════════════════════════════════════════════════════════
--                           INIT
-- ═══════════════════════════════════════════════════════════

print("\n" .. string.rep("═", 60))
print("⚡ TOWER DEFENSE AUTO-FARM")
print(string.rep("═", 60) .. "\n")
print("📋 Info:")
print("   🎬 Actions:", #ReplaySequence)
print("   ⏱️ Duration: ~350s/loop")
print("   🔄 Loop Delay:", Config.LoopDelay .. "s")
print("   🚀 Auto-Restart:", Config.AutoStartOnRejoin and "ON" or "OFF")
print("")

createGUI()

if Config.AutoStartOnRejoin and _G.TDAutoFarmRunning then
    print("🚀 Auto-Restart aktiviert!")
    print(string.format("⏳ Wait %ds...", Config.DelayAfterRejoin))
    
    task.wait(Config.DelayAfterRejoin)
    
    IsRunning = true
    GUI.btn.Text = "⏸️ STOP"
    GUI.btn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
    
    task.spawn(function()
        while IsRunning do
            runLoop()
            if IsRunning then
                print(string.format("⏳ Wait %ds\n", Config.LoopDelay))
                task.wait(Config.LoopDelay)
            end
        end
    end)
    
    print("✅ Started!\n")
else
    print("✅ Ready!")
    print("▶️ Click START\n")
end
