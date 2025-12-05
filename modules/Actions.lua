local Actions = {}

function Actions:Register(Tabs)
    local animeTab = Tabs:AddTab("Anime Advance")

    local autoFarm = Instance.new("TextButton")
    autoFarm.Size = UDim2.new(0, 200, 0, 40)
    autoFarm.Text = "Auto Farm (Exemplo)"
    autoFarm.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    autoFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
    autoFarm.Parent = animeTab

    autoFarm.MouseButton1Click:Connect(function()
        print("Auto Farm ativado (implementar futuramente)")
    end)
end

return Actions