local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local UI = {}
local ScreenGui
local MainFrame
local TitleBar

function UI:Init(name, Theme)
    ScreenGui = Instance.new("ScreenGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = Players.LocalPlayer.PlayerGui

    MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 420, 0, 300)
    MainFrame.Position = UDim2.new(0.5, -210, 0.5, -150)
    MainFrame.BackgroundColor3 = Theme.Primary
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = ScreenGui

    TitleBar = Instance.new("TextLabel")
    TitleBar.Size = UDim2.new(1, 0, 0, 35)
    TitleBar.BackgroundColor3 = Theme.Secondary
    TitleBar.Text = name
    TitleBar.TextColor3 = Theme.Neon
    TitleBar.Font = Enum.Font.GothamBold
    TitleBar.TextSize = 18
    TitleBar.Parent = MainFrame

    local glow = Instance.new("UIStroke")
    glow.Thickness = 2
    glow.Color = Theme.Neon
    glow.Parent = MainFrame

    local tweenIn = TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
        Size = UDim2.new(0, 420, 0, 300),
        BackgroundTransparency = 0
    })
    tweenIn:Play()
end

function UI:GetMain()
    return MainFrame
end

return UI