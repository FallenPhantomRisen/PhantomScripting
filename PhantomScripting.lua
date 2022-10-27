getgenv().SecureMode = true
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
local Paragraph = Tab:CreateParagraph({Title = "Credits", Content = "Script made by RebornPhantom, UI is Rayfield Interface Suite!"})
local Paragraph = Tab:CreateParagraph({Title = "Credits", Content = "Join the Discord at discord.gg/vGwPPNSvaJ"})
local Paragraph = Tab:CreateParagraph({Title = "Changlelogs", Content = "Starting from now, V0.03, This Changelog will be updated with every update. To mark for now, V0.0.3 Added the Money Glitch V2, which is volatile, but effective; use at your own risk!"})

-- Main
local Tab = Window:CreateTab("Main")
local Section = Tab:CreateSection("Upgrades")
local Paragraph = Tab:CreateParagraph({Title = "Main Guide", Content = "In order to use the Main Upgrades, you need to open the Ingame Upgrade Menu for your robot, and navigate to the Upgrade you'd like to Use First!"})

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
local Button = Tab:CreateButton({
	Name = "Speed",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
	end,
})
local Button = Tab:CreateButton({
	Name = "Jump Power",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
	end,
})
local Button = Tab:CreateButton({
	Name = "Reset Speed",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
	end,
})
local Button = Tab:CreateButton({
	Name = "Reset Jump Power",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end,
})

-- Sword

local Tab = Window:CreateTab("Sword")
local Section = Tab:CreateSection("Sword")
local Paragraph = Tab:CreateParagraph({Title = "Sword Guide", Content = "In order to use the Sword Upgrade, you need to open the Ingame Sword Menu for your robot."})
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

-- Infinite Money

local Tab = Window:CreateTab("Money Glitch")
local Section = Tab:CreateSection("Money Glitch")
local Paragraph = Tab:CreateParagraph({Title = "Infinite Money Glitch", Content = "In order to generate infinite money, simply equip the wooden sword, and press the infinite money button!"})
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
local Paragraph = Tab:CreateParagraph({Title = "Infinite Money Glitchv2", Content = "This Version of the Glitch is likely already detected by Devs, but feel free to use it, at your own Risk!"})
local Button = Tab:CreateButton({
	Name = "Infinite Money v2",
	Callback = function()
		game:GetService("ReplicatedStorage").RemoteEvents.BattleBotLevelUp:FireServer("Head",0,-9999999,"Upgrade1")
		game:GetService("ReplicatedStorage").RemoteFunctions.UnlockUpgrades:InvokeServer(-9999999,"Head")

	end,
})

-- Auto-Rebirth

local Tab = Window:CreateTab("Rebirth")
local Section = Tab:CreateSection("Rebirth")
local Paragraph = Tab:CreateParagraph({Title = "Rebirth Guide!", Content = "Step on the very first button, and hit the button to Rebirth!"})
local Button = Tab:CreateButton({
	Name = "Rebirth!",
	Callback = function()
		game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer()
	end,
})


-- Claim All Packages

local Tab = Window:CreateTab("Claim Packages")
local Section = Tab:CreateSection("Claim Packages")
local Paragraph = Tab:CreateParagraph({Title = "Claim your Playtime Packages!", Content = "Straightforward, don't waste your time clicking those packages, click this to autocomplete all of them!"})
local Button = Tab:CreateButton({
	Name = "Claim!",
	Callback = function()
		local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 3
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 4
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 5
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 6
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 7
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))
local args = {
    [1] = 8
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlaytimeRewardClaimed:InvokeServer(unpack(args))

	end,
})


