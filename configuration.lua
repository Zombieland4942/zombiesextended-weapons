local science_t1 = {{"automation-science-pack",1}}
local science_t2 = {{"automation-science-pack",1},{"logistic-science-pack",1}}
local science_t3 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1}}
local science_t4 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1}}
local science_t5 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1}}
local science_t6 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1},{"space-science-pack",1}}

technologies = {
    { order = "a-a-a", name = "advanced-rifles-mk1", count = 600, time = 60, prerequisite = {"military-3"}, ingredients = science_t4 },
    { order = "a-a-b", name = "advanced-rifles-mk2", count = 600, time = 60, prerequisite = {"advanced-rifles-mk1"}, ingredients = science_t5 },

    { order = "a-b-a", name = "advanced-ammo-mk1", count = 600, time = 60, prerequisite = {"military-3","advanced-rifles-mk1"}, ingredients = science_t4 },
    { order = "a-b-b", name = "advanced-ammo-mk2", count = 800, time = 60, prerequisite = {"advanced-ammo-mk1","advanced-rifles-mk2"}, ingredients = science_t5 },
    { order = "a-b-c", name = "advanced-ammo-mk3", count = 1000, time = 60, prerequisite = {"advanced-ammo-mk2"}, ingredients = science_t5 },

    { order = "a-c-b", name = "advanced-nuclear-bombs-mk2", count = 16000, time = 60, prerequisite = {"advanced-nuclear-bombs-mk1"}, ingredients = science_t6 },

    { order = "a-d-a", name = "vibranium-walls-mk1", count = 200, time = 30, prerequisite = {"stone-walls"}, ingredients = science_t3 },
    { order = "a-d-b", name = "vibranium-walls-mk2", count = 200, time = 30, prerequisite = {"vibranium-walls-mk1"}, ingredients = science_t4 },
    { order = "a-d-c", name = "vibranium-walls-mk3", count = 200, time = 30, prerequisite = {"vibranium-walls-mk2"}, ingredients = science_t5 },

    { order = "a-e-a", name = "radar-mk1", count = 100, time = 60, prerequisite = {}, ingredients = science_t2 },
    { order = "a-e-b", name = "radar-mk2", count = 200, time = 60, prerequisite = {"radar-mk1"}, ingredients = science_t3 },
    { order = "a-e-c", name = "radar-mk3", count = 400, time = 60, prerequisite = {"radar-mk2"}, ingredients = science_t4 },
}

assault_rifle = 
{
    { order = "a", name = "assault-rifle-mk1", range = 40, cooldown = 10, ingredients = { {"submachine-gun",4} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "assault-rifle-mk2", range = 80, cooldown = 6, ingredients = { {"assault-rifle-mk1",2},{"vibranium-plate",20} }, technology = "advanced-rifles-mk2" }
}

assault_rifle_ammo = 
{
    { order = "c", name = "assault-ammo-mk1", damage_amount = 20, ingredients = { {"piercing-rounds-magazine",5} }, technology = "advanced-ammo-mk1" },
    { order = "d", name = "assault-ammo-mk2", damage_amount = 40, ingredients = { {"assault-ammo-mk1",5} }, technology = "advanced-ammo-mk2" },
    { order = "e", name = "assault-ammo-mk3", damage_amount = 80, ingredients = { {"assault-ammo-mk2",5},{"vibranium-plate",5} }, technology = "advanced-ammo-mk3" }
}

sniper_rifle = 
{
    { order = "a", name = "sniper-rifle-mk1", range = 70, cooldown = 20, ingredients = { {"assault-rifle-mk1",2} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "sniper-rifle-mk2", range = 140, cooldown = 15, ingredients = { {"sniper-rifle-mk1",2},{"vibranium-plate",20} }, technology = "advanced-rifles-mk2" }
}

sniper_rifle_ammo = 
{
    { order = "c", name = "sniper-ammo-mk1", damage_amount = 40, ingredients = { {"piercing-rounds-magazine",5} }, technology = "advanced-ammo-mk1" },
    { order = "d", name = "sniper-ammo-mk2", damage_amount = 80, ingredients = { {"sniper-ammo-mk1",5} }, technology = "advanced-ammo-mk2" },
    { order = "e", name = "sniper-ammo-mk3", damage_amount = 160, ingredients = { {"sniper-ammo-mk2",5},{"vibranium-plate",5} }, technology = "advanced-ammo-mk3" }
}

railgun_rifle = 
{
    { order = "a", name = "railgun-rifle-mk1", range = 50, cooldown = 240, ingredients = { {"assault-rifle-mk1",1},{"complex-processing-unit",5} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "railgun-rifle-mk2", range = 100, cooldown = 180, ingredients = { {"railgun-rifle-mk1",1},{"vibranium-plate",5} }, technology = "advanced-rifles-mk2" }
}

railgun_rifle_ammo = 
{
    { order = "c", name = "railgun-ammo-mk1", range = 25, width = 4, damage_amount = 300, ingredients = { {"uranium-rounds-magazine",5} }, technology = "advanced-ammo-mk1" },
    { order = "d", name = "railgun-ammo-mk2", range = 50, width = 12, damage_amount = 600, ingredients = { {"railgun-ammo-mk1",5},{"vibranium-plate",5} }, technology = "advanced-ammo-mk2" },
    { order = "e", name = "railgun-ammo-mk3", range = 100, width = 20, damage_amount = 1200, ingredients = { {"railgun-ammo-mk2",5},{"vibranium-plate",10} }, technology = "advanced-ammo-mk3" }
}

rocket_launcher = 
{
    { order = "a", name = "rocket-launcher-mk1", range = 80, cooldown = 60, ingredients = { {"rocket-launcher",2},{"complex-processing-unit",2} }, technology = "advanced-rifles-mk1" },
    { order = "b", name = "rocket-launcher-mk2", range = 160, cooldown = 40, ingredients = { {"rocket-launcher-mk1",2},{"vibranium-plate",10} }, technology = "advanced-rifles-mk2" }
}

rocket_projectile =
{
    { name = "antimatter-nuke-projectile-mk1", damage_amount = 800, radius = 80, repeat_count = 3000 },
    { name = "antimatter-nuke-projectile-mk2", damage_amount = 1600, radius = 160, repeat_count = 10000 }
}

rocket_ammo =
{
    { order ="c", name = "antimatter-nuke-mk1", projectile = "antimatter-nuke-projectile-mk1", ingredients = { {"atomic-bomb", 4},{"vibranium-plate",10},{"complex-processing-unit",10} }, technology = "advanced-nuclear-bombs-mk1" },
    { order ="d", name = "antimatter-nuke-mk2", projectile = "antimatter-nuke-projectile-mk2", ingredients = { {"antimatter-nuke-mk1", 4},{"vibranium-plate",20},{"complex-processing-unit",20} }, technology = "advanced-nuclear-bombs-mk2" }
}

walls =
{
    { order = "a-a", name = "wall-mk1", health = 700, ingredients = { {"stone-wall",2},{"vibranium-plate",2} }, technology = "vibranium-walls-mk1" },
    { order = "a-b", name = "wall-mk2", health = 1400, ingredients = { {"wall-mk1",2},{"vibranium-plate",2} }, technology = "vibranium-walls-mk2" },
    { order = "a-c", name = "wall-mk3", health = 2800, ingredients = { {"wall-mk2",2},{"vibranium-plate",2} }, technology = "vibranium-walls-mk3" },
}

gates =
{
    { order = "b-a", name = "gate-mk1", health = 700, ingredients = { {"gate",2},{"vibranium-plate",2} }, technology = "vibranium-walls-mk1" },
    { order = "b-b", name = "gate-mk2", health = 1400, ingredients = { {"gate-mk1",2},{"vibranium-plate",2} }, technology = "vibranium-walls-mk2" },
    { order = "b-c", name = "gate-mk3", health = 2800, ingredients = { {"gate-mk2",2},{"vibranium-plate",2} }, technology = "vibranium-walls-mk3" },
}

radars =
{
    { order = "c-a", name = "radar-mk1", health = 300, energy_con_kw = 400, constant_range = 4, max_range = 16, ingredients = { {"radar",2} }, technology = "radar-mk1" },
    { order = "c-b", name = "radar-mk2", health = 350, energy_con_kw = 500, constant_range = 6, max_range = 32, ingredients = { {"radar-mk1",2},{"vibranium-plate",5} }, technology = "radar-mk2" },
    { order = "c-c", name = "radar-mk3", health = 400, energy_con_kw = 600, constant_range = 8, max_range = 64, ingredients = { {"radar-mk2",2},{"vibranium-plate",10} }, technology = "radar-mk3" },
}