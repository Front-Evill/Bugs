local asset = {
    animations = {
    },
    r6 = {
    },
    good = {
    },
}

local EMOTE_JSON_URL = "https://raw.githubusercontent.com/7yd7/sniper-Emote/refs/heads/test/EmoteSniper.json"
local EMOTE_BOXES = 8
local EMOTE_PER_BOX = 30

if getgenv().DevlyxEmoteWin then
    pcall(function() getgenv().DevlyxEmoteWin:Destroy() end)
    getgenv().DevlyxEmoteWin = nil
end

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer

local emoteData = {}
local okFetch, raw = pcall(function() return game:HttpGet(EMOTE_JSON_URL) end)
if okFetch then
    local okDecode, decoded = pcall(function() return HttpService:JSONDecode(raw) end)
    if okDecode and decoded and decoded.data then
        emoteData = decoded.data
    end
end

math.randomseed(tick())
local randomAccent = Color3.fromHSV(math.random(), 0.55, 0.9)
local isMobile = table.find({ Enum.Platform.IOS, Enum.Platform.Android }, UserInputService:GetPlatform()) ~= nil
local windowHeight = isMobile and 380 or 460

local windowTitle = "Devlyx"
pcall(function() windowTitle = MarketplaceService:GetProductInfo(game.PlaceId).Name end)

local NOTIFY_SOUND_ID = "rbxassetid://9117492353"

local S = {
    loop = { dances = false, animations = false, r6 = false, good = false },
    activeTracks = {},
}

local Window

local function notify(title, text, duration)
    pcall(function()
        Window:Notify({ Title = title, Content = text, Duration = duration or 4, idsound = NOTIFY_SOUND_ID })
    end)
end

local function getAnimator()
    local char = player.Character
    if not char then return nil end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return nil end
    return hum:FindFirstChildOfClass("Animator") or hum
end

local function stopAll()
    for _, track in ipairs(S.activeTracks) do
        pcall(function() track:Stop(0.2) end)
    end
    S.activeTracks = {}
end

local function playId(id, loopKey)
    local animator = getAnimator()
    if not animator then
        notify("Devlyx", "Character not ready.", 3)
        return
    end

    stopAll()

    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://" .. tostring(id)

    local ok, track = pcall(function() return animator:LoadAnimation(anim) end)
    if not ok or not track then
        notify("Devlyx", "Failed to load animation.", 3)
        return
    end

    track.Looped = S.loop[loopKey] == true
    track:Play()
    table.insert(S.activeTracks, track)
end

local function setSpeed(value)
    for _, track in ipairs(S.activeTracks) do
        pcall(function() track:AdjustSpeed(value) end)
    end
end

local function stopMoveTrack()
    if S.moveTrack then
        pcall(function() S.moveTrack:Stop(0.15) end)
        S.moveTrack = nil
    end
end

local function playMove(id)
    stopMoveTrack()
    if not id then return end
    local animator = getAnimator()
    if not animator then return end
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://" .. tostring(id)
    local ok, track = pcall(function() return animator:LoadAnimation(anim) end)
    if ok and track then
        track.Looped = true
        track:Play()
        S.moveTrack = track
    end
end

local function pickIdle(entry)
    local pool = {}
    if entry.idle then table.insert(pool, { id = entry.idle, w = entry.weight or 1 }) end
    if entry.idle2 then table.insert(pool, { id = entry.idle2, w = entry.weight2 or 1 }) end
    if entry.idle3 then table.insert(pool, { id = entry.idle3, w = 1 }) end
    if #pool == 0 then return nil end

    local total = 0
    for _, p in ipairs(pool) do total = total + p.w end
    local roll = math.random() * total
    local acc = 0
    for _, p in ipairs(pool) do
        acc = acc + p.w
        if roll <= acc then return p.id end
    end
    return pool[1].id
end

local function setDefaultAnimateEnabled(enabled)
    local char = player.Character
    local animate = char and char:FindFirstChild("Animate")
    if animate then pcall(function() animate.Disabled = not enabled end) end
end

local function restoreDefault()
    if S.stateConn then
        S.stateConn:Disconnect()
        S.stateConn = nil
    end
    stopMoveTrack()
    setDefaultAnimateEnabled(true)
end

local function applyAnimSet(entry)
    local char = player.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not hum then
        notify("Devlyx", "Character not ready.", 3)
        return
    end

    if S.stateConn then S.stateConn:Disconnect() end
    setDefaultAnimateEnabled(false)

    local function update()
        local state = hum:GetState()
        if state == Enum.HumanoidStateType.Running then
            if hum.MoveDirection.Magnitude > 0.05 then
                playMove(entry.walk)
            else
                playMove(pickIdle(entry))
            end
        elseif state == Enum.HumanoidStateType.Jumping then
            playMove(entry.jump)
        elseif state == Enum.HumanoidStateType.Freefall then
            playMove(entry.fall)
        elseif state == Enum.HumanoidStateType.Climbing then
            playMove(entry.climb)
        elseif state == Enum.HumanoidStateType.Swimming then
            if hum.MoveDirection.Magnitude > 0.05 then
                playMove(entry.swim)
            else
                playMove(entry.swimidle)
            end
        end
    end

    S.stateConn = hum.StateChanged:Connect(update)
    update()
    notify("Devlyx", "Applied.", 3)
end

player.CharacterAdded:Connect(function()
    S.activeTracks = {}
    if S.stateConn then
        S.stateConn:Disconnect()
        S.stateConn = nil
    end
    S.moveTrack = nil
end)

local Library = loadstring(game:HttpGet("https://github.com/Front-Evill/Library/releases/download/latest/main.lua"))()

Window = Library:Window({
    Title = windowTitle,
    SubTitle = "Devlyx",
    TabWidth = 160,
    Size = UDim2.fromOffset(620, windowHeight),
    Search = true,
    Resize = true,
    Stats = false,
    Acrylic = false,
    Animation = true,
    Theme = { Accent = randomAccent },
    MinimizeKey = Enum.KeyCode.B,
    icno = { work = true, IdIcon = "play", Size = 44 },
})

getgenv().DevlyxEmoteWin = Window

local dancesTab = Window:AddTab({ Name = "Dances", Icon = "music" })
local animTab   = Window:AddTab({ Name = "Animations", Icon = "play" })
local r6Tab     = Window:AddTab({ Name = "R6", Icon = "user" })
local goodTab   = Window:AddTab({ Name = "Emote Good", Icon = "star" })
local ctrlTab   = Window:AddTab({ Name = "Controls", Icon = "sliders" })

local function buildBoxes(tab, list, loopKey)
    for _, item in ipairs(list) do
        local box = tab:AddSectionsBox({ Name = item[1], Image = "play", Description = "Tap to open" })
        box:AddButton({
            Name = "Play",
            Icon = "play",
            Callback = function() playId(item[2], loopKey) end,
        })
    end
end

local function buildAnimSetBoxes(tab, list)
    for _, entry in ipairs(list) do
        local box = tab:AddSectionsBox({ Name = entry[1], Image = "play", Description = "Tap to open" })
        box:AddButton({
            Name = "Apply",
            Icon = "play",
            Callback = function() applyAnimSet(entry) end,
        })
    end
end

local function buildEmoteBoxes(tab, list)
    for boxIndex = 1, EMOTE_BOXES do
        local box = tab:AddSectionsBox({ Name = "Emotes " .. boxIndex, Image = "play", Description = "Tap to open" })
        local startIndex = (boxIndex - 1) * EMOTE_PER_BOX + 1
        local endIndex = math.min(startIndex + EMOTE_PER_BOX - 1, #list)
        for i = startIndex, endIndex do
            local item = list[i]
            if item then
                box:AddButton({
                    Name = item.name,
                    Icon = "play",
                    Callback = function() playId(item.id, "r6") end,
                })
            end
        end
    end
end

buildBoxes(dancesTab, asset.r6, "dances")
buildAnimSetBoxes(animTab, asset.animations)
buildEmoteBoxes(r6Tab, emoteData)
buildBoxes(goodTab, asset.good, "good")

local searchSection = r6Tab:AddSection({ Name = "Search", Icon = "search" })
local searchResults = {}

local function clearSearchResults()
    for _, obj in ipairs(searchResults) do
        pcall(function() obj.Frame:Destroy() end)
    end
    searchResults = {}
end

local function runSearch(query)
    clearSearchResults()
    if query == "" then return end

    local lowerQuery = query:lower()
    local found = 0
    for _, item in ipairs(emoteData) do
        if found >= EMOTE_PER_BOX then break end
        if tostring(item.name):lower():find(lowerQuery, 1, true) then
            found = found + 1
            local btn = searchSection:AddButton({
                Name = item.name,
                Icon = "play",
                Callback = function() playId(item.id, "r6") end,
            })
            table.insert(searchResults, btn)
        end
    end
end

searchSection:AddInput("EmoteSearch", {
    Title = "Search",
    Placeholder = "Type an emote name...",
    Default = "",
    Callback = runSearch,
})

local function buildControlSection(tab, label, loopKey)
    local sec = tab:AddSection({ Name = label, Icon = "sliders" })

    sec:AddToggle({
        Name = "Loop",
        Icon = "repeat",
        Default = false,
        Flag = "DevlyxLoop" .. label,
        Callback = function(v) S.loop[loopKey] = v end,
    })

    sec:AddSlider("Speed" .. label, {
        Title = "Speed",
        Default = 1,
        Min = 0.1,
        Max = 3,
        Rounding = 1,
        Callback = setSpeed,
    })

    sec:AddButton({
        Name = "Back To Default",
        Icon = "corner-up-left",
        Callback = function()
            stopAll()
            if loopKey == "animations" then restoreDefault() end
            notify("Devlyx", "Reset.", 3)
        end,
    })
end

buildControlSection(ctrlTab, "Dances", "dances")
buildControlSection(ctrlTab, "Animations", "animations")
buildControlSection(ctrlTab, "R6", "r6")
buildControlSection(ctrlTab, "Emote Good", "good")

local interfaceSection = ctrlTab:AddSection({ Name = "Interface", Icon = "settings" })
interfaceSection:AddColorPicker({ Name = "Theme" })

local saveSection = ctrlTab:AddSection({ Name = "Save", Icon = "save" })
saveSection:AddButton({
    Name = "Save Config",
    Icon = "save",
    Callback = function() Window:SaveConfig("DevlyxEmotes") end,
})
saveSection:AddButton({
    Name = "Load Config",
    Icon = "download",
    Callback = function() Window:LoadConfig("DevlyxEmotes") end,
})

Window:SelectTab("Dances")

notify("Devlyx", "Loaded.", 4)
