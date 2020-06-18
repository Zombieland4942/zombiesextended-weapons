
local entity_base = util.table.deepcopy(data.raw["wall"]["stone-wall"])
local item_base = util.table.deepcopy(data.raw["item"]["stone-wall"])

for x, wall in pairs(walls) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = wall.name    
    entity.icon = "__zombiesextended-weapons__/graphics/icons/" .. wall.name .. ".png"
    entity.minable.result = wall.name
    entity.max_health = wall.health
    
    entity.pictures.single.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-single.png"
    entity.pictures.single.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-single.png"
    entity.pictures.straight_vertical.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-vertical.png"
    entity.pictures.straight_vertical.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-vertical.png"
    entity.pictures.straight_horizontal.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-horizontal.png"
    entity.pictures.straight_horizontal.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-horizontal.png"
    entity.pictures.corner_right_down.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-corner-right.png"
    entity.pictures.corner_right_down.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-corner-right.png"
    entity.pictures.corner_left_down.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-corner-left.png"
    entity.pictures.corner_left_down.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-corner-left.png"
    entity.pictures.t_up.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-t.png"
    entity.pictures.t_up.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-t.png"
    entity.pictures.ending_right.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-ending-right.png"
    entity.pictures.ending_right.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-ending-right.png"
    entity.pictures.ending_left.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-ending-left.png"
    entity.pictures.ending_left.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-ending-left.png"    
    entity.pictures.filling.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-filling.png"
    entity.pictures.filling.hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-filling.png"    
    entity.pictures.water_connection_patch.sheets[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-patch.png"
    entity.pictures.water_connection_patch.sheets[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-patch.png" 
    entity.pictures.gate_connection_patch.sheets[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/wall-gate.png"
    entity.pictures.gate_connection_patch.sheets[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. wall.name .. "/hr-wall-gate.png"

    item.name = wall.name
    item.icon = "__zombiesextended-weapons__/graphics/icons/" .. wall.name .. ".png"
    item.place_result = wall.name
    item.order = wall.order
    item.subgroup = "ds-wall"
 
    table.insert(data.raw["technology"][wall.technology].effects, { type = "unlock-recipe", recipe = wall.name })

    data:extend({ entity, item,
        {
            type = "recipe",
            name = wall.name,
            enabled = false,
            energy_required = 5,
            ingredients = wall.ingredients,
            result = wall.name
        },
    })
end