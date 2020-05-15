data:extend(
{   
    {
        type = "ammo-category",
        name = "sniper-round"
    },
    {
        type = "ammo",
        name = "sniper-round-mk1",
        icon = "__darkstar-weapons__/graphics/icons/sniper-round-mk1.png",
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
                            damage = { amount = 40, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ds-sniper",
        order = "c",
        stack_size = 200
    },
    {
        type = "ammo",
        name = "sniper-round-mk2",
        icon = "__darkstar-weapons__/graphics/icons/sniper-round-mk2.png",
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
                            damage = { amount = 70, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ds-sniper",
        order = "d",
        stack_size = 200
    },
    {
        type = "ammo",
        name = "sniper-round-mk3",
        icon = "__darkstar-weapons__/graphics/icons/sniper-round-mk3.png",
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
                            damage = { amount = 100, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ds-sniper",
        order = "e",
        stack_size = 200
    },
}
)