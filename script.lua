-- SUBWAY SURFS PANEL

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "SubwaySurfsPanel"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(230, 220)
main.Position = UDim2.new(0.5, -115, 0.5, -110)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
main.Parent = gui

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

local function button(name, text, y, color)
    local b = Instance.new("TextButton")
    b.Name = name
    b.Size = UDim2.fromOffset(190, 42)
    b.Position = UDim2.fromOffset(20, y)
    b.BackgroundColor3 = color
    b.Text = text
    b.TextColor3 = Color3.new(1, 1, 1)
    b.TextSize = 16
    b.Font = Enum.Font.GothamBold
    b.Parent = main
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 8)
    return b
end

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 40)
title.BackgroundTransparency = 1
title.Text = "SUBWAY SURFS"
title.TextColor3 = Color3.fromRGB(0, 255, 120)
title.TextSize = 19
title.Font = Enum.Font.GothamBold
title.Parent = main

local start = button("Start", "COMEÇAR", 55, Color3.fromRGB(180, 40, 40))
local farm = button("Farm", "FARM", 110, Color3.fromRGB(20, 140, 75))

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 30)
status.Position = UDim2.fromOffset(0, 170)
status.BackgroundTransparency = 1
status.Text = "STATUS: DESATIVADO"
status.TextColor3 = Color3.new(1, 1, 1)
status.Parent = main

local minimize = Instance.new("TextButton")
minimize.Size = UDim2.fromOffset(30, 30)
minimize.Position = UDim2.new(1, -35, 0, 5)
minimize.Text = "-"
minimize.TextSize = 22
minimize.Parent = main

local reopen = Instance.new("TextButton")
reopen.Size = UDim2.fromOffset(45, 45)
reopen.Position = UDim2.new(0, 15, 0.5, 0)
reopen.Text = "+"
reopen.TextSize = 28
reopen.Visible = false
reopen.Parent = gui

start.MouseButton1Click:Connect(function()
    status.Text = "STATUS: NO COIN ATIVO"
end)

farm.MouseButton1Click:Connect(function()
    status.Text = "STATUS: FARM SOLICITADO"
end)

minimize.MouseButton1Click:Connect(function()
    main.Visible = false
    reopen.Visible = true
end)

reopen.MouseButton1Click:Connect(function()
    main.Visible = true
    reopen.Visible = false
end)
