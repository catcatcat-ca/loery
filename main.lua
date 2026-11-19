local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Looey's Circus | WindUI",
    Icon = "sparkles",
    Author = "Converted from Looey",
    Folder = "LooeyWindUI",
    Size = UDim2.fromOffset(580, 460),
    Theme = "Dark",
    Transparent = true,
})

-- MAIN TAB
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "home",
})

MainTab:Toggle({
    Title = "Speed",
    Value = false,
    Callback = function(Value)
        print("Speed:", Value)
    end
})

MainTab:Slider({
    Title = "WalkSpeed",
    Value = {
        Min = 16,
        Max = 50,
        Default = 16
    },
    Callback = function(Value)
        print("Speed Value:", Value)
    end
})

MainTab:Toggle({
    Title = "Noclip",
    Value = false,
    Callback = function(Value)
        print("Noclip:", Value)
    end
})

MainTab:Toggle({
    Title = "TP Walk",
    Value = false,
    Callback = function(Value)
        print("TP Walk:", Value)
    end
})

MainTab:Button({
    Title = "Test Button",
    Callback = function()
        WindUI:Notify({
            Title = "Working!",
            Content = "Elements are loading correctly now",
            Duration = 3
        })
    end
})

-- AUTOMATION TAB
local AutoTab = Window:Tab({
    Title = "Automation",
    Icon = "bot",
})

AutoTab:Button({
    Title = "Autofarm",
    Callback = function()
        print("Autofarm clicked")
    end
})

AutoTab:Toggle({
    Title = "Auto Get To Elevator",
    Value = false,
    Callback = function(v) end
})

AutoTab:Toggle({
    Title = "Auto Pick Up Heals",
    Value = false,
    Callback = function(v) end
})

AutoTab:Toggle({
    Title = "Auto Collect Research Capsules",
    Value = false,
    Callback = function(v) end
})

-- ESP TAB
local EspTab = Window:Tab({
    Title = "ESP",
    Icon = "eye",
})

EspTab:Toggle({
    Title = "Twisted ESP",
    Value = false,
    Callback = function(v) end
})

EspTab:Toggle({
    Title = "Player ESP",
    Value = false,
    Callback = function(v) end
})

EspTab:Toggle({
    Title = "Item ESP",
    Value = false,
    Callback = function(v) end
})

-- TELEPORT TAB
local TpTab = Window:Tab({
    Title = "Teleport",
    Icon = "map-pin",
})

TpTab:Button({
    Title = "Teleport To Elevator",
    Callback = function() end
})

TpTab:Button({
    Title = "Teleport To Machine",
    Callback = function() end
})

-- FUN TAB
local FunTab = Window:Tab({
    Title = "Fun",
    Icon = "smile",
})

FunTab:Toggle({
    Title = "Spin",
    Value = false,
    Callback = function(v) end
})

FunTab:Toggle({
    Title = "FOV Changer",
    Value = false,
    Callback = function(v) end
})

FunTab:Button({
    Title = "Kill Yourself",
    Callback = function()
        local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.Health = 0 end
    end
})

WindUI:Notify({
    Title = "Fixed!",
    Content = "Tabs should now have content",
    Duration = 4
})
