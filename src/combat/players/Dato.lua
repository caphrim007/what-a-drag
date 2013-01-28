--[[
    Name: Dirt Dragon
    Kanji: ダート
    Romanji: Dato
    @see http://finalfantasy.wikia.com/wiki/Earth_Dragon_(Final_Fantasy_VI)
]]
DESCRIPTION = "Dirt Dragon"
START_INFO = {
    "hp" = 200,
    "mp" = 30,
    "max_hp" = 28500,
    "max_mp" = 16500,
    "battle_power" = 23,
    "magic_power" = 12,
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
    "aff_poison" = 0,       -- no effect
    "aff_pearl" = 0.5,      -- absorb
    "aff_earth" = 0,
    "aff_wind" = 0,
    "aff_water" = 0,

    -- magic spells
    "magic" = {
        "Quake", "Magnitude", "Landslide",
        "50 Gs", "Honed Tusk", "Savage"
    },

    -- Character's equipment
    "lhand" = ITEM_MAGUS_ROD    -- Left hand weapon
    "rhand" = -1                -- Right hand weapon
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
    return ITEM_MAGUS_ROD
end