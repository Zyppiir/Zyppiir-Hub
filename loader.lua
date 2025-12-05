-- Zyppiir HUB Auto Loader v0.0.1
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

-- URL onde seu Main.lua está hospedado
local url = "https://seu-servidor.com/ZyppiirHub/Main.lua"

-- Função para timestamp formatado
local function getTimestamp()
    local t = os.date("*t")
    return string.format("[%02d:%02d:%02d]", t.hour, t.min, t.sec)
end

local function log(msg)
    print(getTimestamp() .. " [ZYPPIIR LOADER v0.0.1] " .. msg)
end

-- Informações do jogo
local placeId = game.PlaceId
local gameName = MarketplaceService:GetProductInfo(placeId).Name

log("Current Place ID: " .. placeId)
log("Game Detected: " .. gameName)

log("Carregando script em 2 segundos...")
task.wait(2)

log("Carregando script...")

local success, result = pcall(function()
    return loadstring(game:HttpGet(url))()
end)

if success then
    log("Script carregado com sucesso!")
    log("Iniciando webhook logging...")
else
    warn(getTimestamp() .. " [ZYPPIIR LOADER v0.0.1] Falha ao carregar script: " .. tostring(result))
end