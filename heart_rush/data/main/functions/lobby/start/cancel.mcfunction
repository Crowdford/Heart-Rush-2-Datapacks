scoreboard players set starting Stats 0
scoreboard players set timer Stats 0
title @a times 5 30 5
title @a title [{"translate":"lobby.starting.cancel","color":"#FF5556"}]
tellraw @a [{"text":" |  ","color":"gray"},{"translate":"lobby.starting.cancelled","color":"","with":[{"selector":"@s","color":"dark_red"}]}]
execute as @a at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.5 2

function main:game/start/unload