# HB Fix
effect give @s minecraft:health_boost 1 3 true
# Instant Damaging
execute if score @s setHealth matches ..0 run attribute @s minecraft:generic.max_health base set 60
execute if score @s setHealth matches 01 run attribute @s minecraft:generic.max_health base set 61
execute if score @s setHealth matches 02 run attribute @s minecraft:generic.max_health base set 62
execute if score @s setHealth matches 03 run attribute @s minecraft:generic.max_health base set 63
execute if score @s setHealth matches 04 run attribute @s minecraft:generic.max_health base set 64
execute if score @s setHealth matches 05 run attribute @s minecraft:generic.max_health base set 65
execute if score @s setHealth matches 06 run attribute @s minecraft:generic.max_health base set 66
execute if score @s setHealth matches 07 run attribute @s minecraft:generic.max_health base set 67
execute if score @s setHealth matches 08 run attribute @s minecraft:generic.max_health base set 68
execute if score @s setHealth matches 09 run attribute @s minecraft:generic.max_health base set 69
execute if score @s setHealth matches 10 run attribute @s minecraft:generic.max_health base set 70
execute if score @s setHealth matches 11 run attribute @s minecraft:generic.max_health base set 71
execute if score @s setHealth matches 12 run attribute @s minecraft:generic.max_health base set 72
execute if score @s setHealth matches 13 run attribute @s minecraft:generic.max_health base set 73
execute if score @s setHealth matches 14 run attribute @s minecraft:generic.max_health base set 74
execute if score @s setHealth matches 15 run attribute @s minecraft:generic.max_health base set 75
execute if score @s setHealth matches 16 run attribute @s minecraft:generic.max_health base set 76
execute if score @s setHealth matches 17 run attribute @s minecraft:generic.max_health base set 77
execute if score @s setHealth matches 18 run attribute @s minecraft:generic.max_health base set 78
execute if score @s setHealth matches 19 run attribute @s minecraft:generic.max_health base set 79
execute if score @s setHealth matches 20 run attribute @s minecraft:generic.max_health base set 80
# HB Fix 2
effect clear @s minecraft:health_boost
function main:game/set_max_health