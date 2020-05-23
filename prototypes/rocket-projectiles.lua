
for x,projectile in pairs(rocket_projectile) do
    data:extend(
        {
            {
                type = "projectile",
                name = projectile.name,
                flags = {"not-on-map"},
                acceleration = 0.005,
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                repeat_count = 300,
                                type = "create-trivial-smoke",
                                smoke_name = "nuclear-smoke",
                                offset_deviation = {{-1, -1}, {1, 1}},
                                starting_frame = 3,
                                starting_frame_deviation = 5,
                                starting_frame_speed = 0,
                                starting_frame_speed_deviation = 5,
                                speed_from_center = 0.5
                            },
                            {
                                type = "create-entity",
                                entity_name = "explosion"
                            },
                            {
                                type = "damage",
                                damage = {amount = projectile.damage_amount, type = "explosion"}
                            },
                            {
                                type = "create-entity",
                                entity_name = "big-scorchmark-tintable",
                                check_buildability = true
                            },
                            {
                                type = "invoke-tile-trigger",
                                repeat_count = 1,
                            },
                            {
                                type = "destroy-decoratives",
                                from_render_layer = "decorative",
                                to_render_layer = "object",
                                include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                                include_decals = false,
                                invoke_decorative_trigger = true,
                                decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                                radius = 7 -- large radius for demostrative purposes
                            },
                            {
                                type = "nested-result",
                                action =
                                {
                                    type = "area",
                                    target_entities = false,
                                    trigger_from_target = true,
                                    repeat_count = projectile.repeat_count,
                                    radius = projectile.radius,
                                    action_delivery =
                                    {
                                        type = "projectile",
                                        projectile = "atomic-bomb-wave",
                                        starting_speed = 1
                                    }
                                }
                            }
                        }
                    }
                },
                light = {intensity = 0.8, size = 15},
                animation =
                {
                    filename = "__base__/graphics/entity/rocket/rocket.png",
                    frame_count = 8,
                    line_length = 8,
                    width = 9,
                    height = 35,
                    shift = {0, 0},
                    priority = "high"
                },
                shadow =
                {
                    filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
                    frame_count = 1,
                    width = 7,
                    height = 24,
                    priority = "high",
                    shift = {0, 0}
                },
                smoke =
                {
                    {
                        name = "smoke-fast",
                        deviation = {0.15, 0.15},
                        frequency = 1,
                        position = {0, 1},
                        slow_down_factor = 1,
                        starting_frame = 3,
                        starting_frame_deviation = 5,
                        starting_frame_speed = 0,
                        starting_frame_speed_deviation = 5
                    }
                }
            },
        }
    )
end