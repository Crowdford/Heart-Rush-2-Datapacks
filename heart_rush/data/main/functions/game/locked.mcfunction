scoreboard players add steals Stats 1
execute if score game Stats matches 1.. run tellraw @a ["",{"text":" |  ","color":"gray"},{"text":"\n |  ","color":"gray"},{"translate":"%s:","color":"gray","bold":true,"with":[{"translate":"game.locked","color":"red"}]}]
execute if score game Stats matches 1.. run tellraw @a ["",{"text":" |  ","color":"gray"},{"translate":"game.locked.1","color":"gray"},{"text":"\n |  ","color":"gray"},{"translate":"game.locked.2","color":"gray"},{"text":"\n |  ","color":"gray"}]
scoreboard players set locked Stats 1
function main:game/sidebar/all
execute if score game Stats matches 1.. as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1 1

execute if score game Stats matches 1.. as @a run function main:announcers/locked