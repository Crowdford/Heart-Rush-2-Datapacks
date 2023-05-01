function main:lobby/team
playsound minecraft:block.wool.break master @s ~ ~ ~ 1000 0 1
particle minecraft:falling_dust minecraft:light_gray_concrete ~ ~ ~ 1 2 1 0 40 normal

scoreboard players set @s uiActionbarTime 60
scoreboard players set @s uiActionbarID 5


effect clear @s glowing
effect clear @s invisibility
