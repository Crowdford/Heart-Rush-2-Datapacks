scoreboard players operation lifetime Temp = @s lifetime
scoreboard players set found Temp 0
execute as @e[tag=sp_entity_silverfish,distance=..4,type=silverfish] if score @s lifetime = lifetime Temp run scoreboard players set found Temp 1
execute if score found Temp matches 0 run kill @s