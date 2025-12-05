local TweenService = game:GetService("TweenService")
local Actions = {}

function Actions:Register(Tabs, Theme)

    ---------------------------------------------------------
    -- MAIN → Changelog (primeiro item do grupo MAIN)
    ---------------------------------------------------------

    local tabMainChangelog = Tabs:AddTab("Changelog", "Main")

    local box = Instance.new("Frame")
    box.Size = UDim2.new(0, 450, 0, 120)
    box.Position = UDim2.new(0, 10, 0, 10)
    box.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    box.Parent = tabMainChangelog

    Instance.new("UICorner", box).CornerRadius = UDim.new(0,10)

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 30)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.Font = Enum.Font.GothamBold
    title.Text = "Zyppiir HUB - Changelog"
    title.TextSize = 20
    title.Parent = box

    local content = Instance.new("TextLabel")
    content.Size = UDim2.new(1, -20, 1, -30)
    content.Position = UDim2.new(0, 10, 0, 30)
    content.TextXAlignment = Enum.TextXAlignment.Left
    content.TextWrapped = true
    content.TextColor3 = Color3.fromRGB(200,200,200)
    content.Font = Enum.Font.Gotham
    content.TextSize = 15
    content.Text = "- Zyppiir HUB v0.0.1\n- Nova UI\n- Novo sistema de abas\n- Suporte a temas\n- Theme Selector"
    content.Parent = box

    local expand = Instance.new("TextButton")
    expand.Size = UDim2.new(0,120,0,30)
    expand.Position = UDim2.new(1,-130,1,-40)
    expand.Text = "Mostrar mais"
    expand.Font = Enum.Font.GothamBold
    expand.TextColor3 = Color3.fromRGB(255,255,255)
    expand.BackgroundColor3 = Color3.fromRGB(40,40,40)
    expand.Parent = box

    local more = false
    expand.MouseButton1Click:Connect(function()
        more = not more
        TweenService:Create(box, TweenInfo.new(0.25), {
            Size = more and UDim2.new(0,450,0,230) or UDim2.new(0,450,0,120)
        }):Play()
        expand.Text = more and "Mostrar menos" or "Mostrar mais"
    end)



    ---------------------------------------------------------
    -- MAIN → Auto Farm
    ---------------------------------------------------------

    local tabAutoFarm = Tabs:AddTab("Auto Farm", "Main")

    local lblAF = Instance.new("TextLabel")
    lblAF.Size = UDim2.new(1,0,0,40)
    lblAF.Text = "Configurações de Auto Farm"
    lblAF.Font = Enum.Font.GothamBold
    lblAF.TextSize = 20
    lblAF.TextColor3 = Color3.fromRGB(255,255,255)
    lblAF.BackgroundTransparency = 1
    lblAF.Parent = tabAutoFarm



    ---------------------------------------------------------
    -- MAIN → Auto Roll
    ---------------------------------------------------------

    local tabAutoRoll = Tabs:AddTab("Auto Roll", "Main")

    local lblAR = Instance.new("TextLabel")
    lblAR.Size = UDim2.new(1,0,0,40)
    lblAR.Text = "Configurações de Auto Roll"
    lblAR.Font = Enum.Font.GothamBold
    lblAR.TextSize = 20
    lblAR.TextColor3 = Color3.fromRGB(255,255,255)
    lblAR.BackgroundTransparency = 1
    lblAR.Parent = tabAutoRoll



    ---------------------------------------------------------
    -- MAIN → Player
    ---------------------------------------------------------

    local tabPlayer = Tabs:AddTab("Player", "Main")

    local lblP = Instance.new("TextLabel")
    lblP.Size = UDim2.new(1,0,0,40)
    lblP.Text = "Configurações do Player"
    lblP.Font = Enum.Font.GothamBold
    lblP.TextSize = 20
    lblP.TextColor3 = Color3.fromRGB(255,255,255)
    lblP.BackgroundTransparency = 1
    lblP.Parent = tabPlayer



    ---------------------------------------------------------
    -- SETTINGS → Misc (Theme Selector)
    ---------------------------------------------------------

    local tabMisc = Tabs:AddTab("Misc", "Settings")

    local ruby = Instance.new("TextButton")
    ruby.Size = UDim2.new(0,200,0,40)
    ruby.Position = UDim2.new(0,10,0,20)
    ruby.Text = "Tema Ruby"
    ruby.Font = Enum.Font.GothamSemibold
    ruby.TextColor3 = Color3.fromRGB(255,255,255)
    ruby.BackgroundColor3 = Color3.fromRGB(100,0,0)
    ruby.TextSize = 18
    ruby.Parent = tabMisc

    local saphire = Instance.new("TextButton")
    saphire.Size = UDim2.new(0,200,0,40)
    saphire.Position = UDim2.new(0,10,0,70)
    saphire.Text = "Tema Saphire"
    saphire.Font = Enum.Font.GothamSemibold
    saphire.TextColor3 = Color3.fromRGB(255,255,255)
    saphire.BackgroundColor3 = Color3.fromRGB(0,0,100)
    saphire.TextSize = 18
    saphire.Parent = tabMisc

    local function applyTheme(t)
        Theme.Selected = t
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/main.lua"))()
    end

    ruby.MouseButton1Click:Connect(function() applyTheme("Ruby") end)
    saphire.MouseButton1Click:Connect(function() applyTheme("Saphire") end)

end

return Actions