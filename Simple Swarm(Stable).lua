--A very sexy lib made by https://v3rmillion.net/member.php?action=profile&uid=1379221
--Here's the release thread https://v3rmillion.net/showthread.php?tid=1066917

-------------------------------------------------------------------------------------------------------------------
--Global Variables
getgenv().Raining = false
getgenv().Killing = false



--Local Variables
LocalPlayer = game.Players.LocalPlayer
Players = game.Players
Character = LocalPlayer.Character
local GC = getconnections or get_signal_cons
local AlertMondo = game.workspace
local ContextActionService = game:GetService("ContextActionService")
local FreezeAc = "freezeMovement"
local EnabledDispensers = true 
local FieldEnabled = true
local EssentialEnabled = true
local Collectibles = game.Workspace.Collectibles
Collectibles:ClearAllChildren()

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

                                local t = {
                    "rbxassetid://2306224708", --Mooncharm
                    "rbxassetid://2545746569", --Oil
                    "rbxassetid://1674686518", --Ticket
                    "rbxassetid://1674871631", --Ticket
                    "rbxassetid://2504978518", --Glue
                    "rbxassetid://2584584968", --Enzymes
                    "rbxassetid://1629547638", --Token link
                    "rbxassetid://2319943273", --Starjelly
                    "rbxassetid://2000457501", --Inspire Token
                    "rbxassetid://177997841",  --Glob Token
                    "rbxassetid://1839454544"  -- Gumdrop Barrage
}

--UI Library
loadstring(game:HttpGet("https://raw.githubusercontent.com/DivineEntity01/BSS-01/main/Rodus%20%7C%20UI-Library", true))()
if game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
wait()
elseif not game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
CreateMain("Simple Swarm")
CreateTab("Machines Tab")
CreateTab("Bosses Tab")
CreateTab("Extras")
end


-------------------------------------------------------------------------------------------------------------------
-- D I S P E N S E R S

CreateToggle(tabs['Machines Tab'], "AutoDispensers", "Autocollects the dispensers",function(bool)
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
print('what')
end
elseif getgenv().DispensersIn then
    getgenv().DispensersIn = false
    EnabledDispensers = true
end
end)
CreateToggle(tabs['Machines Tab'], "Auto Boosters", "Activates the boosters automatically",function()
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
CreateToggle(tabs['Machines Tab'], "Essential Dispensers", "Do not recommend, doesn't collect the tokens from manual dispensers",function()
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
    EssentianEnabled = true
end
end
    elseif getgenv().EssentialDispensersIn then
        getgenv().EssentialDispensersIn = false
    end
end)


-------------------------------------------------------------------------------------------------------------------
-- B O S S E S 

CreateToggle(tabs['Bosses Tab'], "Coconut Crab", "Turn on to kill the Crab",function()
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
        game:GetService("CoreGui")["Simple Swarm"].Top.Container["Bosses Tab"].TabContainer["Coconut Crab"].TextColor3 = Color3.new(255, 255, 255)
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


CreateToggle(tabs['Bosses Tab'], "Stump Snail", "Turn on to kill the Snail",function()
    if not getgenv().SnailIn then
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
            game:GetService("CoreGui")["Simple Swarm"].Top.Container["Bosses Tab"].TabContainer["Stump Snail"].TextColor3 = Color3.new(255, 255, 255)
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


CreateToggle(tabs['Bosses Tab'], "Mondo Chick", "Turn on to kill the Mondo Chick",function()
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
        game:GetService("CoreGui")["Simple Swarm"].Top.Container["Bosses Tab"].TabContainer["Mondo Chick"].TextColor3 = Color3.new(255, 255, 255)
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
--E X T R A S 

CreateLabel(tabs['Extras'], "Notes", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "I recommend having a bee", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "with the token link ability!", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "Simple Swarm Version:", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "0.5.8(Stable)", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "Stable Version, a few bugs", Color3.fromRGB(255,255,255))
CreateLabel(tabs['Extras'], "might be present, just a few", Color3.fromRGB(255,255,255))
CreateToggle(tabs['Extras'], ">> Star Catcher", "Catches the falling lights(Needs to complete the science bear beesmas quest)",function()
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
CreateToggle(tabs['Extras'], ">> TP to rares", "Teleport to rare tokens, useful!",function()
    if not getgenv().RareTpIn then
    getgenv().RareTpIn = true
    while true do 
    local RareEnabled = true
    if RareEnabled == true and getgenv().Raining == false and getgenv().Killing == false then
    RareEnabled = false
    for i,v in ipairs(game.Workspace.Collectibles:GetChildren()) do
    local Decal = v:WaitForChild('FrontDecal').Texture
    if table.find(t, Decal) and v.Transparency <= 0.15 then
    local radius = 50
    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
	if(distance <= radius) then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
    end
    end
    end
    if getgenv().RareTpIn == false then
    RareEnabled = true
    break
    end
    wait(3)
    RareEnabled = true
    end
    elseif getgenv().RareTpIn then
    getgenv().RareTpIn = false
end
end)



-------------------------------------------------------------------------------------------------------------------


