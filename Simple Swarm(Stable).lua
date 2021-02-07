--A very sexy lib made by https://v3rmillion.net/member.php?action=profile&uid=1379221
--Here's the release thread https://v3rmillion.net/showthread.php?tid=1066917





-------------------------------------------------------------------------------------------------------------------
--SaveConfig
local HttpService = game:GetService("HttpService");
local SaveFileName = "KeyBind.txt"
local Configuration = {Bind = 'Enum.KeyCode.RightAlt', Before = false}
    if not pcall(function()
    readfile(SaveFileName)
    end) then
    writefile(SaveFileName, HttpService:JSONEncode(Configuration))
end
local Setting = HttpService:JSONDecode(readfile(SaveFileName))
local function SaveSettings()
   writefile(SaveFileName, HttpService:JSONEncode(Setting))
end
-------------------------------------------------------------------------------------------------------------------
--Global Variables
getgenv().Raining = false
getgenv().Killing = false

--Local Variables
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Enabled = false
        game:GetService("Players").LocalPlayer.PlayerGui.Chat.Enabled = false
        game:GetService("Players").LocalPlayer.PlayerGui.ControlGui.Enabled = false
        game:GetService("CoreGui").TopBar.Enabled = false
LocalPlayer = game.Players.LocalPlayer
Players = game.Players
Character = LocalPlayer.Character
local GC = getconnections or get_signal_cons
local AlertMondo = game.workspace
local ContextActionService = game:GetService("ContextActionService")
local UIS = game:GetService("UserInputService")
local FreezeAc = "freezeMovement"
local EnabledDispensers = true 
local FieldEnabled = true
local EssentialEnabled = true
local RareEnabled = true
local GlueEnabled = true
local Collectibles = game.Workspace.Collectibles
Collectibles:ClearAllChildren()
Decorations = game.workspace.Decorations.Misc:GetChildren()
FieldDecorations = game.workspace.FieldDecos:GetChildren()
local Blur = Instance.new('BlurEffect')
Blur.Parent = game:GetService("Lighting")
Blur.Size = 14
Blur.Name = "effect"

if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
end

if not workspace:WaitForChild('Values', 0.06) then
    wait()
    local Values = Instance.new('Folder')
    Values.Name = 'Values'
    Values.Parent = game.workspace
    local switch = Instance.new('BoolValue')
    switch.Name = 'bool'
    switch.Parent = Values
    switch.Value = true
    local alert1 = Instance.new('BoolValue')
    alert1.Name = 'alertdispenser'
    alert1.Parent = Values
    alert1.Value = false
    local alert2 = Instance.new('BoolValue')
    alert2.Name = 'alertmondo'
    alert2.Parent = Values
    alert2.Value = false
elseif workspace:WaitForChild('Values', 0.1) then
end
local AlertDispensers = game.workspace:WaitForChild('Values', 0.07)
AlertDispensers = AlertDispensers.alertdispenser
local AlertMondo = game.workspace:WaitForChild('Values', 0.07)
AlertMondo = AlertMondo.alertmondo


local args, args2, args3, args4 = 
{[1] = "Honey Dispenser"}, 
{[1] = "Treat Dispenser"}, 
{[1] = "Strawberry Dispenser"}, 
{[1] = "Blueberry Dispenser"}
local args5, args6, args7, args8, args9, args10 = 
{[1] = "Wealth Clock"},
{[1] = "Free Ant Pass Dispenser"},
{[1] = "Coconut Dispenser"},
{[1] = "Free Royal Jelly Dispenser"},
{[1] = "Honeyday Candles"},
{[1] = "Gingerbread House"}
local e1, e2, e3, e4 = 
{[1] = "Beesmas Feast"},
{[1] = "Onett's Lid Art"},
{[1] = "Glue Dispenser"},
{[1] = "Honey Wreath"}

local f1, f2, f3= 
{[1] = "Red Field Booster"},
{[1] = "Blue Field Booster"},
{[1] = "Field Booster"}
local d = {"Bamboo", "strawberry", "Pumpkin", "Cactus", "Sundower", "Pineapple", "Pine Tree", "Big Pine Tree", "Mushroom"}
local t = {
"rbxassetid://2529092020", --Magic Bean
"rbxassetid://2545746569", --Oil
"rbxassetid://2495936068", --Blue Extract
"rbxassetid://2495935302", --Red Extract
"rbxassetid://2306224708", --Mooncharm
"rbxassetid://2545746569", --Oil
"rbxassetid://1674686518", --Ticket
"rbxassetid://1674871631", --Ticket
"rbxassetid://2504978518", --Glue
"rbxassetid://2584584968", --Enzymes
"rbxassetid://2319943273", --Starjelly
"rbxassetid://2000457501", --Inspire Token
"rbxassetid://2542899802"  --Glitter 
}

local f = {
    -----------------------------------------------------------------------
    --0 Bee Zone
    Dandelion = game:GetService("Workspace").FlowerZones["Dandelion Field"],
    Mushroom = game:GetService("Workspace").FlowerZones["Mushroom Field"],
    Blue = game:GetService("Workspace").FlowerZones["Blue Flower Field"],
    Sunflower = game:GetService("Workspace").FlowerZones["Sunflower Field"],
    Clover = game:GetService("Workspace").FlowerZones["Clover Field"],
    -----------------------------------------------------------------------
    --5 Bee Zone
    Bamboo = game:GetService("Workspace").FlowerZones["Bamboo Field"],
    Spider = game:GetService("Workspace").FlowerZones["Spider Field"],
    Strawberry = game:GetService("Workspace").FlowerZones["Strawberry Field"],
    -----------------------------------------------------------------------
    --10 Bee Zone
    Stump = game:GetService("Workspace").FlowerZones["Stump Field"],
    Pineapple = game:GetService("Workspace").FlowerZones["Pineapple Patch"],
    -----------------------------------------------------------------------
    --15 Bee Zone
    Rose = game:GetService("Workspace").FlowerZones["Rose Field"],
    Pine = game:GetService("Workspace").FlowerZones["Pine Tree Forest"],
    Cactus = game:GetService("Workspace").FlowerZones["Cactus Field"],
    Pumpkin = game:GetService("Workspace").FlowerZones["Pumpkin Patch"],
    -----------------------------------------------------------------------
    --25 Bee Zone
    Mountain = game:GetService("Workspace").FlowerZones["Mountain Top Field"],
    -----------------------------------------------------------------------
    --35 Bee Zone
    Pepper = game:GetService("Workspace").FlowerZones["Pepper Patch"],
    Coconut = game:GetService("Workspace").FlowerZones["Coconut Field"],
    -----------------------------------------------------------------------
    --No Field
    Nil = nil or ''
}

local fieldslocated = {}
    
    
    
    

--UI Library
loadstring(game:HttpGet("https://raw.githubusercontent.com/DivineEntity01/BSS-01/main/Rodus%20%7C%20UI-Library", true))()
if game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
wait()
elseif not game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
CreateMain("Simple Swarm")
CreateTab("AutoFarm")
CreateTab("Auto Machines")
CreateTab("Monster Farm")
CreateTab('Player Toggles')
CreateTab("Extras")
end

function onInputBegan(input,gameProcessed)
if input.UserInputType == Enum.UserInputType.Keyboard and Setting.Bind:lower()==tostring(input.KeyCode):lower() and not gameProcessed then
    if game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08).Top.Visible == false then 
        game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08).Top.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Enabled = false
        game:GetService("Players").LocalPlayer.PlayerGui.Chat.Enabled = false
        game:GetService("Players").LocalPlayer.PlayerGui.ControlGui.Enabled = false
        game:GetService("CoreGui").TopBar.Enabled = false
        game:GetService("Lighting").effect.Enabled = true
    else 
        game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08).Top.Visible = false 
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.Chat.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.ControlGui.Enabled = true
        game:GetService("CoreGui").TopBar.Enabled = true
        game:GetService("Lighting").effect.Enabled = false
end
end
end
game:GetService("UserInputService").InputBegan:connect(onInputBegan)
-------------------------------------------------------------------------------------------------------------------
-- A U T O F A R M
getgenv().FieldChange = false


CreateToggle(tabs['AutoFarm'], "AutoFarm", "Collects and sells the pollen when you are full",function()
if not getgenv().AutoFarm then
getgenv().AutoFarm = true
local Selling = false
local cooldownin = false
while getgenv().AutoFarm do
if not getgenv().AutoFarm then
cooldownin = false
Selling = false
Reached = false
Walking = true
    break
end
if cooldownin == false then
local fields = game:GetService("CoreGui")["Simple Swarm"].Top.Container["AutoFarm"].TabContainer["Select Field"].Side.Box
local Selling = false
local radiusSell = 13
local distanceSell = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.SpawnPos.Value.p).Magnitude
cooldownin = true
--FIELD TP------------------------------------
fields.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLost)
    if enterPressed and not Selling then
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 8
            FindField()
            for i,v in pairs(game:GetService("Workspace").FlowerZones:GetChildren()) do
            if v.Name:sub(1, string.len(fields.Text)):gsub("%s+", ""):lower() == fields.Text:lower():gsub("%s+", "") and not Selling then
            local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = v.CFrame + Vector3.new(0, 7, 0)})
            tween:Play()
            fields.Text = v.Name
    local args = {[1] = {["Name"] = "Sprinkler Builder"}}
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(11, 9, 26)
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(21, 9, 0)
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 9, 24)
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(1)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.47
end
end
end
end)
for i,v in pairs(game:GetService("Workspace").FlowerZones:GetChildren()) do
local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
    if v.Name:gsub("%s+", ""):lower() == fields.Text:gsub("%s+", ""):lower() and not Selling then
    local size1 = v.Size.z
    local size2 = v.Size.x
    local radius = (size1 + size2) / 4.2
    local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = v.CFrame + Vector3.new(0, 7, 0)})
    if(distance >= radius and not Selling) then
    tween:Play()
    local args = {[1] = {["Name"] = "Sprinkler Builder"}}
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 6
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(math.random(2, 13), 10, math.random(2, 13))
    wait(0.1)
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(0.2)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.47
end
end
end
-------------------------------------------------------------------------------------------------------------------



--AUTO TOKENS---------------------
for i,v in ipairs(game.Workspace.Collectibles:GetChildren()) do
    if v and not Selling then
    local radius = 45
    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
	if(distance <= radius) then
    local Walking = false
    local Reached = false
    repeat
        local Decal = v:WaitForChild('FrontDecal', 0.009)
        game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Connect(function()
            Walking = false
            Reached = true
        end)
        if not Walking then
            Walking = true
            if v:WaitForChild('FrontDecal', 0.009) then
                if v:WaitForChild('FrontDecal', 0.009).Texture == "rbxassetid://1629547638" then
                game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.Position, v)
                end
            end
            while not Reached do
            if not getgenv().AutoFarm then
                break
            end
            game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.Position, v)
            wait()
            end
        end
    until not Walking or not getgenv().AutoFarm or Selling
end
    elseif not v then
    game.Workspace.Collectibles:WaitForChild('C', 0.01)
end
end
if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value >= game:GetService("Players").LocalPlayer.CoreStats.Capacity.Value/1.07 and not cooldownin then
wait()
Selling = true
if Selling == true then
wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
wait(7)
local args = {[1] = "ToggleHoneyMaking"}
game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(unpack(args))
end
repeat
if (distanceSell >= radiusSell) and Selling then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.SpawnPos.Value.p) + Vector3.new(0, 1.5, 0)
wait(7)
end
until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value <= 1 or not getgenv().AutoFarm 
if (distanceSell >= radiusSell) and Selling then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.SpawnPos.Value.p) + Vector3.new(0, 1.5, 0)
wait(7)
local args = {[1] = "ToggleHoneyMaking"}
game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(unpack(args))
end
wait(15)
end
----------------------------------
end
if cooldownin then
cooldownin = true
wait(0.08)
end
cooldownin = true
wait(0.15)
cooldownin = false
Selling = false
Reached = false
Walking = true
end

elseif getgenv().AutoFarm then
    getgenv().AutoFarm = false
    end
end)

CreateTextBox(tabs['AutoFarm'], "Select Field", "Select the fild you want to farm on",function()
    wait()
end)

CreateToggle(tabs['AutoFarm'], "Star Catcher", "Catches the falling lights",function()
if not getgenv().StarCatchIn then
        getgenv().StarCatchIn = true
while true do
local Cooldown = false
if Cooldown == false and getgenv().Killing == false then
Cooldown = true
if getgenv().StarCatchIn == true then
        local StarEnabled = false
        if StarEnabled == false then
        StarEnabled = true
    if StarEnabled == true then
    if game.workspace.Particles:FindFirstChild('WarningDisk', 0.02) then
    if game.Workspace.Particles:FindFirstChild('WarningDisk', 0.1).BrickColor.Name == "Lime green" and game.Workspace.Particles:FindFirstChild('WarningDisk', 0.02).Transparency >= 0.05 then
        getgenv().Raining = true
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Particles:FindFirstChild('WarningDisk', 0.02).Position)
end
    elseif not game.Workspace.Particles:WaitForChild('WarningDisk', 0.1) then
    getgenv().Raining = false
    end
    if not game.Workspace.Particles:WaitForChild('WarningDisk', 0.1) then
    getgenv().Raining = false
    end
end
end
end
end
wait(0.01)
StarEnabled = false
if getgenv().StarCatchIn == false then
    getgenv().Raining = false
    break
end
Cooldown = false
end
elseif getgenv().StarCatchIn then
        getgenv().Raining = false
        getgenv().StarCatchIn = false
end
end)

CreateToggle(tabs['AutoFarm'], "TP to rares", "Teleport to rare tokens, useful!",function()
    if not getgenv().RareTpIn then
    getgenv().RareTpIn = true
    if getgenv().RareTpIn then
    while true do 
    if RareEnabled == true and getgenv().Killing == false then
    RareEnabled = false
    for i,v in ipairs(game.Workspace.Collectibles:GetChildren()) do
    if v then
    local Decal = v:WaitForChild('FrontDecal', 0.3).Texture
    if table.find(t, Decal) and v.Transparency <= 0.15 and getgenv().Raining == false then
    local radius = 50
    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
	if(distance <= radius) then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
	elseif not v then
    game.Workspace.Collectibles:WaitForChild('C', 1)
    end
    end
    end
    end
    end
    wait(0.6)
    RareEnabled = true
    if getgenv().RareTpIn == false then
    RareEnabled = true
    break
    end
    end
end
    elseif getgenv().RareTpIn then
    getgenv().RareTpIn = false
    RareEnabled = true
end
end)








-------------------------------------------------------------------------------------------------------------------
-- D I S P E N S E R S

CreateToggle(tabs['Auto Machines'], "AutoDispensers", "Autocollects the dispensers",function(bool)
        if not getgenv().DispensersIn then
        getgenv().DispensersIn = true
        local CoreGui = game:GetService("StarterGui")
        local bindable = Instance.new("BindableFunction")
        CoreGui:SetCore("SendNotification", {
	    Title = "AutoDispensers Enabled",
	    Text = "AutoDispenser is enabled, may cause lag once it autocollects em",
	    Duration = 30,
	    Button1 = "Yeah"
        })  
    if getgenv().DispensersIn == true then
    while true do
    wait()
    if EnabledDispensers == true then
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args2))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args3))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args4))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args5))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args6))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args7))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args8))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args9))
    wait()
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args10))
    wait()
end

if getgenv().DispensersIn == false then
    EnabledDispensers = true
    break
end
EnabledDispensers = false
wait(600)
EnabledDispensers = true
end
end
elseif getgenv().DispensersIn then
    getgenv().DispensersIn = false
    EnabledDispensers = true
end
end)
CreateToggle(tabs['Auto Machines'], "AutoGlue Dispenser", "Autocollects the Glue dispenser",function()
    if not getgenv().GlueEnabledIn then
    getgenv().GlueEnabledIn = true
    if getgenv().GlueEnabledIn == true then
    while true do
    if GlueEnabled == true then
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e3))
    end
    if getgenv().GlueEnabledIn == false then
    break
end
    GlueEnabled = false
    wait(1200)
    GlueEnabled = true
end
end
    elseif getgenv().GlueEnabledIn then
        getgenv().GlueEnabledIn = false
    end
end)
CreateToggle(tabs['Auto Machines'], "Auto Boosters", "Activates the boosters automatically",function()
    if not getgenv().FieldBoosterIn then
    getgenv().FieldBoosterIn = true
    if getgenv().FieldBoosterIn == true then
    while true do
    if FieldEnabled == true then 
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(f1))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(f2))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(f3))
    end
    if getgenv().FieldBoosterIn == false then
        FieldEnabled = true
    break
end
    FieldEnabled = false
    wait(600)
    FieldEnabled = true
end
end
    elseif getgenv().FieldBoosterIn then
        getgenv().FieldBoosterIn = false
end
end)
CreateToggle(tabs['Auto Machines'], "Essential Dispensers", "Do not recommend, doesn't collect the tokens from manual dispensers",function()
        if not getgenv().EssentialDispensersIn then
        getgenv().EssentialDispensersIn = true
    if getgenv().EssentialDispensersIn == true then
    while true do
    EssentianEnabled = false
    if EssentianEnabled == true then
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e1))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e2))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e3))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e4))
    end
    if getgenv().EssentialDispensersIn == false then
    break
end
    EssentianEnabled = true
    wait(1200)
    EssentianEnabled = false
end
end
    elseif getgenv().EssentialDispensersIn then
        getgenv().EssentialDispensersIn = false
    end
end)

-------------------------------------------------------------------------------------------------------------------
-- B O S S E S 

CreateToggle(tabs['Monster Farm'], "Coconut Crab", "Turn on to kill the Crab",function()
    if not getgenv().CoconutCrabIn then
    getgenv().CoconutCrabIn = true
    ContextActionService:BindAction(
    FreezeAc,
    function()
        return Enum.ContextActionResult.Sink
    end,
    false,
    unpack(Enum.PlayerActions:GetEnumItems()))
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-344, 111, 535)
    local Platform2 = Instance.new("Part")
    Platform2.Parent = game.workspace
    Platform2.Name = 'CoconutPlatform'
    Platform2.Anchored = true
    Platform2.CFrame = CFrame.new(-262, 109, 510)
    Platform2.Size = Vector3.new(100, 1, 100)
    Platform2.Color = Color3.new(0, 0, 0)
    Platform2.Transparency = 1
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-262, 114, 508)
    wait(1)
    while true do
    local EnabledCrab = false
    if EnabledCrab == false then
    EnabledCrab = true
    if game:GetService("Workspace").Monsters:WaitForChild("Coconut Crab (Lvl 12)", 0.1) then
    if game:GetService("Workspace").Monsters:WaitForChild("Coconut Crab (Lvl 12)", 0.1) and game:GetService("Workspace").Monsters:WaitForChild("Coconut Crab (Lvl 12)", 0.1).Target.Value == game.Players.LocalPlayer.Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-262, 114, 508)
    getgenv().Killing = true
    elseif game:GetService("Workspace").Monsters:WaitForChild("Coconut Crab (Lvl 12)", 0.1) and game:GetService("Workspace").Monsters:WaitForChild("Coconut Crab (Lvl 12)", 0.1).Target.Value ~= game.Players.LocalPlayer.Character then
        ContextActionService:UnbindAction(FreezeAc)
        getgenv().Killing = false
        if workspace:WaitForChild('CoconutPlatform', 0.07) then
        workspace:WaitForChild('CoconutPlatform', 0.2):Destroy()
end
end
    elseif not game:GetService("Workspace").Monsters:WaitForChild("Coconut Crab (Lvl 12)", 0.1) then
        ContextActionService:UnbindAction(FreezeAc)
        if workspace:WaitForChild('CoconutPlatform', 0.07) then
        workspace:WaitForChild('CoconutPlatform', 0.2):Destroy()
        end
        game:GetService("CoreGui")["Simple Swarm"].Top.Container["Monster Farm"].TabContainer["Coconut Crab"].TextColor3 = Color3.new(255, 255, 255)
        getgenv().CoconutCrabIn = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-275, 78, 425)
        getgenv().Killing = false
        break
end
end
if getgenv().CoconutCrabIn == false then
    ContextActionService:UnbindAction(FreezeAc)
    getgenv().Killing = false
        break
end
wait(0.03)
EnabledCrab = false  
end
    elseif getgenv().CoconutCrabIn then
    getgenv().CoconutCrabIn = false
    getgenv().Killing = false
    ContextActionService:UnbindAction(FreezeAc)
        if workspace:WaitForChild('CoconutPlatform', 0.07) then
        workspace:WaitForChild('CoconutPlatform', 0.06):Destroy()
end
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-275, 78, 425)
end
end)
CreateToggle(tabs['Monster Farm'], "Stump Snail", "Turn on to kill the Snail",function()
    if not getgenv().SnailIn then
    if game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.03) then
        if game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.03).Target.Value ~= Character then
        game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.03).Name = 'Stump Snail (Lvl 7)'
    end
    
    elseif not game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.03) then
    end
    getgenv().SnailIn = true
    ContextActionService:BindAction(
    FreezeAc,
    function()
        return Enum.ContextActionResult.Sink
    end,
    false,
    unpack(Enum.PlayerActions:GetEnumItems()))
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310, 133, 2)
    local Platform = Instance.new("Part")
    Platform.Parent = game.workspace
    Platform.Name = 'SnailPlatform'
    Platform.Anchored = true
    Platform.CFrame = CFrame.new(423, 128, -178)
    Platform.Size = Vector3.new(100, 1, 100)
    Platform.Color = Color3.new(0, 0, 0)
    Platform.Transparency = 1
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(423, 133, -178)
    wait(1)
    while true do
    local EnabledSnail = true
    if EnabledSnail == true then
        EnabledSnail = false
        if game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.3) then
            if game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.15) and game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.15).Target.Value == Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(423, 133, -178)
                getgenv().Killing = true
            elseif game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.15) and game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.15).Target.Value ~= Character then
                if workspace:WaitForChild('SnailPlatform', 1) then
                    workspace:WaitForChild('SnailPlatform', 1):Destroy()
                end
                getgenv().Killing = false
            ContextActionService:UnbindAction(FreezeAc)
end

    elseif not game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.15) then
            if workspace:WaitForChild('SnailPlatform', 1) then
                    workspace:WaitForChild('SnailPlatform', 1):Destroy()
            end
            ContextActionService:UnbindAction(FreezeAc)
            game:GetService("CoreGui")["Simple Swarm"].Top.Container["Monster Farm"].TabContainer["Stump Snail"].TextColor3 = Color3.new(255, 255, 255)
            getgenv().SnailIn = false
            getgenv().Killing = false
            break
end
end
    if getgenv().SnailIn == false then
        ContextActionService:UnbindAction(FreezeAc)
        getgenv().Killing = false
        break
    end
    wait(0.03)
    EnabledSnail = true
end
    elseif getgenv().SnailIn then
    getgenv().SnailIn = false
    getgenv().Killing = false
    ContextActionService:UnbindAction(FreezeAc)
    if workspace:WaitForChild('SnailPlatform', 0.08) then
        workspace:WaitForChild('SnailPlatform', 0.08):Destroy()
    end
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425, 96, -178)
end
end)
CreateToggle(tabs['Monster Farm'], "Mondo Chick", "Turn on to kill the Mondo Chick",function()
    if not getgenv().MondoIn then
    getgenv().MondoIn = true
    ContextActionService:BindAction(
    FreezeAc,
    function()
        return Enum.ContextActionResult.Sink
    end,
    false,
    unpack(Enum.PlayerActions:GetEnumItems()))
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54, 210, -249)
    local Platform3 = Instance.new('Part')
    Platform3.Parent = game.workspace
    Platform3.Name = 'MondoPlatform'
    Platform3.Anchored = true
    Platform3.CFrame = CFrame.new(79, 210, -166)
    Platform3.Size = Vector3.new(100, 1, 100)
    Platform3.Color = Color3.new(0, 0, 0)
    Platform3.Transparency = 1
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79, 213, -166)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23, 176, -181)
    while true do 
        local EnabledMondo = true
        if EnabledMondo == true then
        EnabledMondo = false
        if game:GetService("Workspace").Monsters:WaitForChild("Mondo Chick (Lvl 8)", 0.05) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79, 213, -166)
            getgenv().Killing = true
        end
        if not game:GetService("Workspace").Monsters:WaitForChild("Mondo Chick (Lvl 8)", 0.05) then
        if game.Workspace:FindFirstChild('MondoPlatform', 0.05) then
                ContextActionService:UnbindAction(FreezeAc)
                game.Workspace:FindFirstChild('MondoPlatform', 0.05):Destroy()
                
        end
        getgenv().Killing = false
        local CoreGui = game:GetService("StarterGui")
        local bindable = Instance.new("BindableFunction")
        function bindable.OnInvoke(response)
        local sound = Instance.new("Sound", game.Players.LocalPlayer.Character.HumanoidRootPart)
        sound.Name = 'bruh'
        sound.SoundId = "rbxassetid://170040190"
        sound:Play()
        wait(60)
        game.Players.LocalPlayer.Character.HumanoidRootPart.bruh:Destroy()
end
        CoreGui:SetCore("SendNotification", {
	Title = "MondoChick Enabled",
	Text = "There is no Mondo Chick",
	Duration = 6000,
	Callback = bindable,
	Button1 = "Ok"
})
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23, 176, -181)
        ContextActionService:UnbindAction(FreezeAc)
        game:GetService("CoreGui")["Simple Swarm"].Top.Container["Monster Farm"].TabContainer["Mondo Chick"].TextColor3 = Color3.new(255, 255, 255)
        getgenv().MondoIn = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23, 176, -181)
        break
end
end
if not getgenv().MondoIn then
    getgenv().Killing = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23, 176, -181)
    break
end
wait(0.05)
EnabledMondo = true
end
    elseif getgenv().MondoIn then
    getgenv().Killing = false
    getgenv().MondoIn = false
    if game.Workspace:FindFirstChild('MondoPlatform', 0.05) then
    game.Workspace:FindFirstChild('MondoPlatform', 0.05):Destroy()
    end
    ContextActionService:UnbindAction(FreezeAc)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23, 176, -181)
end
end)


-------------------------------------------------------------------------------------------------------------------
--Player Tab

CreateTextBox(tabs['Player Toggles'], "Set Walkspeed", "Set your Walkspeed",function(arg)
    getgenv().WalkspeedIn = false
    wait(0.5)
    getgenv().WalkspeedIn = true
    while getgenv().WalkspeedIn do
    if not getgenv().WalkspeedIn then
    break
    end
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
    wait(0.08)
end
end)
CreateButton(tabs['Player Toggles'], "Delete Decorations", "Delete those annoying decorations, smh",function()
    local CoreGui = game:GetService("StarterGui")
    if not getgenv().FieldDecosIn then
    getgenv().FieldDecosIn = true
if getgenv().FieldDecosIn then
    CoreGui:SetCore("SendNotification", {
	Title = "Deleting Decorations...",
	Text = "Might reduce fps for a just for a few seconds",
	Duration = 4
})
for i,v in pairs(Decorations) do
        if table.find(d, v.Name) then
        if v.DataCost == 82 then
            v:Destroy()
end
        if v:FindFirstChild('Part') and not v.Part:FindFirstChild('Decal', 0.03) then
            v:FindFirstChild('Part'):Destroy()
end
end
        if string.match(v.Name, 'Flower') then
            v:Destroy()
end
end
wait(1.7)
for i,v in pairs(FieldDecorations) do
    wait()
    if table.find(d, v.Name) then
                v:Destroy()
end
end
wait(6)
    CoreGui:SetCore("SendNotification", {
	Title = "Field Decorations",
	Text = "Success!",
	Duration = 6
})
end
end
end)
CreateButton(tabs['Player Toggles'], "Teleport to your hive", "Teleport to your hive for your needs(Claim First)",function()
    wait()
    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
end)


-------------------------------------------------------------------------------------------------------------------

--E X T R A S 

CreateLabel(tabs['Extras'], "Notes", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "I recommend having a bee", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "with the token link ability!", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "Simple Swarm Version:", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "0.8.1(Stable)", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "Stable Version, a few bugs", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "might be present, just a few", Color3.fromRGB(255,255,255))
CreateTextBox(tabs['Extras'], "GUI Keybind", "Set Keybind",function(arg)
end)
-------------------------------------------------------------------------------------------------------------------


-- E X T R A  F U N C T I O N S
game:GetService("CoreGui")["Simple Swarm"].Top.Container["Player Toggles"].TabContainer:WaitForChild("Set Walkspeed", 0.3)
local textbox = game:GetService("CoreGui")["Simple Swarm"].Top.Container["Player Toggles"].TabContainer["Set Walkspeed"].Side.Box
local textboxk = game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["GUI Keybind"].Side.Box
local fields = game:GetService("CoreGui")["Simple Swarm"].Top.Container["AutoFarm"].TabContainer["Select Field"].Side.Box
fields.Text = "Nil"
fields.ClearTextOnFocus = true




textboxk.Text = string.sub(Setting.Bind, 14)
textbox.Changed:connect(function(prop)
    if prop == "Text" then
        if not tonumber(textbox.Text) then
            textbox.Text = textbox.Text:sub(1,#textbox.Text-1)
        end
    end
end)

textboxk.Focused:Connect(function()
    game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["GUI Keybind"].Text = "Press a key"
	textboxk.TextEditable = false
	local Enabled = true
	wait(0.2)
    UIS.InputBegan:Connect(function(Input , GPE)
    if Enabled == false then
        return
    end
    Setting.Bind = tostring(Input.KeyCode)
    SaveSettings()
    textboxk.Text = string.sub(tostring(Input.KeyCode), 14)
    wait()
    Enabled = false
    textboxk:ReleaseFocus()
    end)
end)
textboxk.FocusLost:Connect(function()
    game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["GUI Keybind"].Text = "GUI Keybind"
end)


local fields = game:GetService("CoreGui")["Simple Swarm"].Top.Container["AutoFarm"].TabContainer["Select Field"].Side.Box
fields.Text = "Nil"
fields.ClearTextOnFocus = true


function FindField()
local text = fields.Text
    for _,v in pairs(f) do
    if tostring(_):sub(2, string.len(text)):lower() == text:lower():gsub("%s+", "") then
    table.insert(fieldslocated, tostring(_))
end
end
    for i,v in pairs(fieldslocated) do
        if #fieldslocated == 1 then
end
end
end

if not getgenv().AutoFarm and game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value >= game:GetService("Players").LocalPlayer.CoreStats.Capacity.Value/1.07 then
    fields.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLost)
    if enterPressed then
            FindField()
            for i,v in pairs(game:GetService("Workspace").FlowerZones:GetChildren()) do
      if v.Name:sub(1, string.len(fields.Text)):gsub("%s+", ""):lower() == fields.Text:lower():gsub("%s+", "") then
      local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = v.CFrame + Vector3.new(0, 1, 0)})
	fields.Text = v.Name
	if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value >= game:GetService("Players").LocalPlayer.CoreStats.Capacity.Value/1.07 then
		wait()
	else
	tween:Play()
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 6
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(11, 3, 16)
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(21, 3, 0)
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 3, 14)
    game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))
end
end
end
end
end)
wait(3)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.47
end
