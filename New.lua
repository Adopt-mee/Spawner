
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui


local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.Parent = screenGui


local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.1, 0)
title.Position = UDim2.new(0, 0, 0.35, 0)
title.BackgroundTransparency = 1
title.Text = "Adopt-Me Spawner (New)"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.SourceSansBold
title.Parent = background


local loadingBarBG = Instance.new("Frame")
loadingBarBG.Size = UDim2.new(0.4, 0, 0.05, 0)
loadingBarBG.Position = UDim2.new(0.3, 0, 0.5, 0)
loadingBarBG.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
loadingBarBG.Parent = background


local loadingBar = Instance.new("Frame")
loadingBar.Size = UDim2.new(0, 0, 1, 0)
loadingBar.BackgroundColor3 = Color3.new(1, 1, 1)
loadingBar.Parent = loadingBarBG


local percentText = Instance.new("TextLabel")
percentText.Size = UDim2.new(1, 0, 0.05, 0)
percentText.Position = UDim2.new(0, 0, 0.56, 0)
percentText.BackgroundTransparency = 1
percentText.Text = "0%"
percentText.TextColor3 = Color3.new(1, 1, 1)
percentText.TextScaled = true
percentText.Font = Enum.Font.SourceSans
percentText.Parent = background


local cornerText = Instance.new("TextLabel")
cornerText.Size = UDim2.new(0.2, 0, 0.05, 0)
cornerText.Position = UDim2.new(0, 10, 1, -30)
cornerText.BackgroundTransparency = 1
cornerText.Text = "Adopt-Me"
cornerText.TextColor3 = Color3.new(1, 1, 1)
cornerText.TextScaled = true
cornerText.Font = Enum.Font.SourceSansItalic
cornerText.Parent = background


local totalTime = 120
for i = 1, 100 do
    local progress = i / 100
    
    loadingBar:TweenSize(
        UDim2.new(progress, 0, 1, 0),
        "Out",
        "Linear",
        totalTime / 100,
        true
    )
    
    percentText.Text = i .. "%"
    
    wait(totalTime / 100)
end


wait(1)
screenGui:Destroy()
