scoreboard players add @s offset 4
execute if score @s offset matches 200.. run scoreboard players reset @s offset
scoreboard players operation offset particles = @s offset
execute if score @s offset matches 40.. run scoreboard players set offset particles 40

execute if entity @s[team=red] run scoreboard players set team Temp 1
execute if entity @s[team=blue] run scoreboard players set team Temp 2
execute if entity @s[team=green] run scoreboard players set team Temp 3
execute if entity @s[team=yellow] run scoreboard players set team Temp 4

execute at @s as @e[type=#main:projectiles,distance=..6.5] if score @s team matches 0.. unless score @s team = team Temp run function main:game/item/forcefield_hit

function main:sphere/main