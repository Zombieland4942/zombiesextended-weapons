assault_rifle = 
{
    { order = "a", name = "assault-rifle-mk1", range = 50, cooldown = 10 },
    { order = "b", name = "assault-rifle-mk2", range = 70, cooldown = 7 }
}

assault_rifle_ammo = 
{
    { order = "c", name = "assault-ammo-mk1", damage_amount = 20 },
    { order = "d", name = "assault-ammo-mk2", damage_amount = 40 },
    { order = "e", name = "assault-ammo-mk3", damage_amount = 60 }
}

sniper_rifle = 
{
    { order = "a", name = "sniper-rifle-mk1", range = 60, cooldown = 20 },
    { order = "b", name = "sniper-rifle-mk2", range = 90, cooldown = 15 }
}

sniper_rifle_ammo = 
{
    { order = "c", name = "sniper-ammo-mk1", damage_amount = 40 },
    { order = "d", name = "sniper-ammo-mk2", damage_amount = 70 },
    { order = "e", name = "sniper-ammo-mk3", damage_amount = 100 }
}

railgun_rifle = 
{
    { order = "a", name = "railgun-rifle-mk1", range = 50, cooldown = 180 },
    { order = "b", name = "railgun-rifle-mk2", range = 70, cooldown = 60 }
}

railgun_rifle_ammo = 
{
    { order = "c", name = "railgun-ammo-mk1", range = 25, width = 4, damage_amount = 300 },
    { order = "d", name = "railgun-ammo-mk2", range = 50, width = 12, damage_amount = 500 },
    { order = "e", name = "railgun-ammo-mk3", range = 80, width = 20, damage_amount = 700 }
}

rocket_launcher = 
{
    { order = "a", name = "rocket-launcher-mk1", range = 80, cooldown = 60 },
    { order = "b", name = "rocket-launcher-mk2", range = 160, cooldown = 40 }
}

rocket_projectile =
{
    { name = "antimatter-nuke-projectile-mk1", damage_amount = 800, radius = 80, repeat_count = 3000 },
    { name = "antimatter-nuke-projectile-mk2", damage_amount = 1600, radius = 160, repeat_count = 10000 }
}

rocket_ammo =
{
    { order ="c", name = "antimatter-nuke-mk1", projectile = "antimatter-nuke-projectile-mk1" },
    { order ="d", name = "antimatter-nuke-mk2", projectile = "antimatter-nuke-projectile-mk2" }
}