local UI = {}
local Players = game:GetService("Players")

function UI:Init(name, Theme)
    local colors = Theme:Get()

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = Players.LocalPlayer.PlayerGui

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 720, 0, 580)
    MainFrame.Position = UDim2.new(0.5, -360, 0.5, -290)
    MainFrame.BackgroundColor3 = colors.Primary
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = ScreenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 14)
    corner.Parent = MainFrame

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(colors.Gradient[1], colors.Gradient[2])
    gradient.Rotation = 45
    gradient.Parent = MainFrame

    local Pages = Instance.new("Frame")
    Pages.Size = UDim2.new(1, -200, 1, -50)
    Pages.Position = UDim2.new(0, 200, 0, 50)
    Pages.BackgroundTransparency = 1
    Pages.Parent = MainFrame

    return MainFrame, Pages
end

return UI