--[[
    Name: Gold Dragon
    Kanji: 金
    Romanji: Kin
    @see http://finalfantasy.wikia.com/wiki/Gold_Dragon_(Final_Fantasy_VI)
]]
DESCRIPTION = "Gold Dragon"
START_INFO = {
    "hp" = 200,
    "mp" = 30,
    "max_hp" = 32400,
    "max_mp" = 4000,
    "battle_power" = 13,
    "magic_power" = 10,
    "defense" = 110,
    "magic_defense" = 150,
    "magic_block" = 0,
    "speed" = 75,
    "hit_rate" = 100,
    "evade" = 0,

    -- elemental affinities
    "aff_fire" = 0,
    "aff_ice" = 0,
    "aff_lightning" = 0.5,      -- absorb
    "aff_poison" = 0,
    "aff_pearl" = 0,
    "aff_earth" = 0,
    "aff_wind" = 0,
    "aff_water" = -0.5,         -- weak

    -- magic spells
    "magic" = {
        "Thunder", "Thundara", "Gigavolt",
        "Thundaga", "Reflect", "Mighty Claw",
        "Plasma", "Wave Cannon"
    },

    -- Character's equipment
    "lhand" = ITEM_CRYSTAL_ORB,     -- Left hand weapon
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
    return ITEM_CRYSTAL_ORB
end