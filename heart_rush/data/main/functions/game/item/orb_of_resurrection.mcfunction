tag @s add cancelDeath

execute at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.5 50
clear @s light_gray_dye

effect give @s minecraft:health_boost 1 3 true
attribute @s minecraft:generic.max_health base set 38
effect clear @s minecraft:health_boost
function main:game/set_max_health

effect give @s instant_health 1 3 true
execute if score @s health matches 33..37 run effect give @s regeneration 1 4 true
execute if score @s health matches ..32 run effect give @s regeneration 2 4 true
