local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- DAFATAR THEME
WindUI:AddTheme({
    Name = "Sky",
    Accent = Color3.fromRGB(0, 191, 255),
    Background = Color3.fromRGB(12, 16, 22),
    Outline = Color3.fromRGB(0, 191, 255),
    Text = Color3.fromRGB(245, 245, 245),
    PlaceholderText = Color3.fromRGB(120, 120, 120)
})

-- KELOLA WINDOW
local Window = WindUI:CreateWindow({
    Title = "Michel Script x Library",
    Icon = "rbxthumb://type=Asset&id=102030546943731&w=420&h=420",
    Author = "MicheLyJow",
    Folder = "ProjectHubConfig",
    Size = UDim2.fromOffset(560, 400),
    Transparent = true,
    Theme = "Sky",
    Resizable = true,
    SideBarWidth = 170,
    User = {
        Enabled = true,
        Anonymous = false
    }
})

local Tabs = {
    Main = Window:Tab({ Title = "Main", Icon = "home" })
}

-- FUNGSI MENUTUP GUI SEBELUM LOAD SCRIPT BARU
local function CloseAllGUI()
    if game:GetService("CoreGui"):FindFirstChild("WindUIToggleGui") then
        game:GetService("CoreGui").WindUIToggleGui:Destroy()
    end
    if Window and Window.Destroy then
        Window:Destroy()
    end
end

Tabs.Main:Button({
    Title = "Michel x Fire a Lucky Block",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://pastefy.app/xee7Iw0f/raw'))()
    end
})

Tabs.Main:Button({
    Title = "Michel x +1 Strength to Grow Your Arm",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://pastefy.app/iSmErYrK/raw'))()
    end
})

Tabs.Main:Button({
    Title = "Michel x Ride A Pet",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://pastefy.app/Jf9tB1GB/raw'))()
    end
})

Tabs.Main:Button({
    Title = "Michel x Climb and Drop a Lucky Block",
    Callback = function()
        CloseAllGUI()
        loadstring(game:HttpGet('https://pastefy.app/1DVBWRVr/raw'))()
    end
})

-- FLOATING TOGGLE BUTTON
if game:GetService("CoreGui"):FindFirstChild("WindUIToggleGui") then
    game:GetService("CoreGui").WindUIToggleGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
local ToggleBtn = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

if syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
elseif protectgui then
    protectgui(ScreenGui)
end

ScreenGui.Name = "WindUIToggleGui"
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
    if Window and Window.Toggle then
        Window:Toggle()
    end
end)
