

local entity_base = util.table.deepcopy(data.raw["gate"]["gate"])
local item_base = util.table.deepcopy(data.raw["item"]["gate"])

for x, gate in pairs(gates) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = gate.name    
    --entity.icon = "__darkstar-weapons__/graphics/icons/" .. gate.name .. ".png"
    entity.minable.result = gate.name
    entity.max_health = gate.health
    
    item.name = gate.name
    --item.icon = "__darkstar-weapons__/graphics/icons/" .. gate.name .. ".png"
    item.place_result = gate.name
    item.order = gate.order
    item.subgroup = "ds-defence"

    data:extend({ entity, item })
end