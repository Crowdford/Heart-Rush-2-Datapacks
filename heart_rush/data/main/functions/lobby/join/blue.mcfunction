team join blue @s
playsound minecraft:block.glass.break master @s ~ ~ ~ 1000 0 1
particle minecraft:falling_dust minecraft:blue_concrete ~ ~ ~ 1 2 1 0 40 normal

scoreboard players set @s uiActionbarTime 60
scoreboard players set @s uiActionbarID 2


effect clear @s glowing
effect clear @s invisibility
