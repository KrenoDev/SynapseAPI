-- // CREATED BY KrenoDev \\ -- 
-- VERSION 1.0.2.05.24

-- Integration for the game SoulShatters on ROBLOX -- 
-- Used for loading some variables for the game. --
local SSINTEGRATIONS = {}
SSINTEGRATIONS._LOAD = function()
    

    local function IntegrationSignature(text)
        return "[SynAPI::SSIntegrations]: "..text
    end

    print(IntegrationSignature("Now loading integrations module..."))

    SSINTEGRATIONS._remotes = game.ReplicatedStorage:WaitForChild("Remotes") -- Remotes folder in Replicated
    SSINTEGRATIONS._obj = game.ReplicatedStorage:WaitForChild("Objects") -- Objects folder in Replicated
    SSINTEGRATIONS._func = {} -- Functions for the integration module


    -- Remote pass key
    SSINTEGRATIONS._func.getKey = function()
        return getrenv()._G.Pass
    end
    -- Returns the locked person/npc's name
    SSINTEGRATIONS._func.getLocked = function()
        return tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].Backpack.Main.LockOnScript.LockOn.Value)
    end
    -- Return the workspace instance of the locked person/npc
    function SSINTEGRATIONS._func:IGetWsLocked ()
        if self.getLocked() ~= nil then
            if game.Workspace:FindFirstChild(self.getLocked()) then
                return game.Workspace:FindFirstChild(self.getLocked())
            end
        end
    end

    print(IntegrationSignature("All instances loaded, currently contains "..#SSINTEGRATIONS._func.." loaded functions."))
        


    return SSINTEGRATIONS
end