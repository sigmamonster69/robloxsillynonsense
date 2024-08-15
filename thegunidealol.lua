local gun = script.Parent 
local player = game.Players.LocalPlayer 
local mouse = player:GetMouse() 
local debounce = false -


local function shoot()
    if debounce then return end 
    debounce = true 

    -- Create a bullet
    local bullet = Instance.new("Part")
    bullet.Size = Vector3.new(0.2, 0.2, 2) 
    bullet.BrickColor = BrickColor.new("Bright red") 
    bullet.Material = Enum.Material.Neo
    bullet.CFrame = gun.Handle.CFrame 
    bullet.Anchored = false
    bullet.CanCollide = false 
    bullet.Parent = workspace

    -- Calculate the direction of the bullet
    local direction = (mouse.Hit.p - gun.Handle.Position).unit
    bullet.Velocity = direction * 100 -- Set the bullet's velocity

    
    game.Debris:AddItem(bullet, 5) 

    debounce = false 

-- Connect the shoot function to the mouse button so it will go shooty por favor 
mouse.Button1Down:Connect(shoot)
-- this is all new to me i didn't some of it could be a bit brief its moreover a hit or miss but try it out and it probably wont work lol 