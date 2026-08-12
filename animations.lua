local asset = {
    animations = {
        {idle = 616136790, idle2 = 616138447, idle3 = 886888594, walk = 616146177, run = 616140816, jump = 616139451, climb = 616133594, fall = 616134815, swim = 616143378, swimidle = 616144772, weight = 9, weight2 = 1, "Stylish"},
        {idle = 616158929, idle2 = 616160636, idle3 = 885545458, walk = 616168032, run = 616163682, jump = 616161997, climb = 616156119, fall = 616157476, swim = 616165109, swimidle = 616166655, weight = 9, weight2 = 1, "Zombie"},
        {idle = 616088211, idle2 = 616089559, idle3 = 885531463, walk = 616095330, run = 616091570, jump = 616090535, climb = 616086039, fall = 616087089, swim = 616092998, swimidle = 616094091, weight = 9, weight2 = 1, "Robot"},
        {idle = 782841498, idle2 = 782845736, idle3 = 980952228, walk = 782843345, run = 782842708, jump = 782847020, climb = 782843869, fall = 782846423, swim = 782844582, swimidle = 782845186, weight = 9, weight2 = 1, "Toy"},
        {idle = 742637544, idle2 = 742638445, idle3 = 885477856, walk = 742640026, run = 742638842, jump = 742637942, climb = 742636889, fall = 742637151, swim = 742639220, swimidle = 742639812, weight = 9, weight2 = 1, "Cartoony"},
        {idle = 616111295, idle2 = 616113536, idle3 = 885535855, walk = 616122287, run = 616117076, jump = 616115533, climb = 616104706, fall = 616108001, swim = 616119360, swimidle = 616120861, weight = 9, weight2 = 1, "Superhero"},
        {idle = 707742142, idle2 = 707855907, idle3 = 885508740, walk = 707897309, run = 707861613, jump = 707853694, climb = 707826056, fall = 707829716, swim = 707876443, swimidle = 707894699, weight = 9, weight2 = 1, "Mage"},
        {idle = 616006778, idle2 = 616008087, idle3 = 886862142, walk = 616013216, run = 616010382, jump = 616008936, climb = 616003713, fall = 616005863, swim = 616011509, swimidle = 616012453, weight = 9, weight2 = 1, "Levitation"},
        {idle = 1083445855, idle2 = 1083450166, idle3 = 1088037547, walk = 1083473930, run = 1083462077, jump = 1083455352, climb = 1083439238, fall = 1083443587, swim = 1083464683, swimidle = 1083467779, weight = 9, weight2 = 1, "Vampire"},
        {idle = 845397899, idle2 = 845400520, idle3 = 901160519, walk = 845403856, run = 845386501, jump = 845398858, climb = 845392038, fall = 845396048, swim = 845401742, swimidle = 845403127, weight = 9, weight2 = 1, "Elder"},
        {idle = 1083195517, idle2 = 1083214717, idle3 = 1099492820, walk = 1083178339, run = 1083216690, jump = 1083218792, climb = 1083182000, fall = 1083189019, swim = 1083222527, swimidle = 1083225406, weight = 9, weight2 = 1, "Werewolf"},
        {idle = 657595757, idle2 = 657568135, idle3 = 885499184, walk = 657552124, run = 657564596, jump = 658409194, climb = 658360781, fall = 657600338, swim = 657560551, swimidle = 657557095, weight = 9, weight2 = 1, "Knight"},
        {idle = 16738333868, idle2 = 16738334710, idle3 = 16738335517, walk = 16738340646, run = 16738337225, jump = 16738336650, climb = 16738332169, fall = 16738333171, swim = 16738339158, swimidle = 16738339817, weight = 9, weight2 = 1, "Bold"},
        {idle = 891621366, idle2 = 891633237, idle3 = 1047759695, walk = 891667138, run = 891636393, jump = 891627522, climb = 891609353, fall = 891617961, swim = 891639666, swimidle = 891663592, weight = 9, weight2 = 1, "Astronaut"},
        {idle = 910004836, idle2 = 910009958, idle3 = 1018536639, walk = 910034870, run = 910025107, jump = 910016857, climb = 909997997, fall = 910001910, swim = 910028158, swimidle = 910030921, weight = 9, weight2 = 1, "Bubbly"},
        {idle = 750781874, idle2 = 750782770, idle3 = 885515365, walk = 750785693, run = 750783738, jump = 750782230, climb = 750779899, fall = 750780242, swim = 750784579, swimidle = 750785176, weight = 9, weight2 = 1, "Pirate"},
        {idle = 2510196951, idle2 = 2510197257, idle3 = 3711062489, walk = 2510202577, run = 2510198475, jump = 2510197830, climb = 2510192778, fall = 2510195892, swim = 2510199791, swimidle = 2510201162, weight = 9, weight2 = 1, "Rthro"},
        {idle = 656117400, idle2 = 656118341, idle3 = 886742569, walk = 656121766, run = 656118852, jump = 656117878, climb = 656114359, fall = 656115606, swim = 656119721, swimidle = 656121397, weight = 9, weight2 = 1, "Ninja"},
        {idle = 5319828216, idle2 = 5319831086, idle3 = 5392107832, walk = 5319847204, run = 5319844329, jump = 5319841935, climb = 5319816685, fall = 5319839762, swim = 5319850266, swimidle = 5319852613, weight = 9, weight2 = 1, "Oldschool"},
        {idle = 17172918855, idle2 = 17173014241, idle3 = 17173014241, walk = 11600249883, run = 11600211410, jump = 11600210487, climb = 11600205519, fall = 11600206437, swim = 11600212676, swimidle = 11600213505, weight = 9, weight2 = 1, "Realistic"},
        {idle = 18747067405, idle2 = 18747063918, idle3 = 18747063918, walk = 18747074203, run = 18747070484, jump = 18747069148, climb = 18747060903, fall = 18747062535, swim = 18747073181, swimidle = 18747071682, weight = 9, weight2 = 1, "No Boundaries"},
        {idle = 92080889861410, idle2 = 74451233229259, idle3 = 80884010501210, walk = 110358958299415, run = 117333533048078, jump = 119846112151352, climb = 134630013742019, fall = 129773241321032, swim = 132697394189921, swimidle = 79090109939093, weight = 9, weight2 = 1, "NFL Animation"},
        {idle = 110211186840347, idle2 = 114191137265065, idle3 = 99129837931148, walk = 83842218823011, run = 118320322718866, jump = 109996626521204, climb = 97824616490448, fall = 95603166884636, swim = 134530128383903, swimidle = 94922130551805, weight = 9, weight2 = 1, "Adidas Aura"},
        {idle = 18537376492, idle2 = 18537371272, idle3 = 18537374150, walk = 18537392113, run = 18537384940, jump = 18537380791, climb = 18537363391, fall = 18537367238, swim = 18537389531, swimidle = 18537387180, weight = 9, weight2 = 1, "Adidas Sports"},
        {idle = 122257458498464, idle2 = 102357151005774, idle3 = 89262795687364, walk = 122150855457006, run = 82598234841035, jump = 75290611992385, climb = 88763136693023, fall = 98600215928904, swim = 133308483266208, swimidle = 109346520324160, weight = 9, weight2 = 1, "Adidas Community"},
        {idle = 118832222982049, idle2 = 76049494037641, idle3 = 138255200176080, walk = 92072849924640, run = 72301599441680, jump = 104325245285198, climb = 131326830509784, fall = 121152442762481, swim = 99384245425157, swimidle = 113199415118199, weight = 9, weight2 = 1, "Wickled Popular"},
        {idle = 133806214992291, idle2 = 94970088341563, idle3 = 87105332133518, walk = 109168724482748, run = 81024476153754, jump = 116936326516985, climb = 119377220967554, fall = 92294537340807, swim = 134591743181628, swimidle = 98854111361360, weight = 9, weight2 = 1, "Catwalk Glam"},
        {idle = 941003647, idle2 = 941013098, idle3 = 1159195712, walk = 941028902, run = 941015281, jump = 941008832, climb = 940996062, fall = 941000007, swim = 941018893, swimidle = 941025398, weight = 9, weight2 = 1, "Princess"},
        {idle = 1069977950, idle2 = 1069987858, idle3 = 1116160740, walk = 1070017263, run = 1070001516, jump = 1069984524, climb = 1069946257, fall = 1069973677, swim = 1070009914, swimidle = 1070012133, weight = 9, weight2 = 1, "Confident"},
        {idle = 1212900985, idle2 = 1150842221, idle3 = 1239733474, walk = 1212980338, run = 1212980348, jump = 1212954642, climb = 1213044953, fall = 1212900995, swim = 1212852603, swimidle = 1070012133, weight = 9, weight2 = 1, "Popstar"},
        {idle = 1149612882, idle2 = 1150842221, idle3 = 1159573567, walk = 1151231493, run = 1150967949, jump = 1150944216, climb = 1148811837, fall = 1148863382, swim = 1151204998, swimidle = 1151221899, weight = 9, weight2 = 1, "Patrol"},
        {idle = 1132473842, idle2 = 1132477671, idle3 = "None", walk = 1132510133, run = 1132494274, jump = 1132489853, climb = 1132461372, fall = 1132469004, swim = 1132500520, swimidle = 1132506407, weight = 9, weight2 = 1, "Sneaky"},
        {idle = 1014390418, idle2 = 1014398616, idle3 = 1159487651, walk = 1014421541, run = 1014401683, jump = 1014394726, climb = 1014380606, fall = 1014384571, swim = 1014406523, swimidle = 1014411816, weight = 9, weight2 = 1, "Cowboy"},
        {idle = 616006778, idle2 = 616008087, idle3 = 616008087, walk = 616013216, run = 616013216, jump = 616008936, climb = 0, fall = 616005863, swim = 616011509, swimidle = 616012453, weight = 9, weight2 = 1, "Ghost"},
        {idle = 1151221899, idle2 = 1151221899, idle3 = "None", walk = 1151221899, run = 1151221899, jump = 1151221899, climb = 0, fall = 1151221899, swim = 16738339158, swimidle = 1151221899, weight = 9, weight2 = 1, "Ghost 2"},
        {idle = 4417977954, idle2 = 4417978624, idle3 = 4441285342, walk = 2510202577, run = 4417979645, jump = 2510197830, climb = 2510192778, fall = 2510195892, swim = 2510199791, swimidle = 2510201162, weight = 9, weight2 = 1, "Mr. Toilet"},
        {idle = 3303162274, idle2 = 3303162549, idle3 = 3710161342, walk = 2510202577, run = 3236836670, jump = 2510197830, climb = 2510192778, fall = 2510195892, swim = 2510199791, swimidle = 2510201162, weight = 9, weight2 = 1, "Udzal"},
        {idle = 657595757, idle2 = 657568135, idle3 = 885499184, walk = 2510202577, run = 3236836670, jump = 2510197830, climb = 2510192778, fall = 2510195892, swim = 2510199791, swimidle = 2510201162, weight = 9, weight2 = 1, "Oinan Thickhoof"},
        {idle = 3293641938, idle2 = 3293642554, idle3 = 3710131919, walk = 2510202577, run = 3236836670, jump = 2510197830, climb = 2510192778, fall = 2510195892, swim = 2510199791, swimidle = 2510201162, weight = 9, weight2 = 1, "Borock"},
        {idle = 4417977954, idle2 = 4417978624, idle3 = 4441285342, walk = 2510202577, run = 4417979645, jump = 2510197830, climb = 2510192778, fall = 2510195892, swim = 2510199791, swimidle = 2510201162, weight = 9, weight2 = 1, "Blocky Mech"},
        {idle = 4708191566, idle2 = 4708192150, idle3 = 121221, walk = 4708193840, run = 4708192705, jump = 4708188025, climb = 4708184253, fall = 4708186162, swim = 4708189360, swimidle = 4708190607, weight = 9, weight2 = 1, "Stylized Female"},
        {idle = 4211217646, idle2 = 4211218409, idle3 = "None", walk = 4211223236, run = 4211220381, jump = 4211219390, climb = 4211214992, fall = 4211216152, swim = 4211221314, swimidle = 4374694239, weight = 9, weight2 = 1, "R15"},
        {idle = 913367814, idle2 = 913373430, idle3 = "None", walk = 913402848, run = 913376220, jump = 913370268, climb = 913362637, fall = 913365531, swim = 913384386, swimidle = 913389285, weight = 9, weight2 = 1, "Mocap"},
        {idle = 92849173543269, idle2 = 132238900951109, idle3 = 87867222929430, walk = 73718308412641, run = 135515454877967, jump = 78508480717326, climb = 129447497744818, fall = 78147885297412, swim = 110657013921774, swimidle = 129183123083281, weight = 9, weight2 = 1, "Wicked Dancing Through Life"},
        {idle = 98281136301627, idle2 = 138183121662404, idle3 = 133117300343405, walk = 90478085024465, run = 134824450619865, jump = 121454505477205, climb = 121145883950231, fall = 94788218468396, swim = 105962919001086, swimidle = 129126268464847, weight = 9, weight2 = 1, "Unboxed"},
    },
    r6 = {
        {148840371, "Balloon Float"},
        {180435571, "Idle"},
        {259438880, "Arm Turbine"},
        {121572214, "Floating Head"},
        {121572214, "Insane Rotation"},
        {180611870, "Scream"},
        {33796059, "Party Time"},
        {33169596, "Chop"},
        {248336677, "Weird Sway"},
        {28488254, "Goal!"},
        {136801964, "Rotation"},
        {188632011, "Spin"},
        {248336459, "Weird Float"},
        {30235165, "Pinch Nose"},
        {180612465, "Cry"},
        {282574440, "Penguin Slide"},
        {183294396, "Zombie Arms"},
        {46196309, "Flying"},
        {66703241, "Stab"},
        {35654637, "Dance"},
        {48977286, "Random"},
        {33855276, "Hmmm"},
        {35978879, "Sword"},
        {27432691, "Arms Out"},
        {45737360, "Kick"},
        {87986341, "Insane Legs"},
        {35154961, "Head Detach"},
        {30196114, "Moon Walk"},
        {287325678, "Crouch"},
        {45504977, "Beat Box"},
        {161268368, "Big Guns"},
        {225975820, "Bigger Guns"},
        {429703734, "Charleston"},
        {27789359, "Moon Dance"},
        {163209885, "Roar"},
        {248336163, "Weird Pose"},
        {186934910, "Spin Dance 2"},
        {204292303, "Bow Down"},
        {204295235, "Sword Slam"},
        {313762630, "Glitch Levitate"},
        {218504594, "Full Swing"},
        {204062532, "Full Punch"},
        {181526230, "Faint"},
        {181525546, "Floor Faint"},
        {182724289, "Crouch"},
        {429681631, "Jumping Jacks"},
        {429730430, "Spin Dance"},
        {33169583, "Arm Detach"},
        {184574340, "Mega Insane"},
        {204328711, "Dino Walk"},
        {283545583, "Tilt Head"},
        {183412246, "Dab"},
        {179224234, "Float Sit"},
        {215384594, "Clone Illusion"},
        {184574340, "Hero Jump"},
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
