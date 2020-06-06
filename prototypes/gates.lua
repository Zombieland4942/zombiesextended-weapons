

local entity_base = util.table.deepcopy(data.raw["gate"]["gate"])
local item_base = util.table.deepcopy(data.raw["item"]["gate"])

for x, gate in pairs(gates) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = gate.name    
    entity.icon = "__darkstar-weapons__/graphics/icons/" .. gate.name .. ".png"
    entity.minable.result = gate.name
    entity.max_health = gate.health

    entity.vertical_animation.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/gate-vertical.png"
    entity.vertical_animation.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-vertical.png"    
    entity.horizontal_animation.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/gate-horizontal.png"
    entity.horizontal_animation.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-horizontal.png"
    entity.horizontal_rail_animation_left.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-horizontal-left.png"
    entity.horizontal_rail_animation_left.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-horizontal-left.png"
    entity.horizontal_rail_animation_right.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-horizontal-right.png"
    entity.horizontal_rail_animation_right.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-horizontal-right.png"
    entity.vertical_rail_animation_left.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-vertical-left.png"
    entity.vertical_rail_animation_left.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-vertical-left.png"
    entity.vertical_rail_animation_right.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-vertical-right.png"
    entity.vertical_rail_animation_right.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-vertical-right.png"
    entity.wall_patch.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/gate-wall-patch.png"
    entity.wall_patch.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-wall-patch.png"

    item.name = gate.name
    item.icon = "__darkstar-weapons__/graphics/icons/" .. gate.name .. ".png"
    item.place_result = gate.name
    item.order = gate.order
    item.subgroup = "ds-wall"
 
    table.insert(data.raw["technology"][gate.technology].effects, { type = "unlock-recipe", recipe = gate.name })

    data:extend({ entity, item,
        {
            type = "recipe",
            name = gate.name,
            enabled = false,
            energy_required = 5,
            ingredients = gate.ingredients,
            result = gate.name
        },
    })
end