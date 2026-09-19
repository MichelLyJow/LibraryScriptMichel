-- 1. Load library dari GitHub
local MichelUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/MichelLyJow/Michel-Ui/refs/heads/main/MichelUi"))()

-- 2. Buat Window Utama
local Window = MichelUi:CreateWindow({
    Title = "Michel Script x Library",
    Author = "MicheLyJow",
    Icon = "rbxthumb://type=Asset&id=102030546943731&w=420&h=420"
})

-- 3. Bikin Tab "Library"
local LibraryTab = Window:AddTab("Library", { Icon = "rbxassetid://0" })

LibraryTab:AddSection("Game Scripts")

-- 4. Tambahin fungsi Destroy di dalam tombol yang lu mau
LibraryTab:AddButton("Michel x Fire a Lucky Block", function()
    -- Load script utamanya dulu
    loadstring(game:HttpGet('https://pastefy.app/xee7Iw0f/raw'))()
    
    -- UI Library langsung ilang otomatis pas script di atas ke-load
    Window:Destroy() 
end)

LibraryTab:AddButton("Michel x +1 Strength to Grow Your Arm", function()
    loadstring(game:HttpGet('https://pastefy.app/iSmErYrK/raw'))()
    Window:Destroy()
end)

LibraryTab:AddButton("Michel x Ride A Pet", function()
    loadstring(game:HttpGet('https://pastefy.app/t5jqhh5a/raw'))()
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
