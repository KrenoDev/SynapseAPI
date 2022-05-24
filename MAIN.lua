-- // CREATED BY KrenoDev \\ -- 
-- VERSION 1.0.2.05.24

-- Beginning
local module = {}

-- Load in the neccessary values upon the API getting required

repeat task.wait() until game:IsLoaded() -- Wait until fully loaded

-- Core Functions --
-- Return the passed text with the Synapse API Signature 
local function SynAPISignature(text)
    return "[SynAPI]: "..text
end

-- LOADING SECTION --
--#region
print(SynAPISignature("Synapse API by KrenoDev is currently loading the core variables."))

local loadTimeStamp = os.clock(); -- Timestamp to log the loading time

local IReplicated = game:WaitForChild("ReplicatedStorage")
local IReplicatedF = game:WaitForChild("ReplicatedFirst")
local IWorkspace = game:WaitForChild("Workspace")
local IPlayers = game:WaitForChild("Players")
local ILocalPlayer = IPlayers.LocalPlayer

local SoulShattersIntegration = {}

if game.GameId == 1155167752 then
    print(SynAPISignature("Integrations for this game have been found. Loading integration 'SoulShattersIntegration.lua'..."))
    SoulShattersIntegration = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrenoDev/SynapseAPI/main/SoulShattersIntegration.lua"))()
end
--#endregion
