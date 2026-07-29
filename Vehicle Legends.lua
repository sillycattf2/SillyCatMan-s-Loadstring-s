-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local Misc = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0261707995, 0, 0.0784780011, 0)
Main.Size = UDim2.new(0, 478, 0, 601)

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TextLabel.BorderColor3 = Color3.fromRGB(54, 54, 54)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 478, 0, 32)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Main"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0308219567, 0, 0.0706571043, 0)
TextButton.Size = UDim2.new(0, 113, 0, 22)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Main"
TextButton.TextColor3 = Color3.fromRGB(241, 241, 241)
TextButton.TextSize = 14.000

TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TextButton_2.BorderColor3 = Color3.fromRGB(72, 72, 72)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.296369731, 0, 0.0701822788, 0)
TextButton_2.Size = UDim2.new(0, 77, 0, 22)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Misc"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

Misc.Name = "Misc"
Misc.Parent = ScreenGui
Misc.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc.BorderSizePixel = 0
Misc.Position = UDim2.new(0.0261707995, 0, 0.0784780011, 0)
Misc.Size = UDim2.new(0, 478, 0, 601)

TextLabel_2.Parent = Misc
TextLabel_2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TextLabel_2.BorderColor3 = Color3.fromRGB(54, 54, 54)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 478, 0, 32)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Misc"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextButton_3.Parent = Misc
TextButton_3.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0308219567, 0, 0.0706571043, 0)
TextButton_3.Size = UDim2.new(0, 113, 0, 22)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Main"
TextButton_3.TextColor3 = Color3.fromRGB(241, 241, 241)
TextButton_3.TextSize = 14.000

TextButton_4.Parent = Misc
TextButton_4.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TextButton_4.BorderColor3 = Color3.fromRGB(72, 72, 72)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.296369731, 0, 0.0701822788, 0)
TextButton_4.Size = UDim2.new(0, 77, 0, 22)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Misc"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 14.000

-- Scripts:

-- Start on the Main page
Main.Visible = true
Misc.Visible = false

-- Keep both frames the same size and position initially
Misc.Position = Main.Position
Misc.Size = Main.Size

-- Switch to the Misc page
TextButton_2.MouseButton1Click:Connect(function()
	Misc.Position = Main.Position
	Misc.Size = Main.Size

	Main.Visible = false
	Misc.Visible = true
end)

-- Switch back to the Main page
TextButton_3.MouseButton1Click:Connect(function()
	Main.Position = Misc.Position
	Main.Size = Misc.Size

	Misc.Visible = false
	Main.Visible = true
end)

-- Stay on the Misc page if its Misc button is clicked
TextButton_4.MouseButton1Click:Connect(function()
	Misc.Position = Main.Position
	Misc.Size = Main.Size

	Main.Visible = false
	Misc.Visible = true
end)

local UnloadButton = Instance.new("TextButton")

UnloadButton.Parent = Misc
UnloadButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
UnloadButton.BorderColor3 = Color3.fromRGB(72, 72, 72)
UnloadButton.BorderSizePixel = 0
UnloadButton.Position = UDim2.new(0.03, 0, 0.12, 0) -- Below the Main/Misc buttons
UnloadButton.Size = UDim2.new(0, 113, 0, 22)
UnloadButton.Font = Enum.Font.SourceSans
UnloadButton.Text = "Unload"
UnloadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UnloadButton.TextSize = 14

-- Unload the GUI
UnloadButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

local TeleportRaceButton = Instance.new("TextButton")

TeleportRaceButton.Parent = Main
TeleportRaceButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TeleportRaceButton.BorderColor3 = Color3.fromRGB(72, 72, 72)
TeleportRaceButton.BorderSizePixel = 0
TeleportRaceButton.Position = UDim2.new(0.03, 0, 0.12, 0)
TeleportRaceButton.Size = UDim2.new(0, 140, 0, 22)
TeleportRaceButton.Font = Enum.Font.SourceSans
TeleportRaceButton.Text = "Teleport to race"
TeleportRaceButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportRaceButton.TextSize = 14

-- Replace your old MouseButton1Click function with this
TeleportRaceButton.MouseButton1Click:Connect(function()
	local player = game:GetService("Players").LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	local teleportPosition = CFrame.new(668, 6, -1367)

	-- Move the seat/vehicle if the player is sitting
	if humanoid and humanoid.SeatPart then
		local seat = humanoid.SeatPart
		local vehicle = seat:FindFirstAncestorOfClass("Model")

		if vehicle then
			vehicle:PivotTo(teleportPosition)
		else
			seat:PivotTo(teleportPosition)
		end
	end

	-- Move the player
	character:PivotTo(teleportPosition)
end)

local CompleteRaceButton = Instance.new("TextButton")

CompleteRaceButton.Parent = Main
CompleteRaceButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
CompleteRaceButton.BorderColor3 = Color3.fromRGB(72, 72, 72)
CompleteRaceButton.BorderSizePixel = 0
CompleteRaceButton.Position = UDim2.new(0.35, 0, 0.12, 0) -- Right of Teleport button
CompleteRaceButton.Size = UDim2.new(0, 140, 0, 22)
CompleteRaceButton.Font = Enum.Font.SourceSans
CompleteRaceButton.Text = "Complete Drag Race"
CompleteRaceButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CompleteRaceButton.TextSize = 14

CompleteRaceButton.MouseButton1Click:Connect(function()
	local Event = game:GetService("ReplicatedStorage").Event.Races.Check
	
	task.wait(5)
	
	Event:FireServer(
		1,
		"Drag Race"
	)
	
	print("Complete drag race clicked")
end)

local MiamiCircuitButton = Instance.new("TextButton")

MiamiCircuitButton.Parent = Main
MiamiCircuitButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
MiamiCircuitButton.BorderColor3 = Color3.fromRGB(72, 72, 72)
MiamiCircuitButton.BorderSizePixel = 0
MiamiCircuitButton.Position = UDim2.new(0.67, 0, 0.12, 0)
MiamiCircuitButton.Size = UDim2.new(0, 140, 0, 22)
MiamiCircuitButton.Font = Enum.Font.SourceSans
MiamiCircuitButton.Text = "Complete Miami City Circuit"
MiamiCircuitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MiamiCircuitButton.TextSize = 14

MiamiCircuitButton.MouseButton1Click:Connect(function()

	local Event = game:GetService("ReplicatedStorage").Event.Races.Check

	for i = 1, 38 do
		task.wait(2)

		Event:FireServer(
			i,
			"Miami City Circuit"
		)
	end

	print("Miami City Circuit completed")
end)





Main.Active = true
Main.Draggable = true

Misc.Active = true
Misc.Draggable = true
