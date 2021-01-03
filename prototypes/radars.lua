
local entity_base = util.table.deepcopy(data.raw["radar"]["radar"])
local item_base = util.table.deepcopy(data.raw["item"]["radar"])

for x, radar in pairs(radars) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = radar.name    
    entity.icon = "__zombiesextended-weapons__/graphics/icons/" .. radar.name .. ".png"
    entity.minable.result = radar.name
    entity.max_health = radar.health
    entity.energy_usage = radar.energy_con_kw .. "kW"
    entity.max_distance_of_nearby_sector_revealed = radar.constant_range 
    entity.max_distance_of_sector_revealed = radar.max_range
    entity.fast_replaceable_group = 'radar'
    entity.next_upgrade = radar.next_upgrade

    entity.pictures.layers[1].filename = "__zombiesextended-weapons__/graphics/entity/" .. radar.name .. "/radar.png"
    entity.pictures.layers[1].hr_version.filename = "__zombiesextended-weapons__/graphics/entity/" .. radar.name .. "/hr-radar.png"

    item.name = radar.name
    item.icon = "__zombiesextended-weapons__/graphics/icons/" .. radar.name .. ".png"
    item.place_result = radar.name
     item.order = item.order .. radar.order

    if settings.startup["zombies-use-seperate-tab"].value == true then        
        item.subgroup = "ds-radar"
    end
    
    table.insert(data.raw["technology"][radar.technology].effects, { type = "unlock-recipe", recipe = radar.name })

    data:extend({ entity, item,
        {
            type = "recipe",
            name = radar.name,
            enabled = false,
            energy_required = radar.craft_time,
            ingredients = radar.ingredients,
            result = radar.name
        }
    })
end