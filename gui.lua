local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ScreenGui Setup
local gui = Instance.new("ScreenGui")
gui.Name = "PulsarXGui"
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

-- Main Frame (Draggable)
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 600, 0, 400)
mainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = gui
mainFrame.Active = true
mainFrame.Draggable = true

local corner = Instance.new("UICorner", mainFrame)
corner.CornerRadius = UDim.new(0, 6)

-- Sidebar
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 140, 1, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
sidebar.BorderSizePixel = 0
sidebar.Parent = mainFrame

local sidebarCorner = Instance.new("UICorner", sidebar)
sidebarCorner.CornerRadius = UDim.new(0, 6)

-- TopBar
local topbar = Instance.new("Frame")
topbar.Size = UDim2.new(1, -140, 0, 30)
topbar.Position = UDim2.new(0, 140, 0, 0)
topbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
topbar.BorderSizePixel = 0
topbar.Parent = mainFrame

local topCorner = Instance.new("UICorner", topbar)
topCorner.CornerRadius = UDim.new(0, 6)

local title = Instance.new("TextLabel")
title.Text = "Player Tab"
title.Size = UDim2.new(1, 0, 1, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansSemibold
title.TextSize = 16
title.Parent = topbar

-- Content Frame
local content = Instance.new("Frame")
content.Size = UDim2.new(1, -140, 1, -30)
content.Position = UDim2.new(0, 140, 0, 30)
content.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
content.BorderSizePixel = 0
content.Parent = mainFrame

local contentCorner = Instance.new("UICorner", content)
contentCorner.CornerRadius = UDim.new(0, 6)

-- Sidebar Tabs
local tabLayout = Instance.new("UIListLayout", sidebar)
tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
tabLayout.Padding = UDim.new(0, 5)

local function createTab(name)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 30)
    button.Position = UDim2.new(0, 5, 0, 0)
    button.Text = name
    button.Font = Enum.Font.SourceSans
    button.TextSize = 14
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    button.BorderSizePixel = 0
    button.Parent = sidebar

    local btnCorner = Instance.new("UICorner", button)
    btnCorner.CornerRadius = UDim.new(0, 4)
end

-- Example Tabs
createTab("Player Tab")
createTab("Steal Tab")
createTab("Buy Tab")
createTab("Server Hop")
createTab("ESP Tab")

