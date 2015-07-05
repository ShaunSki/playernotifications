-- Created By ShaunSki.
-- If you don't know what you're doing I don't recommending touching.

AddCSLuaFile( "cl_playernotifications.lua" )
AddCSLuaFile( "sh_config.lua" )
AddCSLuaFile( "sh_steamidconfig.lua" )
AddCSLuaFile( "sh_groupconfig.lua" )

include( "cl_playernotifications.lua" )
include( "sh_config.lua" )
include( "sh_steamidconfig.lua" )
include( "sh_groupconfig.lua" )

resource.AddFile( JoinSoundFile ) -- Automatic Download on path change.
resource.AddFile( LeaveSoundFile ) -- Automatic Download on path change.

-- A player has spawned! Call this function!
function PlayerSpawned( ply )
ply.PlayersName = ply:Nick()
ply.TeamColor = ply:Team()
ply.PlayersSteamID = ply:SteamID()
		
if ply:SteamID() == ( SteamIDJoin ) then return 
	timer.Create( "TimerSteamID", JoinTimeDelay, 1, function()
		umsg.Start( "PlayerSteamIDJoins" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end	)
end
if ply:IsUserGroup( UserGroupJoin ) then return
	timer.Create( "TimerUserGroupJoin", JoinTimeDelay, 1, function()
		umsg.Start( "PlayerUserGroupJoins" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end )
end
if ply:IsUserGroup( Group1Join ) then return
	timer.Create( "TimerUserGroupJoin", JoinTimeDelay, 1, function()
		umsg.Start( "Group1Joined" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end )
end
if ply:IsUserGroup( Group2Join ) then return
	timer.Create( "TimerUserGroupJoin", JoinTimeDelay, 1, function()
		umsg.Start( "Group2Joined" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end )
end
if ply:IsUserGroup( Group3Join ) then return
	timer.Create( "TimerUserGroupJoin", JoinTimeDelay, 1, function()
		umsg.Start( "Group3Joined" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end )
end
if ply:IsUserGroup( Group4Join ) then return
	timer.Create( "TimerUserGroupJoin", JoinTimeDelay, 1, function()
		umsg.Start( "Group4Joined" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end )
end
if ply:IsUserGroup( Group5Join ) then return
	timer.Create( "TimerUserGroupJoin", JoinTimeDelay, 1, function()
		umsg.Start( "Group5Joined" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end )
end
	timer.Create( "TimerNormal", JoinTimeDelay, 1, function()
		umsg.Start( "PlayerJoins" )
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
	end	)
end
hook.Add( "PlayerInitialSpawn", "PlayerSpawned", PlayerSpawned )

-- A player has disconnected! Call this function!
function PlayerLeaves( ply )
	ply.PlayersName = ply:Nick()
	ply.TeamColor = ply:Team()
	ply.PlayersSteamID = ply:SteamID()
	
		umsg.Start( "PlayerLeft" ) 
		umsg.String( ply.PlayersName )
		umsg.String( ply.PlayersSteamID )
		umsg.End()
end
hook.Add( "PlayerDisconnected", "PlayerLeaves", PlayerLeaves )