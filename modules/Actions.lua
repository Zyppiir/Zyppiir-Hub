local TweenService = game:GetService("TweenService")
local Actions = {}

function Actions:Register(Tabs, Theme)

    -- MAIN → Changelog
    local main_changelog = Tabs:AddTab("Changelog", "Main")

    local box = Instance.new("Frame")
    box.Size = UDim2.new(0, 450, 0, 120)
    box.Position = UDim2.new(0, 10, 0, 10)
    box.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    box.Parent = main_changelog

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = box

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Text = "Zyppiir HUB - Changelog"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1
    title.Font = Enum.Font.GothamBold
    title.TextSize = 20
    title.Parent = box

    local content = Instance.new("TextLabel")
    content.Size = UDim2.new(1, -20, 1, -30)
    content.Position = UDim2.new(0, 10, 0, 30)
    content.TextXAlignment = Enum.TextXAlignment.Left
    content.TextYAlignment = Enum.TextYAlignment.Top
    content.Font = Enum.Font.Gotham
    content.TextSize = 15
    content.TextColor3 = Color3.fromRGB(200, 200, 200)
    content.TextWrapped = true
    content.Text = "- Zyppiir HUB v0.0.1\n- Novo design UI\n- Suporte a temas\n- Seletor de tema adicionado\n- Sistema de abas recolhíveis"
    content.Parent = box

    local expand = Instance.new("TextButton")
    expand.Size = UDim2.new(0, 120, 0, 30)
    expand.Position = UDim2.new(1, -130, 1, -40)
    expand.Text = "Mostrar mais"
    expand.Font = Enum.Font.GothamBold
    expand.TextSize = 14
    expand.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    expand.TextColor3 = Color3.fromRGB(255, 255, 255)
    expand.Parent = box

    local exp = false

    expand.MouseButton1Click:Connect(function()
        exp = not exp
        TweenService:Create(box, TweenInfo.new(0.25), {
            Size = exp and UDim2.new(0, 450, 0, 230) or UDim2.new(0, 450, 0, 120)
        }):Play()
        expand.Text = exp and "Mostrar menos" or "Mostrar mais"
    end)

    -- MAIN → Auto Farm
    Tabs:AddTab("Auto Farm", "Main")

    -- MAIN → Auto Roll
    Tabs:AddTab("Auto Roll", "Main")

    -- MAIN → Player
    Tabs:AddTab("Player", "Main")

    -- SETTINGS → Misc (Theme Selector)
    local misc = Tabs:AddTab("Misc", "Settings")

    local ruby = Instance.new("TextButton")
    ruby.Size = UDim2.new(0, 200, 0, 40)
    ruby.Position = UDim2.new(0, 10, 0, 20)
    ruby.Text = "Tema Ruby"
    ruby.TextColor3 = Color3.fromRGB(255, 255, 255)
    ruby.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
    ruby.Font = Enum.Font.GothamSemibold
    ruby.TextSize = 18
    ruby.Parent = misc

    local saphire = Instance.new("TextButton")
    saphire.Size = UDim2.new(0, 200, 0, 40)
    saphire.Position = UDim2.new(0, 10, 0, 70)
    saphire.Text = "Tema Saphire"
    saphire.TextColor3 = Color3.fromRGB(255, 255, 255)
    saphire.BackgroundColor3 = Color3.fromRGB(0, 0, 100)
    saphire.Font = Enum.Font.GothamSemibold
    saphire.TextSize = 18
    saphire.Parent = misc

    local function apply(t)
        Theme.Selected = t
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/main.lua"))()
    end

    ruby.MouseButton1Click:Connect(function() apply("Ruby") end)
    saphire.MouseButton1Click:Connect(function() apply("Saphire") end)
end

return Actions