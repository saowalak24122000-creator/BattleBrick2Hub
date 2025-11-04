local key = "1"
local inputKey = tostring(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui").TextBox.Text)

if inputKey ~= key then
    game.Players.LocalPlayer:Kick("❌ Key Invalid")
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/CGGPMS/BattleBrick2Hub/main/Hub.lua"))()
