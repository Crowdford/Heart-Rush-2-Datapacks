# MVP Point
scoreboard players add @s mvpPoints 1

# Triggers
execute as @a run function skills:internal/reset_location
execute if score pause options matches 1 run scoreboard players reset * gotPoint
execute if score pause options matches 1 run scoreboard players set @s gotPoint 1
execute if score pause options matches 0 at @s run function #skills:events/player/on_point
execute if score pause options matches 0 at @s as @a run function #skills:events/generic/point

# Remove Live
execute if entity @e[tag=hole,tag=red_hole,distance=..3] run scoreboard players set team Temp 1
execute if entity @e[tag=hole,tag=blue_hole,distance=..3] run scoreboard players set team Temp 2
execute if entity @e[tag=hole,tag=green_hole,distance=..3] run scoreboard players set team Temp 3
execute if entity @e[tag=hole,tag=yellow_hole,distance=..3] run scoreboard players set team Temp 4

execute if entity @e[tag=hole,tag=red_hole,distance=..3] run scoreboard players remove red lives 1
execute if entity @e[tag=hole,tag=blue_hole,distance=..3] run scoreboard players remove blue lives 1
execute if entity @e[tag=hole,tag=green_hole,distance=..3] run scoreboard players remove green lives 1
execute if entity @e[tag=hole,tag=yellow_hole,distance=..3] run scoreboard players remove yellow lives 1

execute if score locked Stats matches 0 run function main:game/steal/gain
execute if score locked Stats matches 1 run function main:game/steal/remove
function main:game/sidebar/all

# Gain Gold
execute if score gold options matches 1 run scoreboard players add @s gold 120
execute if score gold options matches 1 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["120"],"color":"gold"}]
execute if score gold options matches 2 run scoreboard players add @s gold 240
execute if score gold options matches 2 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["240"],"color":"gold"}]
execute if score gold options matches 3 run scoreboard players add @s gold 480
execute if score gold options matches 3 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["480"],"color":"gold"}]
execute if score gold options matches 0 run scoreboard players add @s gold 120
execute if score gold options matches 0 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["120"],"color":"gold","bold":true}]
execute if entity @s[gamemode=adventure] run function main:game/pointstreak


# Locked Mode
scoreboard players add stolen Stats 1

# Reset Players
execute if score pause options matches 0 run function main:game/spawn
execute if score pause options matches 1 run function main:game/pause/start


# Point Lose Sound 
execute if entity @e[tag=hole,tag=red_hole,distance=..3] as @a[team=red] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.5 1
execute if entity @e[tag=hole,tag=blue_hole,distance=..3] as @a[team=blue] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.5 1
execute if entity @e[tag=hole,tag=green_hole,distance=..3] as @a[team=green] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.5 1
execute if entity @e[tag=hole,tag=yellow_hole,distance=..3] as @a[team=yellow] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.5 1

# Point Gain Sound
execute if entity @s[team=red] as @a[team=red] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1 1
execute if entity @s[team=blue] as @a[team=blue] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1 1
execute if entity @s[team=green] as @a[team=green] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1 1
execute if entity @s[team=yellow] as @a[team=yellow] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1 1

# Locked
execute if score game Stats matches 1..2 if score locked options matches 1 run scoreboard players add steals Stats 1
execute if score steals Stats matches 12 run schedule function main:game/locked 25t

# Eliminate Check
function main:game/steal/eliminate_check