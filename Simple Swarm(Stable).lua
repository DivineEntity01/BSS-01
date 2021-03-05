--A very sexy lib made by https://v3rmillion.net/member.php?action=profile&uid=1379221
--Here's the release thread https://v3rmillion.net/showthread.php?tid=1066917
--Bye beesmas...


print('made by NEGROEATINGSOAP a.k.a DivineEntity01 \n learning lua since the year 0')

-------------------------------------------------------------------------------------------------------------------
--SaveConfig
local HttpService = game:GetService("HttpService");
local SaveFileName = "KeyBind.txt"
local Configuration = {Bind = 'Enum.KeyCode.RightAlt', Bind2 = 'Enum.KeyCode.F'}
    if not pcall(function()
    readfile(SaveFileName)
    end) then
    writefile(SaveFileName, HttpService:JSONEncode(Configuration))
end
local Setting = HttpService:JSONDecode(readfile(SaveFileName))
local function SaveSettings()
   writefile(SaveFileName, HttpService:JSONEncode(Setting))
end
repeat wait()
until game:IsLoaded()
-------------------------------------------------------------------------------------------------------------------
--Global Variables
getgenv().Raining = false
getgenv().Killing = false
getgenv().WSended = false
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
local TweenService = game:GetService("TweenService")
local RS = game:GetService("RunService")
local Tokens = game.Workspace.Collectibles:GetChildren()
local pollenTool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
if pollenTool==nil or pollenTool:FindFirstChild("ClickEvent")==nil then
end

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
local args5, args6, args7, args8 = 
{[1] = "Wealth Clock"},
{[1] = "Free Ant Pass Dispenser"},
{[1] = "Coconut Dispenser"},
{[1] = "Free Royal Jelly Dispenser"}

local e1 =  {[1] = "Glue Dispenser"}

local f1, f2, f3= 
{[1] = "Red Field Booster"},
{[1] = "Blue Field Booster"},
{[1] = "Field Booster"}
local d = {"Bamboo", "strawberry", "Pumpkin", "Cactus", "Sundower", "Pineapple", "Pine Tree", "Big Pine Tree", "Mushroom"}
local t = {
"rbxassetid://3030569073", --Cloud Vial
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
    Nil = 'nil'
}

local fieldslocated = {}
    
    
    
    

--UI Library
if game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
wait()
elseif not game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
loadstring(game:HttpGet("https://raw.githubusercontent.com/DivineEntity01/BSS-01/main/Rodus%20%7C%20UI-Library", true))()
wait()
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
if input.UserInputType == Enum.UserInputType.Keyboard and Setting.Bind2:lower()==tostring(input.KeyCode):lower() and not gameProcessed then
if game:GetService("Workspace").NPCBees:WaitForChild('Windy', 0.02) then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").NPCBees:WaitForChild('Windy', 5).Position)
end
end
end
game:GetService("UserInputService").InputBegan:connect(onInputBegan)
-------------------------------------------------------------------------------------------------------------------
wait(1)

-- A U T O F A R M
getgenv().FieldChange = false


CreateToggle(tabs['AutoFarm'], "AutoFarm", "Collects and sells the pollen when you are full",function()
if not getgenv().AutoFarm then
getgenv().AutoFarm = true
local radiusSell = 15
local distanceSell = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.SpawnPos.Value.p).Magnitude
local Walking = false
local Reached = false
if getgenv().AutoFarm then
while getgenv().AutoFarm do
if not getgenv().AutoFarm then
    break
end
if not getgenv().Hunt then

------------------------------------------------------------------------
--#TokenVariables/AutoSell


local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")

------------------------------------------------------------------------
--#AutoHoney
if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value >= game:GetService("Players").LocalPlayer.CoreStats.Capacity.Value/1.03 then
    getgenv().Selling = true
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
    wait(0.3)
    local args = {[1] = "ToggleHoneyMaking"}
    game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(unpack(args))
if not getgenv().MakingHoney then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
    getgenv().MakingHoney = true
    wait()
end
while getgenv().MakingHoney do
    if not getgenv().AutoFarm then
        break
    end
    if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value <= 0 then
        wait(10)
        getgenv().Selling = false
        getgenv().MakingHoney = false
        break
    end
    if (distanceSell >= radiusSell) then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(unpack(args))
    end
wait(1)
end
end
------------------------------------------------------------------------
--#FieldTeleport
if getgenv().LastField == "nil" or nil and not getgenv().Selling then
elseif getgenv().LastField ~= nil and not getgenv().Selling then
local goal = {}
goal.CFrame = getgenv().LastField.CFrame + Vector3.new(0, 5, 0)
local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
local FieldTween = TweenService:Create(game.Players.LocalPlayer.Character.Humanoid.RootPart, tweenInfo, goal)
Area = (getgenv().LastField.Size.x + getgenv().LastField.Size.z) / 4
Distance = (game.Players.LocalPlayer.Character.Humanoid.RootPart.Position - getgenv().LastField.Position).Magnitude
if (Distance >= Area) then
    FieldTween:Play()
end
end
------------------------------------------------------------------------
--#Token Collector
for i,v in pairs(game.Workspace.Collectibles:GetChildren()) do
local radius = 55 or Area
local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
    if v and not getgenv().Selling and (distance <= radius) then
    if v:WaitForChild("FrontDecal", 0.02) then
        if v.FrontDecal.Texture == "rbxassetid://6087969886" then
            v.Locked = true
        end
        if v.FrontDecal.Texture == "rbxassetid://1629547638" and not v.Locked and not getgenv().Raining then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
            v.Locked = true
        end
    end
	if(distance <= radius) then
    game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Connect(function()
            Reached = true
    end)
        if not Walking then
            Reached = false
            if not Reached and not v.Locked then
            game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.Position, v)
end
end
    elseif not v then
end
end
wait(0.1)
end
wait(0.06)
end
wait(0.1)
end
end
elseif getgenv().AutoFarm then
    getgenv().AutoFarm = false
end
end)

CreateToggle(tabs['AutoFarm'], "AutoTool", "AutoCollects Pollen with your tool",function()
    if not getgenv().AutoToolIn then
    getgenv().AutoToolIn = true
    if getgenv().AutoToolIn then
        while true do
            if not getgenv().AutoToolIn then
                break
            end
local pollenTool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
if pollenTool==nil or pollenTool:FindFirstChild("ClickEvent")==nil then
end
            pollenTool.ClickEvent:FireServer()
            wait(0.45)
        end
    end
    elseif getgenv().AutoToolIn then
        getgenv().AutoToolIn = false
end
end)

CreateTextBox(tabs['AutoFarm'], "Select Field", "Select the field you want to farm on",function()
    wait()
end)


CreateToggle(tabs['AutoFarm'], "Coconut Catcher", "Catches the falling coconuts",function()
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
    wait(0.06)
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

CreateSideDropButton(tabs['AutoFarm'], "Find Windy/Vicious", {"Vicious Bee","Windy Bee", "Disable"},function(arg)
------#Disable
if arg == "Disable" then
getgenv().AutoMiniBoss = false
getgenv().Hunt = false
getgenv().WSended = false
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.47
end
------#Windy Bee
if arg == "Windy Bee" then
local CoreGui = game:GetService("StarterGui")
local Notification = {
	    Title = "Windy Bee Spawned!",
	    Text = string.format("Press %s to teleport", string.sub(tostring(Setting.Bind2), 14)),
	    Duration = 30,
	    Button1 = "ligma"
}
local NotificationW = {
	    Title = "Windy Bee Enabled",
	    Text = string.format("You will be notified if there's a Wild Windy Bee", string.sub(tostring(Setting.Bind2), 14)),
	    Duration = 30,
	    Button1 = "yes my lord..."
}
if not getgenv().WSended then
CoreGui:SetCore("SendNotification", NotificationW)
getgenv().WSended = true
getgenv().AutoMiniBoss = true
while getgenv().AutoMiniBoss do
if not getgenv().AutoMiniBoss then
    break
end
local windyenabled = true
if windyenabled then
windyenabled = false
if not getgenv().AutoMiniBoss then
break
end
if game:GetService("Workspace").NPCBees:WaitForChild('Windy', 5) then
CoreGui:SetCore("SendNotification", Notification)
print("Windy Spawned!")
repeat wait(5)
until not game:GetService("Workspace").NPCBees:WaitForChild('Windy', 5)
wait()
end
if not game:GetService("Workspace").NPCBees:WaitForChild('Windy', 5) then
    wait()
end
end
wait(5)
windyenabled = true
end
end
end
------#Vicious Bee
if arg == "Vicious Bee" then
getgenv().AutoMiniBoss = false
wait(0.1)
getgenv().AutoMiniBoss = true
while getgenv().AutoMiniBoss do
if not getgenv().AutoMiniBoss then
break
end
if game:GetService("Workspace").Particles:WaitForChild('Vicious', 1) then
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 14
    repeat wait(1)
    if getgenv().AutoMiniBoss then
        if game:GetService("Workspace").Particles:WaitForChild('Vicious', 1) then
        getgenv().Hunt = true
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Particles:WaitForChild('Vicious', 1).Position)
        else
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.47
            getgenv().Hunt = false
        end
    end
    until not getgenv().AutoMiniBoss
else
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.47
end
wait()
end
end
end)


-------------------------------------------------------------------------------------------------------------------
-- D I S P E N S E R S

CreateToggle(tabs['Auto Machines'], "AutoDispensers", "Autocollects the dispensers",function(bool)
        if not getgenv().DispensersIn then
        getgenv().DispensersIn = true
        local CoreGui = game:GetService("StarterGui")
        local bindable = Instance.new("BindableFunction")
        CoreGui:SetCore("SendNotification",{
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
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e1))
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
    if EssentianEnabled == false then
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e1))
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
	getgenv().SnailIn = true
    if game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.01) then
        if game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 2.01).Target.Value ~= Character then
        game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 0.01).Name = 'Stump Snail (Lvl 7)'
    end
    end
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
	wait()
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

    elseif not game:GetService("Workspace").Monsters:WaitForChild("Stump Snail (Lvl 6)", 1.15) then
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
    if game.Players.LocalPlayer.Character:WaitForChild('Humanoid', 4) then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
    else
        game.Players.LocalPlayer.Character:WaitForChild('Humanoid', 4)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
    end
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

CreateLabel(tabs['Extras'], "Notes:", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "if you are still using", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "this gui, for whatever", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "reason... i really", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "appreciate it...", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "Simple Swarm Version:", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "1.8.4(Stable)", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "Use other autofarm", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "mine is broken ;c", Color3.fromRGB(255,255,255))
CreateTextBox(tabs['Extras'], "GUI Keybind", "Set Keybind",function(arg)
end)
CreateTextBox(tabs['Extras'], "Windy Keybind", "Set Keybind",function(arg)
end)
-------------------------------------------------------------------------------------------------------------------


-- E X T R A  F U N C T I O N S
game:GetService("CoreGui")["Simple Swarm"].Top.Container["Player Toggles"].TabContainer:WaitForChild("Set Walkspeed", 0.3)
local textbox = game:GetService("CoreGui")["Simple Swarm"].Top.Container["Player Toggles"].TabContainer["Set Walkspeed"].Side.Box
local textboxk = game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["GUI Keybind"].Side.Box
local textboxx = game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["Windy Keybind"].Side.Box
local FieldBox = game:GetService("CoreGui")["Simple Swarm"].Top.Container["AutoFarm"].TabContainer["Select Field"].Side.Box


textboxk.Text = string.sub(Setting.Bind, 14)
textboxx.Text = string.sub(Setting.Bind2, 14)
textbox.Changed:connect(function(prop)
    if prop == "Text" then
        if not tonumber(textbox.Text) then
            textbox.Text = textbox.Text:sub(1,#textbox.Text-1)
        end
    end
end)

textboxk.Focused:Connect(function()
    game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["GUI Keybind"].Text = " Press a key"
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
    game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["GUI Keybind"].Text = " GUI Keybind"
end)

textboxx.Focused:Connect(function()
    game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["Windy Keybind"].Text = " Press a key"
	textboxx.TextEditable = false
	local Enabled = true
	wait(0.2)
    UIS.InputBegan:Connect(function(Input , GPE)
    if Enabled == false then
        return
    end
    Setting.Bind2 = tostring(Input.KeyCode)
    SaveSettings()
    textboxx.Text = string.sub(tostring(Input.KeyCode), 14)
    wait()
    Enabled = false
    textboxx:ReleaseFocus()
    end)
end)
textboxx.FocusLost:Connect(function()
    game:GetService("CoreGui")["Simple Swarm"].Top.Container["Extras"].TabContainer["Windy Keybind"].Text = " Windy Keybind"
end)

function FindField()
local text = FieldBox.Text
    for _,v in pairs(f) do
    if tostring(v):sub(1, string.len(text)):lower():gsub("[%s]","") == text:lower():gsub("[%s]","") then
    if text:gsub("[%s]","") == "" or #text == 0 then
    table.remove(fieldslocated, 1)
    wait(0.1)
    table.insert(fieldslocated, 'nil')
    else
    table.remove(fieldslocated, 1)
    wait(0.1)
    table.insert(fieldslocated, v)
end
end
end
end
    for i,v in pairs(fieldslocated) do
        if #fieldslocated == 1 then
end
end

FieldBox.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLost)
    if enterPressed then
    FindField()
    FieldBox.Text = tostring(fieldslocated[1])
    getgenv().LastField = fieldslocated[1]
end
end)
