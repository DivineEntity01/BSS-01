--A very sexy lib made by https://v3rmillion.net/member.php?action=profile&uid=1379221
--Here's the release thread https://v3rmillion.net/showthread.php?tid=1066917

-------------------------------------------------------------------------------------------------------------------

--Local Variables
LocalPlayer = game.Players.LocalPlayer
Players = game.Players
Character = LocalPlayer.Character
local GC = getconnections or get_signal_cons
local AlertMondo = game.workspace

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

local EnabledDispensers = game.workspace:WaitForChild('Values', 0.07)
EnabledDispensers = EnabledDispensers.bool.Value
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

--UI Library
loadstring(game:HttpGet("https://raw.githubusercontent.com/DivineEntity01/BSS-01/main/Rodus%20%7C%20UI-Library", true))()
if game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
wait()
elseif not game:GetService('CoreGui'):WaitForChild('Simple Swarm', 0.08) then
CreateMain("Simple Swarm")
CreateTab("Machines Tab")
--CreateTab("Bosses Tab")
CreateTab("Extras")
end


-------------------------------------------------------------------------------------------------------------------
-- D I S P E N S E R S

CreateToggle(tabs['Machines Tab'], "AutoDispensers", "Autocollects the dispensers",function(bool)
        if not getgenv().DispensersIn then
        local CoreGui = game:GetService("StarterGui")
        local bindable = Instance.new("BindableFunction")
        function bindable.OnInvoke(response)
        game.Workspace.Values.alertdispenser.Value = true
        end
        CoreGui:SetCore("SendNotification", {
	    Title = "AutoDispensers Enabled",
	    Text = "AutoDispenser is enabled, may cause lag once it autocollects em",
	    Duration = 30,
	    Callback = bindable,
	    Button1 = "Yeah"
        })  
            getgenv().DispensersIn = true
        elseif getgenv().DispensersIn then
            getgenv().DispensersIn = false
    end
end)
CreateToggle(tabs['Machines Tab'], "Auto Boosters", "Activates the boosters automatically",function()
    if not getgenv().FieldBoosterIn then
        getgenv().FieldBoosterIn = true
    elseif getgenv().FieldBoosterIn then
        getgenv().FieldBoosterIn = false
end
end)
CreateToggle(tabs['Machines Tab'], "Essential Dispensers", "Do not recommend, doesn't collect the tokens from manual dispensers",function()
        if not getgenv().EssentialDispensersIn then
        getgenv().EssentialDispensersIn = true
    elseif getgenv().EssentialDispensersIn then
        getgenv().EssentialDispensersIn = false
    end
end)

--E X T R A S 

CreateLabel(tabs['Extras'], "Notes", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "You need to manually pick", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "the boss tokens", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "Simple Swarm Version:", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "0.2.6(Stable)", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "Stable Version, some", Color3.fromRGB(0,255,0))
CreateLabel(tabs['Extras'], "bugs might be present", Color3.fromRGB(0,255,0))
CreateToggle(tabs['Extras'], "Star Catcher", "Catches the falling lights(Needs to complete the science bear beesmas quest)",function()
    if not getgenv().StarCatchIn then
        getgenv().StarCatchIn = true
    elseif getgenv().StarCatchIn then
        getgenv().StarCatchIn = false
    end
end)






-------------------------------------------------------------------------------------------------------------------


while wait() do
local Cooldown = false
if Cooldown == false then
    if getgenv().DispensersIn == true then
    while true do
    local EnabledDispensers = true 
    if EnabledDispensers == true then
        EnabledDispensers = false
    if game.Players.LocalPlayer:IsInGroup(3982592) and getgenv().DispensersIn == true then
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
elseif not game.Players.LocalPlayer:IsInGroup(3982592) and getgenv().DispensersIn == true then
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
end
if getgenv().DispensersIn == false then
    break
end
print('Claimed')
wait(900)
EnabledDispensers = true
end
end
    if getgenv().EssentialDispensersIn == true then
    while true do
    local EssentianEnabled = false
    if EssentianEnabled == false and getgenv().EssentialDispensersIn then
    EssentianEnabled = true
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e1))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e2))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e3))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(e4))
    end
    if getgenv().EssentialDispensersIn == false then
        break
    end
    wait(1200)
    EssentianEnabled = false
end
end
    if getgenv().FieldBoosterIn == true then
    while true do
    local FieldEnabled = false
    if EssentianEnabled == false and getgenv().FieldBoosterIn then 
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(f1))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(f2))
    game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(f3))
    if getgenv().EssentialDispensersIn == false then
        break
    end
    wait(600)
    EssentianEnabled = false
    end
end
end
    if getgenv().StarCatchIn == true then
        while true do
        local StarEnabled = false
        if StarEnabled == false then
        StarEnabled = true
    if game.workspace.Particles:WaitForChild('WarningDisk', 0.05) then
    if game.Workspace.Particles:WaitForChild('WarningDisk', 0.03).BrickColor.Name == "Lime green" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Particles:WaitForChild('WarningDisk', 0.03).Position)
    elseif not game.Workspace.Particles:WaitForChild('WarningDisk', 0.05) then
    game.Workspace.Particles:WaitForChild('WarningDisk', 0.07)
    end
end
if not getgenv().StarCatchIn then
    StarEnabled = false
    break
end
end
wait(0.22)
StarEnabled = false
end
end
end
wait(0.6)
Cooldown = true
end
