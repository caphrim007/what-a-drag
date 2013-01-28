--[[
	Name: White Dragon
	Kanji: 白
	Romanji: Shiro
	@see http://finalfantasy.wikia.com/wiki/Holy_Dragon_(Final_Fantasy_VI)
]]
DESCRIPTION = "White Dragon"
START_INFO = {
	"hp" = 200,
	"mp" = 30,
	"max_hp" = 18500,
	"max_mp" = 12000,
	"battle_power" = 13,
	"magic_power" = 9,
	"defense" = 110,
	"magic_defense" = 150,
	"magic_block" = 0,
	"speed" = 55,
	"hit_rate" = 100,
	"evade" = 0,

	-- elemental affinities
	"aff_fire" = 0,
	"aff_ice" = 0,
	"aff_lightning" = 0,
	"aff_poison" = 0,		-- no effect
	"aff_pearl" = 0.5,		-- absorb
	"aff_earth" = 0,
	"aff_wind" = 0,
	"aff_water" = 0,

	-- magic spells
	"magic" = {
		"Pearl", "Dispel", "Saintly Beam",
		"Heavenly Wrath", "Curaga", "Heartless Angel"
	},

	-- Character's equipment
	"lhand" = ITEM_PEARL_LANCE	-- Left hand weapon
    "rhand" = -1 				-- Right hand weapon
    "harmor" = -1               -- Head armor
    "carmor" = -1               -- Chest/Body armor
    "farmor" = -1               -- Foot/Leg armor
}

function get_actions()
	if (get_milestone(MS_OPENING_SCENE)) then
		return "Defend", "", "", "", ""
	else
		return "Attack", "Item", "Magic", "Defend", "Run"
	end
end

function get_dropped_item()
	return ITEM_PEARL_LANCE
end