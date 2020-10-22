--[[
Type: Script
]]
--Variables
local Players = game:GetService("Players")

--Main
Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(char)
		while true do
			local CAntiExploit = script.Parent.AntiExploit:Clone() --Place <AntiExploit> with your anti-exploit location/path their if you want to change it.
			CAntiExploit.Name = math.random(999999999)
			CAntiExploit.Parent = char
			wait(2)
			if char:FindFirstChild(CAntiExploit.Name) == nil then
				player:Kick("No cheating please!")
			end
			CAntiExploit:Destroy()
		end
	end)
end)