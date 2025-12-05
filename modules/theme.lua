local Theme = {}

Theme.List = {
    ["Ruby"] = {
        Primary = Color3.fromRGB(20, 0, 0),
        Secondary = Color3.fromRGB(40, 0, 0),
        Gradient = {
            Color3.fromRGB(120, 0, 0),
            Color3.fromRGB(255, 0, 60)
        },
        Text = Color3.fromRGB(255, 255, 255)
    },

    ["Saphire"] = {
        Primary = Color3.fromRGB(0, 0, 20),
        Secondary = Color3.fromRGB(0, 0, 40),
        Gradient = {
            Color3.fromRGB(0, 80, 255),
            Color3.fromRGB(0, 180, 255)
        },
        Text = Color3.fromRGB(255, 255, 255)
    }
}

Theme.Selected = "Ruby"

function Theme:Get()
    return Theme.List[Theme.Selected]
end

return Theme