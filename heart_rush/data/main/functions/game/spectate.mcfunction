gamemode spectator @s 
effect clear @s 
clear @s 
team join spectator
tp @s @r[gamemode=adventure]
tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.spectator.1"},{"text":"\n |  "},{"translate":"game.spectator.2"}]