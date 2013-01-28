--[[
    Name: Storm Dragon
    Kanji: 嵐
    Romanji: Arashi
    @see http://finalfantasy.wikia.com/wiki/Storm_Dragon_(Final_Fantasy_VI)
]]
DESCRIPTION = "Storm Dragon"
START_INFO = {
    "hp" = 200,
    "mp" = 30,
    "max_hp" = 42000,
    "max_mp" = 1250,
    "battle_power" = 13,
    "magic_power" = 9,
    "defense" = 110,
    "magic_defense" = 150,
    "magic_block" = 0,
    "speed" = 65,
    "hit_rate" = 100,
    "evade" = 0,

    -- elemental affinities
    "aff_fire" = 0,
    "aff_ice" = 0,
    "aff_lightning" = -0.5, -- weak
    "aff_poison" = 0,       -- no effect
    "aff_pearl" = 0,
    "aff_earth" = 0,
    "aff_wind" = 0.5,       -- absorb
    "aff_water" = 0,

    -- magic spells
    "magic" = {
        "Wind Slash", "Leaf Swirl", "Aero",
        "Wing Sabre", "Cyclonic", "Icarus Wing",
        "Tornado"
    },

    -- Character's equipment
    "lhand" = -1                    -- Left hand weapon
    "rhand" = -1                    -- Right hand weapon
    "harmor" = -1                   -- Head armor
    "carmor" = ITEM_FORCE_ARMOR     -- Chest/Body armor
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
    return ITEM_FORCE_ARMOR
end