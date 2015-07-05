-- Created By ShaunSki.
-- If you don't know what you're doing I don't recommending touching.

AddCSLuaFile( "sh_config.lua" )
AddCSLuaFile( "sh_steamidconfig.lua" )
AddCSLuaFile( "sh_groupconfig.lua" )

include( "sh_config.lua" )
include( "sh_steamidconfig.lua" )
include( "sh_groupconfig.lua" )

-- ( TagColor, TagName, NameColor, Name, TextColor, JoinText ) - simple enough :)

-- A player has spawned! Call this function!
function PlayerJoins( ply )
	Name = ply:ReadString()
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	
	for _, ply in ipairs( player.GetAll() ) do
	
	if JoinConfig == true and TeamColorConfig == true then return
		chat.AddText( TagColor, TagName, TeamColor, Name, TextColor, JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	elseif 
	JoinConfig == true and TeamColorConfig == false then return
		chat.AddText( TagColor, TagName, NameColor, Name, TextColor, JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
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
	PlayersSteamID = ply:ReadString()
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
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if UserGroupConfig == true and UserGroupTeamColorConfig == true and ply:IsUserGroup( UserGroupJoin ) then return
		chat.AddText( UserGroupTagColor, UserGroupTagName, UserGroupNameColor, Name, UserGroupTextColor, UserGroupJoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	elseif
	UserGroupConfig == true and UserGroupTeamColorConfig == false and ply:IsUserGroup( UserGroupJoin ) then return
		chat.AddText( UserGroupTagColor, UserGroupTagName, TeamColor, Name, UserGroupTextColor, UserGroupJoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
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
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if LeaveConfig == true and LeaveTeamColorConfig == false then return
		chat.AddText( TagLeaveColor, TagLeaveName, NameLeaveColor, Name, TextLeaveColor, LeaveText, " - SteamID: ", Color( 255, 0, 0 ), PlayersSteamID )
	elseif
	LeaveConfig == true and LeaveTeamColorConfig == true then return
		chat.AddText( TagLeaveColor, TagLeaveName, TeamColor, Name, TextLeaveColor, LeaveText, " - SteamID: ", Color( 255, 0, 0 ), PlayersSteamID )
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
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do

	if SteamIDJoinConfig == true and SteamIDTeamColorConfig == false and ply:SteamID() == ( SteamIDJoin ) then return
		chat.AddText( SteamIDNameLeaveColor, SteamIDTagName, SteamIDNameLeaveColor, Name, SteamIDTextLeaveColor, SteamIDLeaveText )
	elseif
	SteamIDJoinConfig == true and SteamIDTeamColorConfig == true and ply:SteamID() == ( SteamIDJoin ) then return
		chat.AddText( SteamIDNameLeaveColor, SteamIDTagName, TeamColor, Name, SteamIDTextLeaveColor, SteamIDLeaveText )
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
	PlayersSteamID = ply:ReadString()
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

-------------EXTRA CONFIG FOR GROUPS----------------

----------------------JOINING-----------------------
function Group1Joined( ply )
	Name = ply:ReadString()
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do
	
	if Group1Enable == true and Group1TeamColor == true then return
		chat.AddText( Group1TagColor, Group1TagName, Group1TeamColor, Name, Group1TextColor, Group1JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	elseif 
	Group1Enable == true and Group1TeamColor == false then return
		chat.AddText( Group1TagColor, Group1TagName, Group1TagName, Name, Group1TagName, Group1JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "Group1Joined" , Group1Joined)

function Group2Joined( ply )
	Name = ply:ReadString()
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do
	
	if Group2Enable == true and Group2TeamColor == true then return
		chat.AddText( Group2TagColor, Group2TagName, Group2TeamColor, Name, Group2TextColor, Group2JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	elseif 
	Group1Enable == true and Group1TeamColor == false then return
		chat.AddText( Group2TagColor, Group2TagName, Group2TagName, Name, Group2TagName, Group2JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "Group2Joined" , Group2Joined)

function Group3Joined( ply )
	Name = ply:ReadString()
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do
	
	if Group3Enable == true and Group3TeamColor == true then return
		chat.AddText( Group3TagColor, Group3TagName, Group3TeamColor, Name, Group3TextColor, Group3JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	elseif 
	Group1Enable == true and Group1TeamColor == false then return
		chat.AddText( Group3TagColor, Group3TagName, Group3TagName, Name, Group3TagName, Group3JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "Group3Joined" , Group3Joined)

function Group4Joined( ply )
	Name = ply:ReadString()
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do
	
	if Group4Enable == true and Group4TeamColor == true then return
		chat.AddText( Group4TagColor, Group4TagName, Group4TeamColor, Name, Group4TextColor, Group4JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	elseif 
	Group1Enable == true and Group1TeamColor == false then return
		chat.AddText( Group4TagColor, Group4TagName, Group4TagName, Name, Group4TagName, Group4JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "Group4Joined" , Group4Joined)

function Group5Joined( ply )
	Name = ply:ReadString()
	PlayersSteamID = ply:ReadString()
	TeamColor = team.GetColor( ply:ReadShort() )
	
	for _, ply in ipairs( player.GetAll() ) do
	
	if Group5Enable == true and Group5TeamColor == true then return
		chat.AddText( Group5TagColor, Group1TagName, Group5TeamColor, Name, Group5TextColor, Group5JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	elseif 
	Group1Enable == true and Group5TeamColor == false then return
		chat.AddText( Group5TagColor, Group5TagName, Group5TagName, Name, Group5TagName, Group5JoinText, " - SteamID: ", Color( 0, 255, 0 ), PlayersSteamID )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( JoinSound )
		end
	end
end
usermessage.Hook( "Group5Joined" , Group5Joined)