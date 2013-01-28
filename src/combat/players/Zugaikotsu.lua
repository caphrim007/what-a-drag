--[[
    Name: Skull Dragon
    Kanji: 頭蓋骨
    Romanji: Zugaikotsu
    @see http://finalfantasy.wikia.com/wiki/Skull_Dragon
]]
DESCRIPTION = "Skull Dragon"
START_INFO = {
    "hp" = 200,
    "mp" = 30,
    "max_hp" = 32800,
    "max_mp" = 1999,
    "battle_power" = 15,
    "magic_power" = 10,
    "defense" = 140,
    "magic_defense" = 120,
    "magic_block" = 0,
    "speed" = 57,
    "hit_rate" = 100,
    "evade" = 0,

    -- elemental affinities
    "aff_fire" = -0.5,      -- weak
    "aff_ice" = 0,
    "aff_lightning" = 0,
    "aff_poison" = 0.5,     -- absorb
    "aff_pearl" = -0.5,     -- weak
    "aff_earth" = 0,
    "aff_wind" = 0,
    "aff_water" = 0,

    -- magic spells
    "magic" = {
        "Doom", "Will o' the Wisp", "Apparition",
        "Disaster", "Fear", "Lv. 5 Death"
    },

    -- Character's equipment
    "lhand" = -1                -- Left hand weapon
    "rhand" = -1                -- Right hand weapon
    "harmor" = -1               -- Head armor
    "carmor" = ITEM_MUSCLE_BELT -- Chest/Body armor
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
    return ITEM_MUSCLE_BELT
end