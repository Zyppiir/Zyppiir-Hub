-- Zyppiir HUB Main

local Theme = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/theme.lua"))()
local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/UI.lua"))()
local Tabs = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/Tabs.lua"))()
local Actions = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/Actions.lua"))()
local KeySystem = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyppiir/Zyppiir-Hub/main/modules/KeySystem.lua"))()

if KeySystem.Enabled then
    KeySystem:Start()
else
    local mainFrame, pages = UI:Init("Zyppiir HUB", Theme)
    Tabs:Create(mainFrame, pages)
    Actions:Register(Tabs, Theme)
end