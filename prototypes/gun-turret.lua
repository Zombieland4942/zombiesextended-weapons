local entity_base = util.table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
local item_base = util.table.deepcopy(data.raw["item"]["gun-turret"])

for x, gun_turret in pairs(gun_turrets) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = gun_turret.name    
    --entity.icon = "__zombiesextended-weapons__/graphics/icons/" .. gun_turret.name .. ".png"
    entity.minable.result = gun_turret.name
        
    entity.attack_parameters.range = gun_turret.range
    entity.attack_parameters.cooldown = 5

    item.name = gun_turret.name
    --item.icon = "__zombiesextended-weapons__/graphics/icons/" .. gun_turret.name .. ".png"
    item.place_result = gun_turret.name
    item.order = gun_turret.order
    item.subgroup = "ds-wall"
 
    --table.insert(data.raw["technology"][gun_turret.technology].effects, { type = "unlock-recipe", recipe = gun_turret.name })

    data:extend({ entity, item,
        {
            type = "recipe",
            name = gun_turret.name,
            enabled = false,
            energy_required = 5,
            ingredients = gun_turret.ingredients,
            result = gun_turret.name
        },
    })
end