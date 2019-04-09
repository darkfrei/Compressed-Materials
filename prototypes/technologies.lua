-------------------------------------------------------------------------------
--[[Create Technologies]]--
-------------------------------------------------------------------------------
--local tech_cat = {ores=1, items=2, tiles=3, ammo=4, entities=5, modules=6, equipment=7}

-- changing 0.16 to 0.17:
-- "science-pack-1" to "automation-science-pack" (red potion)
-- "science-pack-2" to "logistic-science-pack" (green potion)
-- "science-pack-3" to "chemical-science-pack" (blue potion)

local tech1 = {
    --ores
    type = "technology",
    name = "compression", -- first one without index, see 0.17.23
    icon = "__compressor__/graphics/compress-tech.png",
    icon_size = 128,
    order = "z",
    effects = {},
    upgrade = true,
    prerequisites = {"logistics", "steel-processing"},
    unit =
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack",1},
        },
        time = 20
    }
}

local tech2 = {
    --items
    type = "technology",
    name = "compression-2",
    icon = "__compressor__/graphics/compress-tech.png",
    icon_size = 128,
    order = "z",
    effects = {},
    upgrade = true,
    prerequisites = {"logistics-2", "compression"}, -- first technology without index
    unit =
    {
        count = 150,
        ingredients =
        {
            {"automation-science-pack",1},
        },
        time = 20
    }
}

local tech3 = {
    --tiles
    type = "technology",
    name = "compression-3",
    icon = "__compressor__/graphics/compress-tech.png",
    icon_size = 128,
    order = "z",
    effects = {},
    upgrade = true,
    prerequisites = {"landfill", "compression-2"},
    unit =
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack",1},
        },
        time = 20
    }
}

local tech4 = {
    --ammo
    type = "technology",
    name = "compression-4",
    icon = "__compressor__/graphics/compress-tech.png",
    icon_size = 128,
    order = "z",
    effects = {},
    upgrade = true,
    prerequisites = {"military-2", "compression-3"},
    unit =
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack",1},
            {"logistic-science-pack",1},
            {"military-science-pack", 2}
        },
        time = 20
    }
}

local tech5 = {
    --entities
    type = "technology",
    name = "compression-5",
    icon = "__compressor__/graphics/compress-tech.png",
    icon_size = 128,
    order = "z",
    effects = {},
    upgrade = true,
    prerequisites = {"logistics-3", "compression-4"},
    unit =
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack",1},
            {"logistic-science-pack",1},
            {"production-science-pack", 2}
        },
        time = 20
    }
}

local tech6 = {
    --modules
    type = "technology",
    name = "compression-6",
    icon = "__compressor__/graphics/compress-tech.png",
    icon_size = 128,
    order = "z",
    effects = {},
    upgrade = true,
    prerequisites = {"modules", "compression-5"},
    unit =
    {
        count = 150,
        ingredients =
        {
            {"automation-science-pack",1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"high-tech-science-pack", 2}
        },
        time = 20
    }
}

local tech7 = {
    --equipment
    type = "technology",
    name = "compression-7",
    icon = "__compressor__/graphics/compress-tech.png",
    icon_size = 128,
    order = "z",
    effects = {},
    upgrade = true,
    prerequisites = {"heavy-armor", "compression-6"},
    unit =
    {
        count = 400,
        ingredients =
        {
            {"automation-science-pack",1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1}
        },
        time = 20
    }
}

data:extend({tech1, tech2, tech3, tech4, tech5, tech6, tech7})
