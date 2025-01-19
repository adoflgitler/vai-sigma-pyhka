local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local Functions = ReplicatedStorage:WaitForChild("Functions")
local VoteForMap = Events:WaitForChild("VoteForMap")
local VoteSkip = Functions:WaitForChild("VoteSkip")
local SpawnTower = Functions:WaitForChild("SpawnTower")
local ReplayButtonPressed = ReplicatedStorage:WaitForChild("ReplayButtonPressed")

VoteForMap:FireServer("FNAF 9")
wait(9)

spawn(function()
    while true do
        VoteSkip:InvokeServer()
        wait(0)
    end
end)

wait(51)

local function spawnTower(towerName, cframe)
    SpawnTower:InvokeServer(towerName, cframe)
end

local function spawn(towerName, cframe)
    SpawnTower:InvokeServer(towerName, cframe)
end

spawn("Helpi", CFrame.new(-4.496251583099365, 21.694805145263672, 439.75115966796875, 1, 2.476920180072284e-08, -3.3321800874119845e-10, -2.476920180072284e-08, 1, -1.2382261015131402e-13, 3.3321800874119845e-10, 1.2383086364035206e-13, 1))
wait(14)
spawn("Helpi", CFrame.new(-4.496251583099365, 21.694805145263672, 439.75115966796875, 1, 2.476920180072284e-08, -3.3321800874119845e-10, -2.476920180072284e-08, 1, -1.2382261015131402e-13, 3.3321800874119845e-10, 1.2383086364035206e-13, 1))
wait(15)
spawn("Helpi", CFrame.new(-4.496251583099365, 21.694805145263672, 439.75115966796875, 1, 2.476920180072284e-08, -3.3321800874119845e-10, -2.476920180072284e-08, 1, -1.2382261015131402e-13, 3.3321800874119845e-10, 1.2383086364035206e-13, 1))
wait(15)
spawn("Front Man", CFrame.new(6.597783088684082, 21.993024826049805, 503.9781799316406, 1, 0, 0, 0, 1, 0, 0, 0, 1))
wait(7)
spawn("Front Man", CFrame.new(22.24449348449707, 21.993024826049805, 544.4930419921875, 1, 0, 0, 0, 1, 2.0194839173657902e-28, -2.758576516270559e-36, 6.310887241768094e-29, 1))

wait(41)
ReplayButtonPressed:FireServer()
