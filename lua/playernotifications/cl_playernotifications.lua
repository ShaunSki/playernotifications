-- Created By ShaunSki.

AddCSLuaFile( "sh_config.lua" )

include( "sh_config.lua" )

-- A player has spawned! Call this function!
function PlayerJoins( ply )
	PlayerName = ply:ReadString()
	if EnablePlayerJoinNotifications == true then
		chat.AddText( TagColor, TagName, PlayerNameColor, PlayerName, PlayerTextColor, PlayerJoinText )
	end
	if EnablePlayerJoinSound == true then
		surface.PlaySound( PlayerJoinSound )
	end
end
usermessage.Hook( "PlayerJoins" , PlayerJoins)

-- A player has disconnected! Call this function!
function PlayerLeft( ply )
	PlayerName = ply:ReadString()
	if EnablePlayerLeaveNotifications == true then
		chat.AddText( TagColor, TagName, PlayerNameLeaveColor, PlayerName, PlayerTextLeaveColor, PlayerJoinLeaveText )
		end
	if EnablePlayerLeaveSound == true then
		surface.PlaySound( PlayerLeaveSound )
	end
end
usermessage.Hook( "PlayerLeft" , PlayerLeft)