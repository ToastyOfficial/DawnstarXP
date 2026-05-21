Config = {
	Server_Name = "",
	Discord_Link = 'https://discord.gg/',
	Website_Link = 'https://dwnstr.com',
	Allow_Refresh_Command = true, -- Allow usage of /refreshPerms command
	DebugScript = false,
	Print_Perm_Grants_And_Removals = true,
	Refresh_Throttle = 600, -- 10 minute refresh throttle
	roleList = {
		-- staff
		{DiscordRoleIdHere, "group.sadmin"}, --admins
		{DiscordRoleIdHere, "group.admin"},
		{DiscordRoleIdHere, "group.moderator"},
		{DiscordRoleIdHere, "group.trialmod"},
		{DiscordRoleIdHere, "group.staff"},
		{DiscordRoleIdHere, "dsxp.staff"},
		{DiscordRoleID, "dsxp.aopcmds"}, -- staff

		--Police
		{DiscordRoleIdHere, "dsxp.leosup"}, --supervisor
		{DiscordRoleIdHere, "dsxp.police"}, --pd	
		{DiscordRoleIdHere, "dsxp.fire"}, --lsfd

		--booster
		{DiscordRoleIdHere, "dsxp.booster"},
		{DiscordRoleIdHere, "group.supporter"},
		{DiscordRoleIdHere, "group.verified"}
	},
}