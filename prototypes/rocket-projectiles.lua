
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
                                type = "set-tile",
                                apply_projection = true,
                                radius = projectile.crater_size,
                                tile_collision_mask = {
                                    "water-tile"
                                },
                                tile_name = "nuclear-ground",
                            },
                            {
                                type = "destroy-cliffs",
                                explosion = "explosion",
                                radius = projectile.crater_size,
                            },
                            {
                                type = "create-entity",
                                entity_name = "nuke-explosion",
                            },
                            {
                                type = "camera-effect",
                                delay = 0,
                                duration = projectile.flash_duration,
                                ease_in_duration = 5,
                                ease_out_duration = 60,
                                effect = "screen-burn",
                                full_strength_max_distance = 400,
                                max_distance = projectile.flash_max_distance,
                                strength = projectile.flash_strength,
                            },
                            {
                                type = "play-sound",
                                audible_distance_modifier = 3,
                                max_distance = projectile.flash_max_distance + 500,
                                play_on_target_position = false,
                                sound = {
                                    aggregation = {
                                        max_count = 1,
                                        remove = true
                                    },
                                    variations = {
                                        {
                                            filename = "__base__/sound/fight/nuclear-explosion-1.ogg",
                                            volume = 0.9
                                        },
                                        {
                                            filename = "__base__/sound/fight/nuclear-explosion-2.ogg",
                                            volume = 0.9
                                        },
                                        {
                                            filename = "__base__/sound/fight/nuclear-explosion-3.ogg",
                                            volume = 0.9
                                        }
                                    }
                                },
                            },
                            {
                                type = "play-sound",
                                audible_distance_modifier = 3,
                                max_distance = projectile.flash_max_distance + 1000,
                                play_on_target_position = false,
                                sound = {
                                    aggregation = {
                                        max_count = 1,
                                        remove = true
                                    },
                                    variations = {
                                        {
                                            filename = "__base__/sound/fight/nuclear-explosion-aftershock.ogg",
                                            volume = 0.4
                                        }
                                    }
                                },
                            },
                            {            
                                type = "damage",
                                damage = {
                                    type = "explosion",
                                    amount = projectile.damage_amount
                                }
                            },
                            {
                                type = "invoke-tile-trigger",
                                repeat_count = 1,
                            },
                            {
                                type = "destroy-decoratives",
                                decoratives_with_trigger_only = false,
                                include_decals = true,
                                include_soft_decoratives = true,
                                invoke_decorative_trigger = true,
                                radius = projectile.crater_size,
                            },
                            {
                                type = "create-decorative",
                                apply_projection = true,
                                decorative = "nuclear-ground-patch",
                                spawn_max = projectile.crater_size,
                                spawn_max_radius = projectile.crater_size/2,
                                spawn_min = projectile.crater_size - (projectile.crater_size/3),
                                spawn_min_radius = projectile.crater_size/3,
                                spread_evenly = true,
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    action_delivery = {
                                        type = "projectile",
                                        projectile = "atomic-bomb-ground-zero-projectile",
                                        starting_speed = 0.47999999999999998,
                                        starting_speed_deviation = 0.075,
                                    },
                                    radius = projectile.radius,
                                    repeat_count = 2000,
                                    target_entities = false,
                                    trigger_from_target = true,
                                },
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    action_delivery = {
                                        type = "projectile",
                                        projectile = "atomic-bomb-wave",
                                        starting_speed = 0.6,
                                        starting_speed_deviation = 0.075,
                                    },
                                    radius = projectile.radius,
                                    repeat_count = 5000,
                                    target_entities = false,
                                    trigger_from_target = true,
                                },
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    action_delivery = {
                                        type = "projectile",
                                        projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                                        starting_speed = 0.6,
                                        starting_speed_deviation = 0.075,
                                    },
                                    radius = projectile.radius,
                                    repeat_count = 2000,
                                    show_in_tooltip = false,
                                    target_entities = false,
                                    trigger_from_target = true,
                                },
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    action_delivery = {
                                        type = "projectile",
                                        projectile = "atomic-bomb-wave-spawns-fire-smoke-explosion",
                                        starting_speed = 0.6,
                                        starting_speed_deviation = 0.075,
                                    },
                                    radius = projectile.radius,
                                    repeat_count = 10000,
                                    show_in_tooltip = false,
                                    target_entities = false,
                                    trigger_from_target = true,
                                },
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    action_delivery = {
                                        type = "projectile",
                                        projectile = "atomic-bomb-wave-spawns-nuke-shockwave-explosion",
                                        starting_speed = 0.6,
                                        starting_speed_deviation = 0.075,
                                    },
                                    radius = projectile.radius,
                                    repeat_count = 3000,
                                    show_in_tooltip = false,
                                    target_entities = false,
                                    trigger_from_target = true,
                                },
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    action_delivery = {
                                        type = "projectile",
                                        projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                                        starting_speed = 0.6,
                                        starting_speed_deviation = 0.075,
                                    },
                                    radius = projectile.radius/4,
                                    repeat_count = 300,
                                    show_in_tooltip = false,
                                    target_entities = false,
                                    trigger_from_target = true
                                },
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    action_delivery = {
                                        type = "instant",
                                        target_effects = {
                                            {
                                                type = "create-entity",
                                                entity_name = "nuclear-smouldering-smoke-source",
                                                tile_collision_mask = {
                                                    "water-tile"
                                                },
                                            },
                                        },
                                    },
                                    radius = projectile.crater_size,
                                    repeat_count = projectile.crater_size*8,
                                    show_in_tooltip = false,
                                    target_entities = false,
                                    trigger_from_target = true
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