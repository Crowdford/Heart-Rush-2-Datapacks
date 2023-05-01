gamemode spectator @a[gamemode=creative]
# unmovable
# removed bc of kicked for flying - probably not related though tp @s @s
execute at @s unless entity @e[type=armor_stand,tag=deadMarker,distance=..0.01] run function health:death/location

# respawn
scoreboard players remove @s respawn 1
execute as @s[scores={respawn=1}] run function health:death/respawn

## click sounds
scoreboard players operation #sec respawn = @s respawn
scoreboard players operation #sec respawn %= #20 respawn
execute if score #sec respawn matches 0 if score @s respawn matches 1.. at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2

# display time
scoreboard players operation #sec respawn = @s respawn
scoreboard players operation #sec respawn /= #20 respawn
execute if score #sec respawn matches 10.. run data modify storage health:main color set value '{"text":"","color":"#ff5556"}'
execute if score #sec respawn matches 09 run data modify storage health:main color set value '{"text":"","color":"#ee6655"}'
execute if score #sec respawn matches 08 run data modify storage health:main color set value '{"text":"","color":"#dd7755"}'
execute if score #sec respawn matches 07 run data modify storage health:main color set value '{"text":"","color":"#cc8855"}'
execute if score #sec respawn matches 06 run data modify storage health:main color set value '{"text":"","color":"#bb9955"}'
execute if score #sec respawn matches 05 run data modify storage health:main color set value '{"text":"","color":"#aaaa55"}'
execute if score #sec respawn matches 04 run data modify storage health:main color set value '{"text":"","color":"#99bb55"}'
execute if score #sec respawn matches 03 run data modify storage health:main color set value '{"text":"","color":"#88cc55"}'
execute if score #sec respawn matches 02 run data modify storage health:main color set value '{"text":"","color":"#77dd55"}'
execute if score #sec respawn matches 01 run data modify storage health:main color set value '{"text":"","color":"#66ee55"}'
execute if score #sec respawn matches 00 run data modify storage health:main color set value '{"text":"","color":"#57fd55"}'
execute if entity @s[scores={deathID=1}] run bossbar set dead6a name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=2}] run bossbar set dead6b name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=3}] run bossbar set dead6c name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=4}] run bossbar set dead6d name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=5}] run bossbar set dead6e name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=6}] run bossbar set dead6f name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=7}] run bossbar set dead6g name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=8}] run bossbar set dead6h name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=9}] run bossbar set dead6i name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]
execute if entity @s[scores={deathID=10}] run bossbar set dead6j name [{"translate":"death.respawning","font":"low2","with":[[{"nbt":"color","storage":"health:main","interpret":true},{"score":{"name":"#sec","objective":"respawn"}}]]}]



# remove ui 
title @s actionbar ""