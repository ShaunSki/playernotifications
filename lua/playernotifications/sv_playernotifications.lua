-- Created By ShaunSki.

AddCSLuaFile( "cl_playernotifications.lua" )
AddCSLuaFile( "sh_config.lua" )

include( "cl_playernotifications.lua" )
include( "sh_config.lua" )

resource.AddFile( PlayerJoinSound ) -- Automatic Download on path change.
resource.AddFile( PlayerLeaveSound ) -- Automatic Download on path change.

-- A player has spawned! Call this function!
function PlayerSpawned( ply )
	timer.Create( "Timer", PlayerJoinTimeDelay, 1, function()
		ply.PlayersName = ply:Nick()
		ply.TeamColor = ply:Team()
		umsg.Start( "PlayerJoins" )
		umsg.String( ply.PlayersName )
		umsg.End()
	end	)
end
hook.Add( "PlayerInitialSpawn", "PlayerSpawned", PlayerSpawned )

 
-- A player has disconnected! Call this function!
function PlayerLeaves( ply )
	ply.PlayersName = ply:Nick()
	ply.TeamColor = ply:Team()
		umsg.Start( "PlayerLeft" )
		umsg.String( ply.PlayersName )
		umsg.End()
end
hook.Add( "PlayerDisconnected", "PlayerLeaves", PlayerLeaves )