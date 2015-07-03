-- Created By ShaunSki.
-- If you don't know what you're doing I don't recommending touching.

AddCSLuaFile( "sh_config.lua" )

include( "sh_config.lua" )

-- ( TagColor, TagName, NameColor, Name, TextColor, JoinText ) - simple enough :)

-- A player has spawned! Call this function!
function PlayerJoins( ply )
	Name = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do
	
	if JoinConfig == true and TeamColorConfig == true then return
		chat.AddText( TagColor, TagName, TeamColor, Name, TextColor, JoinText, " [SteamID: " .. ply:SteamID() .. "]" )
	elseif 
	JoinConfig == true and TeamColorConfig == false then return
		chat.AddText( TagColor, TagName, NameColor, Name, TextColor, JoinText, " [SteamID: " .. ply:SteamID() .. "]" )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "PlayerJoins" , PlayerJoins)

-- A player has joined through SteamIDJoin! Call this function (Ignores others!)
function PlayerSteamIDJoins( ply )
	Name = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if SteamIDJoinConfig == true and SteamIDTeamColorConfig == true then return
		chat.AddText( SteamIDTagColor, SteamIDTagName, SteamIDNameColor, Name, SteamIDTextColor, SteamIDJoinText )
	elseif
	SteamIDJoinConfig == true and SteamIDTeamColorConfig == false then return
		chat.AddText( SteamIDTagColor, SteamIDTagName, TeamColor, Name, SteamIDTextColor, SteamIDJoinText )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "PlayerSteamIDJoins" , PlayerSteamIDJoins)

-- A player has joined through UserGroupJoin! Call this function (Ignore others!)
function PlayerUserGroupJoins( ply )
	Name = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if UserGroupConfig == true and UserGroupTeamColorConfig == true and ply:IsUserGroup( UserGroupJoin ) then return
		chat.AddText( UserGroupTagColor, UserGroupTagName, UserGroupNameColor, Name, UserGroupTextColor, UserGroupJoinText, " [SteamID: " .. ply:SteamID() .. "]" )
	elseif
	UserGroupConfig == true and UserGroupTeamColorConfig == false and ply:IsUserGroup( UserGroupJoin ) then return
		chat.AddText( UserGroupTagColor, UserGroupTagName, TeamColor, Name, UserGroupTextColor, UserGroupJoinText, " [SteamID: " .. ply:SteamID() .. "]" )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "PlayerUserGroupJoins" , PlayerUserGroupJoins)

-- A player has disconnected! Call this function!
function PlayerLeft( ply )
	Name = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if LeaveConfig == true and LeaveTeamColorConfig == false then return
		chat.AddText( TagLeaveColor, TagLeaveName, NameLeaveColor, Name, TextLeaveColor, LeaveText, " [SteamID: " .. ply:SteamID() .. "]" )
	elseif
	LeaveConfig == true and LeaveTeamColorConfig == true then return
		chat.AddText( TagLeaveColor, TagLeaveName, TeamColor, Name, TextLeaveColor, LeaveText, " [SteamID: " .. ply:SteamID() .. "]" )
	end
	if EnablePlayerLeaveSound == true then
		surface.PlaySound( LeaveSound )
		end
	end
end
usermessage.Hook( "PlayerLeft" , PlayerLeft)

-- A player has left through SteamIDJoin! Call this function (Ignore others!)
function PlayerSteamIDLeft( ply )
	Name = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if SteamIDJoinConfig == true and SteamIDTeamColorConfig == false and ply:SteamID() == ( SteamIDJoin ) then return
		chat.AddText( SteamIDNameLeaveColor, SteamIDTagName, SteamIDNameLeaveColor, Name, SteamIDTextLeaveColor, SteamIDLeaveText, " [SteamID: " .. ply:SteamID() .. "]" )
	elseif
	SteamIDJoinConfig == true and SteamIDTeamColorConfig == true and ply:SteamID() == ( SteamIDJoin ) then return
		chat.AddText( SteamIDNameLeaveColor, SteamIDTagName, TeamColor, Name, SteamIDTextLeaveColor, SteamIDLeaveText, " [SteamID: " .. ply:SteamID() .. "]" )
	end
	if EnablePlayerLeaveSound == true then
		surface.PlaySound( LeaveSound )
		end
	end
end
usermessage.Hook( "PlayerSteamIDLeft" , PlayerSteamIDLeft)

-- A player has left through UserGroupJoin! Call this function (Ignore others!)
function PlayerUserGroupLeft( ply )
	Name = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if UserGroupConfig == true and UserGroupTeamColorConfig == true and ply:IsUserGroup( UserGroupJoin ) then return
		chat.AddText( UserGroupTagColor, UserGroupTagName, UserGroupNameLeaveColor, Name, UserGroupTextLeaveColor, UserGroupLeaveText, " [SteamID: " .. ply:SteamID() .. "]" )
	elseif
	UserGroupConfig == true and UserGroupTeamColorConfig == false and ply:IsUserGroup( UserGroupJoin ) then return
		chat.AddText( UserGroupTagColor, UserGroupTagName, TeamColor, Name, UserGroupTextLeaveColor, UserGroupLeaveText, " [SteamID: " .. ply:SteamID() .. "]" )
	end
	if EnablePlayerLeaveSound == true then
		surface.PlaySound( LeaveSound )
		end
	end
end
usermessage.Hook( "PlayerUserGroupLeft" , PlayerUserGroupLeft)