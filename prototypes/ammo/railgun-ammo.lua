
for x,railgun_ammo in pairs(railgun_rifle_ammo) do
    data:extend(
        {
            {
                type = "ammo",
                name = railgun_ammo.name,
                icon = "__darkstar-weapons__/graphics/icons/" .. railgun_ammo.name .. ".png",
                icon_size = 64, 
                icon_mipmaps = 4,
                ammo_type =
                {
                    category = "railgun",
                    target_type = "direction",
                    clamp_position = true,
                    action =
                    {
                        type = "line",
                        range = railgun_ammo.range,
                        width = railgun_ammo.width,

                        source_effects =
                        {
                            type = "create-explosion",
                            entity_name = "railgun-beam"
                        },
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                type = "damage",
                                damage = { amount = railgun_ammo.damage_amount, type="physical"}
                            }
                        }
                    }
                },
                magazine_size = 4,
                subgroup = "ds-railgun",
                order = railgun_ammo.order,
                stack_size = 200
            }
        }
    )
end