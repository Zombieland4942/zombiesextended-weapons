local entity_base = util.table.deepcopy(data.raw["electric-turret"]["laser-turret"])
local item_base = util.table.deepcopy(data.raw["item"]["laser-turret"])

for x, laser_turret in pairs(laser_turrets) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = laser_turret.name    
    entity.icon = "__zombiesextended-weapons__/graphics/icons/" .. laser_turret.name .. ".png"
    entity.minable.result = laser_turret.name        
    entity.attack_parameters.range = laser_turret.range
    entity.attack_parameters.damage_modifier = laser_turret.damage_modifier

    entity.base_picture.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. laser_turret.name .. "/laser-turret-base.png"
    entity.base_picture.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. laser_turret.name .. "/hr-laser-turret-base.png"

    item.name = laser_turret.name
    item.icon = "__zombiesextended-weapons__/graphics/icons/" .. laser_turret.name .. ".png"
    item.place_result = laser_turret.name
    item.order = laser_turret.order
    item.subgroup = "ds-turrets"
 
    table.insert(data.raw["technology"][laser_turret.technology].effects, { type = "unlock-recipe", recipe = laser_turret.name })

    data:extend({ entity, item,
        {
            type = "recipe",
            name = laser_turret.name,
            enabled = false,
            energy_required = 5,
            ingredients = laser_turret.ingredients,
            result = laser_turret.name
        },
    })
end