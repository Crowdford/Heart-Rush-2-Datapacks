execute if entity @s[gamemode=adventure,team=red] run tp @s @e[tag=red_spawn,limit=1]
execute if entity @s[gamemode=adventure,team=blue] run tp @s @e[tag=blue_spawn,limit=1]
execute if entity @s[gamemode=adventure,team=green] run tp @s @e[tag=green_spawn,limit=1]
execute if entity @s[gamemode=adventure,team=yellow] run tp @s @e[tag=yellow_spawn,limit=1]
execute if entity @s[gamemode=adventure] at @s run spawnpoint @s ~ ~ ~ ~
execute if entity @s[gamemode=spectator] at @e[tag=middle] run tp @s ~ ~5 ~
