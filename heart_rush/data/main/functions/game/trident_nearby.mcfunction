tag @e[type=trident,distance=..3,scores={tridentID=0..}] add nearbyTrident
scoreboard players operation id Temp = @s playerID
execute as @e[type=trident,distance=..3,tag=nearbyTrident] if score @s tridentID = id Temp run tag @s remove nearbyTrident
execute as @e[type=trident,distance=..3,tag=nearbyTrident] run function main:game/trident_nearby_once
execute at @e[type=trident,distance=..3,tag=nearbyTrident] run function #skills:trident/nearby
tag @e[type=trident,distance=..3] remove nearbyTrident