-- Created By ShaunSki.
-- If you don't know what you're doing I don't recommending touching.

AddCSLuaFile( "cl_playernotifications.lua" )
AddCSLuaFile( "sh_config.lua" )

include( "cl_playernotifications.lua" )
include( "sh_config.lua" )

resource.AddFile( JoinSoundFile ) -- Automatic Download on path change.
resource.AddFile( LeaveSoundFile ) -- Automatic Download on path change.

-- A player has spawned! Call this function!
function PlayerSpawned( ply )
ply.PlayersName = ply:Nick()
ply.TeamColor = ply:Team()
		
if ply:SteamID() == ( SteamIDJoin ) then return 
	timer.Create( "Timer", JoinTimeDelay, 1, function()
		umsg.Start( "PlayerSteamIDJoins" )
		umsg.String( ply.PlayersName )
		umsg.End()
	end	)
end
if ply:IsUserGroup( UserGroupJoin ) then return
	timer.Create( "TimerUserGroupJoin", JoinTimeDelay, 1, function()
		umsg.Start( "PlayerUserGroupJoins" )
		umsg.String( ply.PlayersName )
		umsg.End()
	end )
end
	timer.Create( "TimerSteamID", JoinTimeDelay, 1, function()
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