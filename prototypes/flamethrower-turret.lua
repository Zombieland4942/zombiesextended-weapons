local entity_base = util.table.deepcopy(data.raw["fluid-turret"]["flamethrower-turret"])
local item_base = util.table.deepcopy(data.raw["item"]["flamethrower-turret"])

for x, flamethrower_turret in pairs(flamethrower_turrets) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = flamethrower_turret.name    
    entity.icon = "__zombiesextended-weapons__/graphics/icons/" .. flamethrower_turret.name .. ".png"
    entity.minable.result = flamethrower_turret.name
    
    entity.attack_parameters.min_range = flamethrower_turret.min_range
    entity.attack_parameters.range = flamethrower_turret.range
    entity.attack_parameters.fluid_consumption = flamethrower_turret.fluid_consumption
    entity.prepare_range = flamethrower_turret.range
    entity.attack_parameters.damage_modifier = flamethrower_turret.damage_modifier

    entity.base_picture.north.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/flamethrower-turret-base-north.png"
    entity.base_picture.north.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/hr-flamethrower-turret-base-north.png"    
    entity.base_picture.east.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/flamethrower-turret-base-east.png"
    entity.base_picture.east.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/hr-flamethrower-turret-base-east.png"
    entity.base_picture.south.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/flamethrower-turret-base-south.png"
    entity.base_picture.south.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/hr-flamethrower-turret-base-south.png"
    entity.base_picture.west.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/flamethrower-turret-base-west.png"
    entity.base_picture.west.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. flamethrower_turret.name .. "/hr-flamethrower-turret-base-west.png"

    item.name = flamethrower_turret.name
    item.icon = "__zombiesextended-weapons__/graphics/icons/" .. flamethrower_turret.name .. ".png"
    item.place_result = flamethrower_turret.name
    item.order = flamethrower_turret.order
    item.subgroup = "ds-turrets"
 
    table.insert(data.raw["technology"][flamethrower_turret.technology].effects, { type = "unlock-recipe", recipe = flamethrower_turret.name })

    data:extend({ entity, item,
        {
            type = "recipe",
            name = flamethrower_turret.name,
            enabled = false,
            energy_required = 5,
            ingredients = flamethrower_turret.ingredients,
            result = flamethrower_turret.name
        },
    })
end