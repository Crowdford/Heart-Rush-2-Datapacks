tellraw @s[team=red] [{"text":" |  ","color":"gray"},{"translate":"game.cant_steal_from_own_team","color":"red","bold":true}]
tellraw @s[team=blue] [{"text":" |  ","color":"gray"},{"translate":"game.cant_steal_from_own_team","color":"blue","bold":true}]
tellraw @s[team=green] [{"text":" |  ","color":"gray"},{"translate":"game.cant_steal_from_own_team","color":"green","bold":true}]
tellraw @s[team=yellow] [{"text":" |  ","color":"gray"},{"translate":"game.cant_steal_from_own_team","color":"yellow","bold":true}]
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute if score @s ownSteal matches 1.. run function main:game/spawn
execute unless score @s ownSteal matches 1.. run effect give @s levitation 1 5 true
tag @s add ownSteal
scoreboard players add @s ownSteal 60
