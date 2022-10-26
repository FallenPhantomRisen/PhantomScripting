local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
Name = "Phantom Scripting",
LoadingTitle = "Robot Tycoon Maxing",
LoadingSubtitle = "By RebornPhantom",
KeySystem = false, -- Set this to true to use our key system
KeySettings = {
	Title = "Phantom Hub",
	Subtitle = "Key System",
	Note = "Join the discord (discord.gg/sirius)",
	Key = "ABCDEF"
}
})

-- Guide

local Tab = Window:CreateTab("Guide")
local Section = Tab:CreateSection("Guide")
local Paragraph = Tab:CreateParagraph({Title = "Main Guide", Content = "In order to use the Main Upgrades, you need to open the Ingame Upgrade Menu for your robot, and navigate to the Upgrade you'd like to Use First!"})
local Paragraph = Tab:CreateParagraph({Title = "Sword Guide", Content = "In order to use the Sword Upgrade, you need to open the Ingame Sword Menu for your robot."})
local Paragraph = Tab:CreateParagraph({Title = "Infinite Money Glitch", Content = "In order to generate infinite money, simply equip the wooden sword, and press the infinite money button!"})
local Paragraph = Tab:CreateParagraph({Title = "Credits", Content = "Script made by RebornPhantom, UI is Rayfield Interface Suite!"})



-- Main
local Tab = Window:CreateTab("Main")
local Section = Tab:CreateSection("Upgrades")


local Button = Tab:CreateButton({
	Name = "Upgrade Head for 10$",
	Callback = function()
		local args = {
    [1] = "Head",
    [2] = 1,
    [3] = 10,
    [4] = "Upgrade1"
}

game:GetService("ReplicatedStorage").RemoteEvents.BattleBotLevelUp:FireServer(unpack(args))

	end,
})
local Button = Tab:CreateButton({
	Name = "Upgrade Torso for 10$",
	Callback = function()
		local args = {
    [1] = "Torso",
    [2] = 1,
    [3] = 10,
    [4] = "Upgrade1"
}

game:GetService("ReplicatedStorage").RemoteEvents.BattleBotLevelUp:FireServer(unpack(args))

	end,
})
local Button = Tab:CreateButton({
	Name = "Upgrade Right Arm for 10$",
	Callback = function()
		local args = {
    [1] = "RightArm",
    [2] = 1,
    [3] = 10,
    [4] = "Upgrade1"
}

game:GetService("ReplicatedStorage").RemoteEvents.BattleBotLevelUp:FireServer(unpack(args))

	end,
})
local Button = Tab:CreateButton({
	Name = "Upgrade Left Arm for 10$",
	Callback = function()
		local args = {
    [1] = "LeftArm",
    [2] = 1,
    [3] = 10,
    [4] = "Upgrade1"
}

game:GetService("ReplicatedStorage").RemoteEvents.BattleBotLevelUp:FireServer(unpack(args))

	end,
})
local Button = Tab:CreateButton({
	Name = "Upgrade Right Leg for 10$",
	Callback = function()
		local args = {
    [1] = "RightLeg",
    [2] = 1,
    [3] = 10,
    [4] = "Upgrade1"
}

game:GetService("ReplicatedStorage").RemoteEvents.BattleBotLevelUp:FireServer(unpack(args))

	end,
})
local Button = Tab:CreateButton({
	Name = "Upgrade Left Leg for 10$",
	Callback = function()
		local args = {
    [1] = "LeftLeg",
    [2] = 1,
    [3] = 10,
    [4] = "Upgrade1"
}

game:GetService("ReplicatedStorage").RemoteEvents.BattleBotLevelUp:FireServer(unpack(args))

	end,
})

-- Misc

local Tab = Window:CreateTab("Misc")
local Section = Tab:CreateSection("Misc")
local Button = Tab:CreateButton({
	Name = "Deload",
	Callback = function()
		Rayfield:Destroy()
	end,
})

-- Sword

local Tab = Window:CreateTab("Sword")
local Section = Tab:CreateSection("Sword")
local Button = Tab:CreateButton({
	Name = "Max Sword for 10$",
	Callback = function()
		local args = {
    [1] = 16,
    [2] = "SwordOfTheSeas",
    [3] = 10
}

game:GetService("ReplicatedStorage").RemoteEvents.SwordPurchased:FireServer(unpack(args))

	end,
})
local Tab = Window:CreateTab("Money Glitch")
local Section = Tab:CreateSection("Money Glitch")
local Button = Tab:CreateButton({
	Name = "Generate Cash",
	Callback = function()
		local args = {
    [1] = workspace.Map.Battlebots:FindFirstChild("Enemy Battle Robot").Humanoid,
    [2] = "150000",
    [3] = 100000
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wooden Sword").Handle.RemoteEvent:FireServer(unpack(args))
	end,
})

