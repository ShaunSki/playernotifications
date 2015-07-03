-- Created By ShaunSki.
-- Config file is required.
-- Feel free to email me at shaunskigmod@hotmail.com if you have any problems/requests.
-- Or here's my steam profile for quicker help: http://steamcommunity.com/id/ShaunSkis/
-- If you don't know the Decimal Colors use this website: http://www.rapidtables.com/web/color/RGB_Color.htm
-- Uses R,G,B Red, Green, Blue.

-- Player Joined Config
JoinConfig = true -- This will show notifications of people who join. To turn off use false. To turn on use true. / basically kills player joined config...
TeamColorConfig = true -- This will show players teamcolor upon joining. E.G. TRUE means it uses TextColor! To turn off use false. To Turn on use true.

TagName = "[Sandbox] " -- Your servers tag name. (Call it whatever you want, you can even call it the gamemode tag like [Sandbox] or [TTT].)
TagColor = Color( 0, 255, 0 ) -- The Tag Color! 

NameColor = Color( 255, 0, 0 ) -- The player names color! / If TeamColorConfig = true , then it doesn't matter what NameColor is.
TextColor = Color( 255, 255, 255 ) -- The player names text color! -- best to leave as white...
JoinText = " has joined the server! " -- The text when a player joins!

-- Player Left Config
LeaveConfig = true -- This will show notifications of people who leave. To turn off use false. To turn on use true.
LeaveTeamColorConfig = true -- This will show players teamcolor of people who leave. E.G. TRUE means it uses TextLeaveColor! To turn off use false. To turn on use true.

TagLeaveName = TagName -- Uses line 11. To change it differently e.g. use "[TTT] " instead of TagName.
TagLeaveColor = TagColor -- Uses line 12. To change it differently e.g. use Color( 0, 255, 0, 255 ) instead of TagColor.

NameLeaveColor = Color( 255, 0, 0 ) --  The player names color!
TextLeaveColor = Color( 255, 255, 255 ) -- The player names text color! -- best to leave as white...
LeaveText = " has left the server! " -- The text when a player leaves!

-- Timer Join Config
-- When a player joins should it instantly show they connected or have a delay?
-- I added this because the client is still loading, though the server counts as the player connected. I guess it doesn't really matter do whatever u want, use 0 or nil to disable the timer.
JoinTimeDelay = 3

-- Sound Config
-- Player Joined Sound Config
-- This could come in handy I guess? -- https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/index8f77.html
JoinSound = false -- If true then it will load your sound when a player joins. To turn off use false. To turn on use true.
JoinSoundFile = "" -- Your sound path e.g. garrysmod/garrysmod/sound. "If the user doesn't have the file it will automatically download"

-- Player Disconnected Sound Config
LeaveSound = false -- If true then it will load your sound when a player leaves. To turn off use false. To turn on use true.
LeaveSoundFile = "" -- Your sound path e.g. garrysmod/garrysmod/sound. "If the user doesn't have the file it will automatically download"

-----------------------------------------------------------------------------
---------------------------------EXTRA CONFIG--------------------------------
---------------------------------NOT REQUIRED--------------------------------
-------------------------FEEL FREE TO USE IT THOUGH--------------------------
------------------------I MEAN I SPENT TIME MAKING IT------------------------
------IF U WANT A SOUND FOR WHEN USERGROUP/STEAMID JOIN THEN MESSAGE ME------
-------OR IF YOU WANT MORE CONFIG FOR DIFFERENT STEAMID OR USERGROUPS!-------
-----------------------------------------------------------------------------

-- SteamID Config
-- SteamID Join Config
SteamIDJoinConfig = false -- This will show players by SteamID, e.g. instead of using above uses this. (FOR THE PLAYER STEAMID)
SteamIDTeamColorConfig = false -- This will show players teamcolor by SteamID upon joining. E.G. TRUE means it uses SteamIDTextColor! To turn off use false. To Turn on use true.

SteamIDJoin = "STEAM_0:0:62548" -- The player names SteamID (Need this for it to work). If you want multiple then just ask me. or add ( or "steamid" ) 

SteamIDTagName = "[Owner] " -- The tag e.g. [Owner] "name" the owner, has arrived.

SteamIDTagColor = Color( 255, 0, 0 ) -- The Tag Color / If EnablePlayerSteamIDTeamColorNotifications = false , then doesn't matter what it is.
SteamIDNameColor = Color( 0, 0, 0 ) -- The player names color!
SteamIDTextColor = Color( 255, 255, 255 ) -- The player names text color! -- best to leave as white...

SteamIDJoinText = " the owner, has arrived." -- The text when a player joins! thru SteamID...
-- type status in console to retrieve your SteamID and throw it in there.

-- SteamID Leave Config
SteamIDNameLeaveColor = Color( 255, 0, 0 ) --  The player names color!
SteamIDTextLeaveColor = Color( 255, 255, 255 ) -- The player names text color! -- best to leave as white...

-- Disabled For Now -- (not working - only the leavetext)
--SteamIDLeaveText = " the owner, has left the server!" -- The text when a player leaves!

-- UserGroups Config
-- UserGroups Join Config
-- Should we enable it? True or False.
UserGroupConfig = false -- This will show players by UserGroup, e.g. you use ULX and your usergroup is donator, everyone in that group this message shows.
UserGroupTeamColorConfig = false -- This will show players teamcolor by SteamID upon joining. E.G. TRUE means it uses UserGroupTextColor! To turn off use false. To Turn on use true.

UserGroupJoin = "donator" -- The group of which you want this to happen to, if you put user you just gave me a laugh +1. (but srsly dont put user)

UserGroupTagName = "[Donator] " -- The players Tag...

UserGroupTagColor = Color( 150, 150, 0 ) -- The Tag Color / If EnablePlayerSteamIDTeamColorNotifications = false , then doesn't matter what it is.
UserGroupNameColor = Color( 50, 0, 50 ) -- The player names color!
UserGroupTextColor = Color( 255, 255, 255 ) -- The player names text color! -- best to leave as white...

-- Disabled For Now -- (not working - only the leavetext)
--UserGroupJoinText = " has joined the server!" -- The text when a player in the usergroup joins.

-- UserGroups Leave Config
UserGroupNameLeaveColor = Color( 255, 0, 0 ) --  The player names color!
UserGroupTextLeaveColor = Color( 255, 255, 255 ) -- The player names text color! -- best to leave as white...

UserGroupLeaveText = " has left the server! " -- The text when a player in the UserGroup Leaves.