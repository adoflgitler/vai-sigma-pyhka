local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VoteForMapEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("VoteForMap")
local VoteSkipFunction = ReplicatedStorage:WaitForChild("Functions"):WaitForChild("VoteSkip")
local ChangeSpeedEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("ChangeSpeed")
local ReplayButtonPressedEvent = ReplicatedStorage:WaitForChild("ReplayButtonPressed")

local args = { [1] = "Level 5" }
VoteForMapEvent:FireServer(unpack(args))
wait(11)

local function voteSkipLoop()
  while task.wait() do
    VoteSkipFunction:InvokeServer()
  end
end

coroutine.wrap(voteSkipLoop)()

wait(0) 

local args2 = { [1] = "inf" }
ChangeSpeedEvent:FireServer(unpack(args2))
wait(35)
ReplayButtonPressedEvent:FireServer()
