

local entity_base = util.table.deepcopy(data.raw["gate"]["gate"])
local item_base = util.table.deepcopy(data.raw["item"]["gate"])

for x, gate in pairs(gates) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = gate.name    
    entity.icon = "__zombiesextended-weapons__/graphics/icons/" .. gate.name .. ".png"
    entity.minable.result = gate.name
    entity.max_health = gate.health
    entity.next_upgrade = gate.next_upgrade

    entity.vertical_animation.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/gate-vertical.png"
    entity.vertical_animation.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-vertical.png"    
    entity.horizontal_animation.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/gate-horizontal.png"
    entity.horizontal_animation.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-horizontal.png"
    entity.horizontal_rail_animation_left.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-horizontal-left.png"
    entity.horizontal_rail_animation_left.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-horizontal-left.png"
    entity.horizontal_rail_animation_right.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-horizontal-right.png"
    entity.horizontal_rail_animation_right.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-horizontal-right.png"
    entity.vertical_rail_animation_left.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-vertical-left.png"
    entity.vertical_rail_animation_left.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-vertical-left.png"
    entity.vertical_rail_animation_right.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/gate-rail-vertical-right.png"
    entity.vertical_rail_animation_right.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-rail-vertical-right.png"
    entity.wall_patch.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/gate-wall-patch.png"
    entity.wall_patch.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. gate.name .. "/hr-gate-wall-patch.png"

    item.name = gate.name
    item.icon = "__zombiesextended-weapons__/graphics/icons/" .. gate.name .. ".png"
    item.place_result = gate.name
    item.order = item.order .. gate.order

    if settings.startup["zombies-use-seperate-tab"].value == true then        
        item.subgroup = "ds-wall"
    end
    
    table.insert(data.raw["technology"][gate.technology].effects, { type = "unlock-recipe", recipe = gate.name })

    data:extend({ entity, item,
        {
            type = "recipe",
            name = gate.name,
            enabled = false,
            energy_required = gate.craft_time,
            ingredients = gate.ingredients,
            result = gate.name
        },
    })
end