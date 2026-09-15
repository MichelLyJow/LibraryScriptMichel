local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Michel Script",
    SubTitle = "@michellyjowv",
    TabWidth = 130,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = false,
    Theme = "Light",
    MinimizeKey = Enum.KeyCode.LeftControl
})

Fluent:SetTheme({
    Background = Color3.fromRGB(20, 20, 20),
    Secondary = Color3.fromRGB(30, 30, 30),
    Accent = Color3.fromRGB(255, 255, 255),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(180, 180, 180)
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" })
}

local function CloseAllGUI()
    if game:GetService("CoreGui"):FindFirstChild("FluentToggleGui") then
        game:GetService("CoreGui").FluentToggleGui:Destroy()
    end
    Fluent:Destroy()
end

Tabs.Main:AddButton({
    Title = "Michel universal",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MichelLyJow/Michel-script-/refs/heads/main/Script.lua'))()
    end
})

Tabs.Main:AddButton({
    Title = "Michel x Fire a Lucky Block",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://pastefy.app/xSe81Fmr/raw'))()
    end
})

Tabs.Main:AddButton({
    Title = "Michel x +1 Strength to Grow Your Arm",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://pastefy.app/ULWzrmK9/raw'))()
    end
})

Tabs.Main:AddButton({
    Title = "Michel x Ride A Pet",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://pastefy.app/OnFEFN9t/raw'))()
    end
})

if game:GetService("CoreGui"):FindFirstChild("FluentToggleGui") then
    game:GetService("CoreGui").FluentToggleGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
local ToggleBtn = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

if syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
elseif protectgui then
    protectgui(ScreenGui)
end

ScreenGui.Name = "FluentToggleGui"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

ToggleBtn.Name = "ToggleButton"
ToggleBtn.Parent = ScreenGui
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BackgroundTransparency = 0.5
ToggleBtn.Position = UDim2.new(0, 15, 0.4, 0)
ToggleBtn.Size = UDim2.new(0, 45, 0, 45)
ToggleBtn.Image = "rbxthumb://type=Asset&id=102030546943731&w=420&h=420"
ToggleBtn.Active = true
ToggleBtn.Draggable = true

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = ToggleBtn

ToggleBtn.MouseButton1Click:Connect(function()
    pcall(function()
        Window:Minimize()
    end)
end)
