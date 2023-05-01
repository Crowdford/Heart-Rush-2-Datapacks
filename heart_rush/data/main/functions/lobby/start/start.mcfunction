scoreboard players set starting Stats 1
scoreboard players set timer Stats 80
execute as @a[gamemode=adventure] run scoreboard players add timer Stats 20
execute if score timer Stats matches 301.. run scoreboard players set timer Stats 300
function main:lobby/start/timer_setup
tellraw @a [{"text":" |  ","color":"gray"},{"translate":"lobby.starting.started","color":"green","with":[{"selector":"@s"}]}]
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.7

function main:game/start/preload