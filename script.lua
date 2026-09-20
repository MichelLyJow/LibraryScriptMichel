local MichelUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/MichelLyJow/Michel-Ui/refs/heads/main/MichelUi"))()

local Window = MichelUi:CreateWindow({
    Title = "Michel Script x Library",
    Author = "MicheLyJow",
    Icon = "rbxthumb://type=Asset&id=102030546943731&w=420&h=420"
})

local LibraryTab = Window:AddTab("Library", { Icon = "rbxassetid://0" })

LibraryTab:AddSection("Game Scripts")

LibraryTab:AddButton("Michel x Fire a Lucky Block", function()
    loadstring(game:HttpGet('https://pastefy.app/xee7Iw0f/raw'))()
    Window:Destroy() 
end)

LibraryTab:AddButton("Michel x +1 Strength to Grow Your Arm", function()
    loadstring(game:HttpGet('https://pastefy.app/iSmErYrK/raw'))()
    Window:Destroy()
end)

LibraryTab:AddButton("Michel x Ride A Pet", function()
    loadstring(game:HttpGet('https://pastefy.app/lHCrLSck/raw'))()
    Window:Destroy()
end)

LibraryTab:AddButton("Michel x Climb and Drop a Lucky Block", function()
    loadstring(game:HttpGet('https://pastefy.app/1DVBWRVr/raw'))()
    Window:Destroy()
end)

LibraryTab:AddButton("Michel x Kick a Penguin", function()
    loadstring(game:HttpGet('https://pastefy.app/7C3a9CmN/raw'))()
    Window:Destroy()
end)
