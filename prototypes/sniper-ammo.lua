data:extend(
    {   
        {
            type = "ammo-category",
            name = "sniper-round"
        }
    }
)

local subgroup = "ammo"

if settings.startup["zombies-use-seperate-tab"].value == true then        
    subgroup = "ds-sniper"
end

for x,ammo in pairs(sniper_rifle_ammo) do
     
    table.insert(data.raw["technology"][ammo.technology].effects, { type = "unlock-recipe", recipe = ammo.name })

    data:extend(
        {
            {
                type = "recipe",
                name = ammo.name,
                enabled = false,
                energy_required = 5,
                ingredients = ammo.ingredients,
                result = ammo.name
            },
            {
                type = "ammo",
                name = ammo.name,
                icon = "__zombiesextended-weapons__/graphics/icons/" .. ammo.name .. ".png",
                icon_size = 64, icon_mipmaps = 4,
                ammo_type =
                {
                    category = "sniper-round",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            source_effects =
                            {
                                type = "create-explosion",
                                entity_name = "explosion-gunshot"
                            },
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "explosion-hit",
                                    offsets = {{0, 1}},
                                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                                },
                                {
                                    type = "damage",
                                    damage = { amount = ammo.damage_amount, type = "physical"}
                                }
                            }
                        }
                    }
                },
                magazine_size = 10,
                subgroup = subgroup,
                order = "a[basic-clips]-" .. ammo.order,
                stack_size = 200
            }
        }
    )
end