-- Created By ShaunSki
-- This allows the files to work together instead of seperate.

if SERVER then
	AddCSLuaFile("playernotifications.lua")
	AddCSLuaFile("playernotifications/sv_playernotifications.lua")

	include("playernotifications/sv_playernotifications.lua")
end

if CLIENT then
	include("playernotifications/cl_playernotifications.lua")
end
