--[[
Note: 
kick - Enable/disable kick votes in lobby. Options: true (enabled), false (disabled)
gamemode - Enable/disable game modes votes in lobby. Options: true (enabled), false (disabled)
perks - Enable/disable ability to choose character's perks in lobby. Options: true (enabled), false (disabled)
fixed_gamemode - Will disable game mode votes and your server will run only this game mode.
Optons:
nil - disabled
"default" - default
"hungry" - Hungry gnaw
"darkness" - Pitch darkness
"hard" - Hard game mode
"scaling" - Scaling difficulty
"endless" - Endless
"no_sweat" - No sweat mode
"thieves" - Shadow thieves
"rush" - Rush game mode
]]

return {
	["workshop-1916510390"] = {
		configuration_options = {
			kick = true,
			gamemode = true,
			perks = true,
			fixed_gamemode = nil,
		},
		enabled = true
	},
}