-- LocalScript placed in StarterCharacter

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local UserInputService = game:GetService("UserInputService")

local isRunning = false
local walkSpeed = 16 
local runSpeed = 45 

-- Function to handle the input made onto the character 
local function onInputBegan(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.LeftShift then
            isRunning = true
            humanoid.WalkSpeed = runSpeed
        end
    end
end

local function onInputEnded(input, gameProcessedEvent)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.LeftShift then
        isRunning = false
        humanoid.WalkSpeed = walkSpeed
    end
end

-- this is a basic script as im learning lua its quite werid yk ive seen scripts stragne to this one but this is quite it lol
UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)
