Config = {
	Guild_ID = '', -- Set to the ID of your guild (or your Primary guild if using Multiguild)
	Multiguild = false, -- Set to true if you want to use multiple guilds
	Guilds = {
		["main"] = "", -- Replace this with a name, like "main"
	},
	Bot_Token = '',
	RoleList = {},
	DebugScript = false,
	CacheDiscordRoles = true, -- true to cache player roles, false to make a new Discord Request every time
	CacheDiscordRolesTime = 60, -- if CacheDiscordRoles is true, how long to cache roles before clearing (in seconds)
}

Config.Splash = {
	Header_IMG = 'https://i.imgur.com/',
	Enabled = true,
	Wait = 10, -- How many seconds should splash page be shown for? (Max is 12)
	Heading1 = "Welcome to SERVER NAME",
	Heading2 = "Make sure to join our Discord and check out our website!",
	Discord_Link = 'https://discord.gg/',
	Website_Link = 'https://dwnstr.com',
}