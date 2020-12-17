
for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes

  recipes["alt-assault-ammo-mk2"].enabled = technologies["advanced-rifles-mk2"].researched
end