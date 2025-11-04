-- ✅ Key System Loader (Mobile / Delta Compatible)

local key = "1"

-- Function: Safe GUI parent
local function getGuiParent()
    local ok, ui = pcall(function()
        return gethui() -- exploit UI
    end)
    if ok and ui then return ui end

    local player = game.Players.LocalPlayer
    if player:FindFirstChild("PlayerGui") then
        return player.PlayerGui
    end

    return game.CoreGui
end

local parentGui = getGuiParent()

-- UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BBH_KeyUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = parentGui

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0,250,0,150)
Frame.Position = UDim2.new(0.5,-125,0.5,-75)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0,6)

local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(0,200,0,40)
TextBox.Position = UDim2.new(0.5,-100,0.2,0)
TextBox.PlaceholderText = "Enter Key"
TextBox.Text = ""
TextBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
TextBox.TextColor3 = Color3.fromRGB(255,255,255)
TextBox.TextScaled = true

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(0,200,0,40)
Button.Position = UDim2.new(0.5,-100,0.6,0)
Button.Text = "Submit Key"
Button.BackgroundColor3 = Color3.fromRGB(0,120,255)
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.TextScaled = true

local UICorner2 = Instance.new("UICorner", Button)
UICorner2.CornerRadius = UDim.new(0,6)

Button.MouseButton1Click:Connect(function()
    if TextBox.Text == key then
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CGGPMS/BattleBrick2Hub/main/Hub.lua"))()
    else
        game.Players.LocalPlayer:Kick("❌ Wrong Key!")
    end
end)
