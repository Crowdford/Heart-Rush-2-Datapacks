tag @e[type=arrow,distance=..3,scores={arrowID=0..}] add nearbyArrow
scoreboard players operation id Temp = @s playerID
execute as @e[type=arrow,distance=..3,tag=nearbyArrow] if score @s arrowID = id Temp run tag @s remove nearbyArrow
execute as @e[type=arrow,distance=..3,tag=nearbyArrow] run function main:game/arrow_nearby_once
execute at @e[type=arrow,distance=..3,tag=nearbyArrow] run function #skills:arrow/nearby
tag @e[type=arrow,distance=..3] remove nearbyArrow