local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Example Function: Fire Effect on Player Touch
function ignitePlayer(target)
    if target and target:FindFirstChild("Humanoid") then
        local fire = Instance.new("Fire")
        fire.Parent = target.HumanoidRootPart
        fire.Size = 10
        fire.Heat = 25
        fire.Color = Color3.fromRGB(255, 0, 0)
    end
end

-- Connecting Function to Player Touch Event
LocalPlayer.CharacterAdded:Connect(function(character)
    local touchPart = Instance.new("Part")
    touchPart.Size = Vector3.new(5, 5, 5)
    touchPart.Transparency = 1
    touchPart.Parent = character
    touchPart.Touched:Connect(function(hit)
        ignitePlayer(hit.Parent)
    end)
end)

print("🔥 Script Loaded: Fire Effect Enabled 🔥")
