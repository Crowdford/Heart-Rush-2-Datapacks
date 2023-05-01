# Trigger
gamemode adventure @s
execute at @s as @a run function #skills:events/generic/death
gamemode spectator @s

tag @s add healthKilled
kill @e[type=area_effect_cloud,tag=tempDeadLocation]
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:0,Radius:0.0f,Tags:["tempDeadLocation","game"]}

# Set Death Screen Location
execute at @s unless entity @e[tag=hole,distance=..15] positioned ~ ~20 ~ facing entity @e[tag=middle,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute at @s if entity @e[tag=hole,distance=..15] at @e[tag=hole,distance=..15] positioned ~ ~3 ~ run summon area_effect_cloud ~ ~ ~ {Duration:0,Radius:0.0f,Tags:["tempAngle","game"]}
execute at @s if entity @e[tag=hole,distance=..15] positioned ~ ~2 ~ facing entity @e[tag=tempAngle,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
kill @e[tag=tempAngle]
execute at @s unless block ~ ~ ~ #health:transparent run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #health:transparent run tp @s ~ ~2 ~
execute at @s unless block ~ ~ ~ #health:transparent run tp @s ~ ~4 ~
execute at @s unless block ~ ~ ~ #health:transparent run tp @s ~ ~8 ~
execute at @s unless block ~ ~ ~ #health:transparent run tp @s ~ ~16 ~
execute at @s unless block ~ ~ ~ #health:transparent run tp @s ~ ~32 ~
execute at @s unless block ~ ~ ~ #health:transparent run tp @s ~ ~64 ~

# Increase Cooldown for Creeper Charge
scoreboard players operation @s chargeUses *= 100 Const
scoreboard players operation @s respawn += @s chargeUses
scoreboard players reset @s chargeUses

# Clear Effects
function effectstack:store/load
data modify storage effectstack:main player set value []
function effectstack:store/store
effect clear @s

# Try Cancelling Bow/Trident
clear @s bow
clear @s trident