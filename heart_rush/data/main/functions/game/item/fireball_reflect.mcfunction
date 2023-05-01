#say hit


execute store result score slimeX Temp run data get entity @s Pos[0] 100
execute store result score slimeY Temp run data get entity @s Pos[1] 100
execute store result score slimeZ Temp run data get entity @s Pos[2] 100
scoreboard players operation slimeX Temp -= @s slimeX
scoreboard players operation slimeY Temp -= @s slimeY
scoreboard players operation slimeZ Temp -= @s slimeZ

execute positioned 0.00 0.00 0.00 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["fireball_new"]}
execute if score slimeX Temp matches 0 if score slimeY Temp matches 0 if score slimeZ Temp matches 0 run kill @e[tag=fireball_new]
execute at @s unless blocks ~1 ~1 ~1 ~-1 ~-1 ~-1 10 5 10 all run kill @e[tag=fireball_new]
execute store result entity @e[type=area_effect_cloud,tag=fireball_new,limit=1] Pos[0] double 0.05 run scoreboard players get slimeX Temp
execute store result entity @e[type=area_effect_cloud,tag=fireball_new,limit=1] Pos[1] double 0.05 run scoreboard players get slimeY Temp
execute store result entity @e[type=area_effect_cloud,tag=fireball_new,limit=1] Pos[2] double 0.05 run scoreboard players get slimeZ Temp


data modify entity @e[type=snowball,tag=fireball,limit=1,sort=nearest] Motion set from entity @e[type=area_effect_cloud,tag=fireball_new,limit=1] Pos

kill @e[tag=fireball_new]
