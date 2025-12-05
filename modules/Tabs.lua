local Tabs = {}

local TabButtons = {}
local TabPages = {}

function Tabs:Create(UI)
    local main = UI:GetMain()

    local SideBar = Instance.new("Frame")
    SideBar.Size = UDim2.new(0, 120, 1, -35)
    SideBar.Position = UDim2.new(0, 0, 0, 35)
    SideBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    SideBar.Parent = main

    local Pages = Instance.new("Frame")
    Pages.Size = UDim2.new(1, -120, 1, -35)
    Pages.Position = UDim2.new(0, 120, 0, 35)
    Pages.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Pages.Parent = main

    function self:AddTab(name)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, 0, 0, 40)
        btn.Text = name
        btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Parent = SideBar

        local page = Instance.new("ScrollingFrame")
        page.Size = UDim2.new(1, 0, 1, 0)
        page.Visible = false
        page.ScrollBarThickness = 4
        page.BackgroundTransparency = 1
        page.Parent = Pages

        TabButtons[btn] = page

        btn.MouseButton1Click:Connect(function()
            for _, p in pairs(TabButtons) do p.Visible = false end
            page.Visible = true
        end)

        return page
    end

    return self
end

return Tabs