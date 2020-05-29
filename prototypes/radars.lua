data.raw["radar"]["radar"].fast_replaceable_group = 'radar'

local entity_base = util.table.deepcopy(data.raw["radar"]["radar"])
local item_base = util.table.deepcopy(data.raw["item"]["radar"])

for x, radar in pairs(radars) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = radar.name    
    entity.icon = "__darkstar-weapons__/graphics/icons/" .. radar.name .. ".png"
    entity.minable.result = radar.name
    entity.max_health = radar.health
    entity.energy_usage = radar.energy_con_kw .. "kW"
    entity.max_distance_of_nearby_sector_revealed = radar.constant_range 
    entity.max_distance_of_sector_revealed = radar.max_range
    entity.fast_replaceable_group = 'radar'
    
    entity.pictures.layers[1].filename = "__darkstar-weapons__/graphics/entity/" .. radar.name .. "/radar.png"
    entity.pictures.layers[1].hr_version.filename = "__darkstar-weapons__/graphics/entity/" .. radar.name .. "/hr-radar.png"

    item.name = radar.name
    item.icon = "__darkstar-weapons__/graphics/icons/" .. radar.name .. ".png"
    item.place_result = radar.name
    item.order = radar.order
    item.subgroup = "ds-radar"

    data:extend({ entity, item })
end