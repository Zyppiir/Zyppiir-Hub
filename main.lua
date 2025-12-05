-- Zyppiir HUB Main
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Módulos
local Theme = loadstring(game:HttpGet("https://seu-servidor.com/ZyppiirHub/Modules/Theme.lua"))()
local UI = loadstring(game:HttpGet("https://seu-servidor.com/ZyppiirHub/Modules/UI.lua"))()
local Tabs = loadstring(game:HttpGet("https://seu-servidor.com/ZyppiirHub/Modules/Tabs.lua"))()
local Actions = loadstring(game:HttpGet("https://seu-servidor.com/ZyppiirHub/Modules/Actions.lua"))()
local KeySystem = loadstring(game:HttpGet("https://seu-servidor.com/ZyppiirHub/Modules/KeySystem.lua"))()

-- Key system (DESATIVADO)
if KeySystem.Enabled then
    KeySystem:Start()
else
    UI:Init("Zyppiir HUB", Theme)
    Tabs:Create(UI)
    Actions:Register(Tabs)
end