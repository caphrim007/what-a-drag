--[[
	Name: Ice Dragon
	Kanji: 氷
	Romanji: Kōri
	@see http://finalfantasy.wikia.com/wiki/Ice_Dragon_(Final_Fantasy_VI)
]]
DESCRIPTION = "Ice Dragon"
START_INFO = {
	"hp" = 200,
	"mp" = 30,
	"max_hp" = 24400,
	"max_mp" = 9000,
	"battle_power" = 13,
	"magic_power" = 10,
	"defense" = 110,
	"magic_defense" = 150,
	"magic_block" = 0,
	"speed" = 60,
	"hit_rate" = 100,
	"evade" = 0,

	-- elemental affinities
	"aff_fire" = -0.5,		-- weak
	"aff_ice" = 0.5,		-- absorb
	"aff_lightning" = 0,	-- no effect
	"aff_poison" = 0,
	"aff_pearl" = 0,
	"aff_earth" = 0,
	"aff_wind" = 0,
	"aff_water" = 0,

	-- magic spells
	"magic" = {
		"Surge", "Cold Dust", "Absolute Zero", "Northern Cross"
	},

	-- Character's equipment
	"lhand" = ITEM_FORCE_SHIELD,    -- Left hand weapon
    "rhand" = -1                    -- Right hand weapon
    "harmor" = -1                   -- Head armor
    "carmor" = -1                   -- Chest/Body armor
    "farmor" = -1                   -- Foot/Leg armor
}

function get_actions()
	if (get_milestone(MS_OPENING_SCENE)) then
		return "Defend", "", "", "", ""
	else
		return "Attack", "Item", "Magic", "Defend", "Run"
	end
end

function get_dropped_item()
	return ITEM_FORCE_SHIELD
end