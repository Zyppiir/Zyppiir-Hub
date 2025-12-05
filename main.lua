-- Zyppiir HUB Main
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Módulos
local Theme = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/theme.lua"))()
local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/UI.lua"))()
local Tabs = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/Tabs.lua"))()
local Actions = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/Actions.lua"))()
local KeySystem = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/KeySystem.lua"))()

-- Key system (DESATIVADO)
if KeySystem.Enabled then
    KeySystem:Start()
else
    UI:Init("Zyppiir HUB", Theme)
    Tabs:Create(UI)
    Actions:Register(Tabs)
end