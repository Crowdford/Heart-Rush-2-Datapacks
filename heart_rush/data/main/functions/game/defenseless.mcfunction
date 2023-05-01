tellraw @a ["",{"text":" |  ","color":"gray"},{"text":"\n |  ","color":"gray"},{"translate":"%s:","color":"gray","bold":true,"with":[{"translate":"game.defenseless","color":"red"}]}]
tellraw @a ["",{"text":" |  ","color":"gray"},{"translate":"game.defenseless.1","color":"gray"},{"text":"\n |  ","color":"gray"},{"translate":"game.defenseless.2","color":"gray"},{"text":"\n |  ","color":"gray"},{"translate":"game.defenseless.3","color":"gray"},{"text":"\n |  ","color":"gray"},{"translate":"game.defenseless.4","color":"gray"},{"text":"\n |  ","color":"gray"}]
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1 1

execute as @a run function main:announcers/defenseless

# Change Blocks
execute as @e[tag=middle] at @s positioned ~ 0 ~ run summon minecraft:armor_stand ~ ~ ~ {Tags:["defenseless_as"],Marker:1,Invisible:1}
scoreboard players set remove_blocks Temp 0
execute at @e[tag=defenseless_as,type=armor_stand] run function main:game/change_blocks