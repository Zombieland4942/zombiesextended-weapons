
local entity_base = util.table.deepcopy(data.raw["wall"]["stone-wall"])
local item_base = util.table.deepcopy(data.raw["item"]["stone-wall"])

for x, wall in pairs(walls) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = wall.name    
    --entity.icon = "__darkstar-weapons__/graphics/icons/" .. wall.name .. ".png"
    entity.minable.result = wall.name
    entity.max_health = wall.health
    
    item.name = wall.name
    --item.icon = "__darkstar-weapons__/graphics/icons/" .. wall.name .. ".png"
    item.place_result = wall.name
    item.order = wall.order
    item.subgroup = "ds-defence"

    data:extend({ entity, item })
end