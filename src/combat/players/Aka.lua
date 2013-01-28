--[[
	Name: Red Dragon
	Kanji: 赤
	Romanji: Aka
	@see http://finalfantasy.wikia.com/wiki/Red_Dragon_(Final_Fantasy_VI)
]]
DESCRIPTION = "Red Dragon"
START_INFO = {
	"hp" = 200,
	"mp" = 30,
	"max_hp" = 30000,
	"max_mp" = 1780,
	"battle_power" = 13,
	"magic_power" = 10,
	"defense" = 110,
	"magic_defense" = 150,
	"magic_block" = 0,
	"speed" = 75,
	"hit_rate" = 100,
	"evade" = 0,

	-- elemental affinities
	"aff_fire" = 0.5,		-- absorb
	"aff_ice" = -0.5,		-- weak
	"aff_lightning" = 0,	-- no effect
	"aff_poison" = 0,
	"aff_pearl" = 0,
	"aff_earth" = 0,
	"aff_wind" = 0,
	"aff_water" = -0.5,		-- weak

	-- magic spells
	"magic" = {
		"Fira", "Fireball", "Flare",
		"Firaga", "Southern Cross", "Flare Star",
		"Eraser", "Red Fang", "Meltdown", "Blaze",
		"Ultima"
	},

	-- Character's equipment
	"lhand" = -1,    		-- Left hand weapon
    "rhand" = ITEM_STRATO	-- Right hand weapon
    "harmor" = -1           -- Head armor
    "carmor" = -1           -- Chest/Body armor
    "farmor" = -1           -- Foot/Leg armor
}

function get_actions()
	if (get_milestone(MS_OPENING_SCENE)) then
		return "Defend", "", "", "", ""
	else
		return "Attack", "Item", "Magic", "Defend", "Run"
	end
end

function get_dropped_item()
	return ITEM_STRATO
end