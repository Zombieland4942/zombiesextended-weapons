data:extend(
{
    {
        type = "ammo",
        name = "magazine-mk1",
        icon = "__darkstar-weapons__/graphics/icons/magazine-mk1.png",
        icon_size = 64, icon_mipmaps = 4,
        ammo_type =
        {
            category = "bullet",
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
                            damage = { amount = 20, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ds-assult",
        order = "c",
        stack_size = 200
    },
    {
        type = "ammo",
        name = "magazine-mk2",
        icon = "__darkstar-weapons__/graphics/icons/magazine-mk2.png",
        icon_size = 64, icon_mipmaps = 4,
        ammo_type =
        {
            category = "bullet",
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
                            damage = { amount = 40, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ds-assult",
        order = "d",
        stack_size = 200
    },
    {
        type = "ammo",
        name = "magazine-mk3",
        icon = "__darkstar-weapons__/graphics/icons/magazine-mk3.png",
        icon_size = 64, icon_mipmaps = 4,
        ammo_type =
        {
            category = "bullet",
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
                            damage = { amount = 60, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ds-assult",
        order = "e",
        stack_size = 200
    },
}
)