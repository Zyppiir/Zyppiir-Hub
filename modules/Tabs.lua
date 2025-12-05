local Tabs = {}
local TweenService = game:GetService("TweenService")

function Tabs:Create(mainFrame, pages)
    local SideBar = Instance.new("Frame")
    SideBar.Size = UDim2.new(0, 200, 1, 0)
    SideBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    SideBar.Parent = mainFrame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = SideBar

    local function makeCollapseSection(name)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, 0, 0, 45)
        btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 18
        btn.Text = name .. "  ▼"
        btn.Parent = SideBar

        local list = Instance.new("Frame")
        list.Size = UDim2.new(1, 0, 0, 0)
        list.BackgroundTransparency = 1
        list.ClipsDescendants = true
        list.Parent = SideBar

        local UIList = Instance.new("UIListLayout")
        UIList.Parent = list
        UIList.FillDirection = Enum.FillDirection.Vertical
        UIList.SortOrder = Enum.SortOrder.LayoutOrder

        local expanded = false

        btn.MouseButton1Click:Connect(function()
            expanded = not expanded
            btn.Text = name .. (expanded and "  ▲" or "  ▼")

            local targetSize = expanded and UDim2.new(1, 0, 0, #list:GetChildren() * 40) or UDim2.new(1, 0, 0, 0)

            TweenService:Create(list, TweenInfo.new(0.25), {Size = targetSize}):Play()
        end)

        return list
    end

    local mainList = makeCollapseSection("Main")
    local settingsList = makeCollapseSection("Settings")

    function self:AddTab(name, category)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, -10, 0, 40)
        btn.Position = UDim2.new(0, 5, 0, 0)
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamSemibold
        btn.TextSize = 16
        btn.Text = name
        btn.Parent = category == "Main" and mainList or settingsList

        local page = Instance.new("Frame")
        page.Size = UDim2.new(1, 0, 1, 0)
        page.BackgroundTransparency = 1
        page.Visible = false
        page.Parent = pages

        btn.MouseButton1Click:Connect(function()
            for _, child in ipairs(pages:GetChildren()) do
                child.Visible = false
            end
            page.Visible = true
        end)

        return page
    end

    return self
end

return Tabs