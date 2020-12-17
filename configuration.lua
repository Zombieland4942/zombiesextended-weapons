local science_t1 = {{"automation-science-pack",1}}
local science_t2 = {{"automation-science-pack",1},{"logistic-science-pack",1}}
local science_t3 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1}}
local science_t4 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1}}
local science_t5 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"utility-science-pack",1}}
local science_t6 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1}}
local science_t7 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1},{"space-science-pack",1}}

technologies = {
    { order = "a-a-a", name = "advanced-rifles-mk1", count = 1200, time = 60, prerequisite = {"military-3"}, ingredients = science_t3 },
    { order = "a-a-b", name = "advanced-rifles-mk2", count = 1600, time = 60, prerequisite = {"advanced-rifles-mk1"}, ingredients = science_t5 },

    { order = "a-b-c", name = "advanced-ammo-mk3", count = 1000, time = 60, prerequisite = {"advanced-rifles-mk2"}, ingredients = science_t6 },

    { order = "a-c-a", name = "advanced-nuclear-bombs-mk1", count = 10000, time = 60, prerequisite = {"atomic-bomb"}, ingredients = science_t7 },
    
    { order = "a-d-a", name = "vibranium-walls-mk1", count = 200, time = 30, prerequisite = {"stone-wall"}, ingredients = science_t3 },
    { order = "a-d-b", name = "vibranium-walls-mk2", count = 200, time = 30, prerequisite = {"vibranium-walls-mk1"}, ingredients = science_t5 },
    { order = "a-d-c", name = "vibranium-walls-mk3", count = 200, time = 30, prerequisite = {"vibranium-walls-mk2"}, ingredients = science_t6 },

    { order = "a-e-a", name = "radar-mk1", count = 100, time = 60, prerequisite = {}, ingredients = science_t2 },
    { order = "a-e-b", name = "radar-mk2", count = 200, time = 60, prerequisite = {"radar-mk1"}, ingredients = science_t3 },
    { order = "a-e-c", name = "radar-mk3", count = 400, time = 60, prerequisite = {"radar-mk2"}, ingredients = science_t5 },

    { order = "a-f-a", name = "turrets-mk1", count = 200, time = 30, prerequisite = {"gun-turret","laser-turret","flamethrower"}, ingredients = science_t3 },
    { order = "a-f-b", name = "turrets-mk2", count = 400, time = 30, prerequisite = {"turrets-mk1"}, ingredients = science_t5 },
}

-- Need to mod some vanilla items in order for the upgrade planner to work
data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group = "turret"
data.raw["ammo-turret"]["gun-turret"].next_upgrade = "gun-turret-mk1"
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "turret"
data.raw["electric-turret"]["laser-turret"].next_upgrade = "laser-turret-mk1"
data.raw["fluid-turret"]["flamethrower-turret"].fast_replaceable_group = "flame-turret"
data.raw["fluid-turret"]["flamethrower-turret"].next_upgrade = "flamethrower-turret-mk1"
data.raw["gate"]["gate"].fast_replaceable_group = "gate"
data.raw["gate"]["gate"].next_upgrade = "gate-mk1"
data.raw["wall"]["stone-wall"].fast_replaceable_group = "wall"
data.raw["wall"]["stone-wall"].next_upgrade = "wall-mk1"
data.raw["radar"]["radar"].fast_replaceable_group = "radar"
data.raw["radar"]["radar"].next_upgrade = "radar-mk1"

assault_rifle = 
{
    { order = "a", name = "assault-rifle-mk1", icon_teir="teir-1", range = 40, cooldown = 10, ingredients = { {"submachine-gun",4} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "assault-rifle-mk2", icon_teir="teir-2", range = 80, cooldown = 6, ingredients = { {"assault-rifle-mk1",2},{"vibranium-plate",20} }, technology = "advanced-rifles-mk2" }
}

assault_rifle_ammo = 
{
    { order = "c", name = "assault-ammo-mk1", damage_amount = 20, ingredients = { {"piercing-rounds-magazine",2} }, technology = "advanced-rifles-mk1" },
    { order = "d", name = "assault-ammo-mk2", damage_amount = 40, ingredients = { {"assault-ammo-mk1",2},{"vibranium-plate",5} }, technology = "advanced-rifles-mk2" },
    { order = "e", name = "assault-ammo-mk3", damage_amount = 80, ingredients = { {"assault-ammo-mk2",2},{"vibranium-plate",5} }, technology = "advanced-ammo-mk3" }
}

sniper_rifle = 
{
    { order = "a", name = "sniper-rifle-mk1", icon_teir="teir-1", range = 70, cooldown = 20, ingredients = { {"assault-rifle-mk1",2} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "sniper-rifle-mk2", icon_teir="teir-2", range = 140, cooldown = 15, ingredients = { {"sniper-rifle-mk1",2},{"vibranium-plate",20} }, technology = "advanced-rifles-mk2" }
}

sniper_rifle_ammo = 
{
    { order = "c", name = "sniper-ammo-mk1", damage_amount = 40, ingredients = { {"piercing-rounds-magazine",5} }, technology = "advanced-rifles-mk1" },
    { order = "d", name = "sniper-ammo-mk2", damage_amount = 80, ingredients = { {"sniper-ammo-mk1",5} }, technology = "advanced-rifles-mk2" },
    { order = "e", name = "sniper-ammo-mk3", damage_amount = 160, ingredients = { {"sniper-ammo-mk2",5},{"vibranium-plate",5} }, technology = "advanced-ammo-mk3" }
}

railgun_rifle = 
{
    { order = "a", name = "railgun-rifle-mk1", icon_teir="teir-1", range = 50, cooldown = 240, ingredients = { {"assault-rifle-mk1",1},{"complex-processing-unit",5} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "railgun-rifle-mk2", icon_teir="teir-2", range = 100, cooldown = 180, ingredients = { {"railgun-rifle-mk1",1},{"vibranium-plate",5} }, technology = "advanced-rifles-mk2" }
}

railgun_rifle_ammo = 
{
    { order = "c", name = "railgun-ammo-mk1", range = 25, width = 4, damage_amount = 300, ingredients = { {"uranium-rounds-magazine",5} }, technology = "advanced-rifles-mk1" },
    { order = "d", name = "railgun-ammo-mk2", range = 50, width = 12, damage_amount = 600, ingredients = { {"railgun-ammo-mk1",5},{"vibranium-plate",5} }, technology = "advanced-rifles-mk2" },
    { order = "e", name = "railgun-ammo-mk3", range = 100, width = 20, damage_amount = 1200, ingredients = { {"railgun-ammo-mk2",5},{"vibranium-plate",10} }, technology = "advanced-ammo-mk3" }
}

rocket_launcher = 
{
    { order = "a", name = "rocket-launcher-mk1", icon_teir="teir-1", range = 80, cooldown = 60, ingredients = { {"rocket-launcher",2},{"complex-processing-unit",2} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "rocket-launcher-mk2", icon_teir="teir-2", range = 160, cooldown = 40, ingredients = { {"rocket-launcher-mk1",2},{"vibranium-plate",10} }, technology = "advanced-rifles-mk2" }
}

rocket_projectile =
{
    { name = "antimatter-nuke-projectile-mk1", damage_amount = 1000, radius = 80, crater_size = 20, flash_duration = 100, flash_max_distance = 1500, flash_strength = 10 }
}

rocket_ammo =
{
    { order ="c", name = "antimatter-nuke-mk1", projectile = "antimatter-nuke-projectile-mk1", ingredients = { {"atomic-bomb", 4},{"nuclear-fuel-mk3", 5},{"vibranium-plate",10},{"complex-processing-unit",10},{"plutonium",100} }, technology = "advanced-nuclear-bombs-mk1" }
}

gun_turrets =
{
    { order ="a-a", name = "gun-turret-mk1", range = 25, cooldown = 5, damage_modifier = 1.5, next_upgrade = "gun-turret-mk2", ingredients = { {"gun-turret", 2},{"vibranium-plate",5} }, technology = "turrets-mk1" },
    { order ="a-b", name = "gun-turret-mk2", range = 35, cooldown = 4, damage_modifier = 2, next_upgrade = "", ingredients = { {"gun-turret-mk1", 2},{"vibranium-plate",10} }, technology = "turrets-mk2" }
}

laser_turrets =
{
    { order ="b-a", name = "laser-turret-mk1", range = 30, cooldown = 30, damage_modifier = 3, energy_consumption = "1000kJ", next_upgrade = "laser-turret-mk2", ingredients = { {"laser-turret", 2},{"vibranium-plate",5} }, technology = "turrets-mk1" },
    { order ="b-b", name = "laser-turret-mk2", range = 45, cooldown = 20, damage_modifier = 4, energy_consumption = "1200kJ", next_upgrade = "", ingredients = { {"laser-turret-mk1", 2},{"vibranium-plate",10} }, technology = "turrets-mk2" }
}

flamethrower_turrets =
{
    { order ="c-a", name = "flamethrower-turret-mk1", min_range = 10, range = 38, cooldown = 3, damage_modifier = 1.5, fluid_consumption = 0.3, next_upgrade = "flamethrower-turret-mk2", ingredients = { {"flamethrower-turret", 2},{"vibranium-plate",5} }, technology = "turrets-mk1" },
    { order ="c-b", name = "flamethrower-turret-mk2", min_range = 15, range = 45, cooldown = 2, damage_modifier = 2, fluid_consumption = 0.4, next_upgrade = "", ingredients = { {"flamethrower-turret-mk1", 2},{"vibranium-plate",10} }, technology = "turrets-mk2" }
}

walls =
{
    { order = "a-a", name = "wall-mk1", health = 500, next_upgrade = "wall-mk2", ingredients = { {"stone-wall",2},{"vibranium-plate",1} }, technology = "vibranium-walls-mk1" },
    { order = "a-b", name = "wall-mk2", health = 1000, next_upgrade = "wall-mk3", ingredients = { {"wall-mk1",2},{"vibranium-plate",1} }, technology = "vibranium-walls-mk2" },
    { order = "a-c", name = "wall-mk3", health = 1500, next_upgrade = "", ingredients = { {"wall-mk2",2},{"vibranium-plate",1} }, technology = "vibranium-walls-mk3" },
}

gates =
{
    { order = "b-a", name = "gate-mk1", health = 500, next_upgrade = "gate-mk2", ingredients = { {"gate",2},{"vibranium-plate",1} }, technology = "vibranium-walls-mk1" },
    { order = "b-b", name = "gate-mk2", health = 1000, next_upgrade = "gate-mk3", ingredients = { {"gate-mk1",2},{"vibranium-plate",1} }, technology = "vibranium-walls-mk2" },
    { order = "b-c", name = "gate-mk3", health = 1500, next_upgrade = "", ingredients = { {"gate-mk2",2},{"vibranium-plate",1} }, technology = "vibranium-walls-mk3" },
}

radars =
{
    { order = "c-a", name = "radar-mk1", health = 300, energy_con_kw = 400, constant_range = 4, max_range = 16, next_upgrade = "radar-mk2", ingredients = { {"radar",2} }, technology = "radar-mk1" },
    { order = "c-b", name = "radar-mk2", health = 350, energy_con_kw = 500, constant_range = 6, max_range = 32, next_upgrade = "radar-mk3", ingredients = { {"radar-mk1",2},{"vibranium-plate",5} }, technology = "radar-mk2" },
    { order = "c-c", name = "radar-mk3", health = 400, energy_con_kw = 600, constant_range = 8, max_range = 64, next_upgrade = "", ingredients = { {"radar-mk2",2},{"vibranium-plate",10} }, technology = "radar-mk3" },
}