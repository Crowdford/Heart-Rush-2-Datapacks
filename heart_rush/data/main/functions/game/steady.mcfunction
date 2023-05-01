execute store result score @s sgX1 run data get entity @s Pos[0] 100000
execute store result score @s sgY1 run data get entity @s Pos[1] 100000
execute store result score @s sgZ1 run data get entity @s Pos[2] 100000

execute if score @s sgX1 = @s sgX2 if score @s sgX2 = @s sgX3 if score @s sgX3 = @s sgX4 if score @s sgY1 = @s sgY2 if score @s sgY2 = @s sgY3 if score @s sgY3 = @s sgY4 if score @s sgZ1 = @s sgZ2 if score @s sgZ2 = @s sgZ3 if score @s sgZ3 = @s sgZ4 unless score @s sgM1 matches 1.. unless score @s sgM2 matches 1.. unless score @s sgM3 matches 1.. unless score @s sgM4 matches 1.. unless score @s sgM5 matches 1.. unless score @s sgJT matches 1.. run tag @s add isSteady

execute if entity @s[tag=!isSteady] if score @s sgGrace matches 1.. unless score @s sgM1 matches 1.. unless score @s sgM2 matches 1.. unless score @s sgM3 matches 1.. unless score @s sgM4 matches 1.. unless score @s sgM5 matches 1.. unless score @s sgJT matches 1.. run tag @s add isSteady

# check if valid y location (if not player is stuck in air)
scoreboard players operation y Temp = @s sgY1
scoreboard players operation y Temp %= 10 Const
execute unless score y Temp matches 0 unless score y Temp matches 5 run tag @s remove isSteady

# steady triggers
execute as @s[tag=isSteady] at @s run scoreboard players set @s sgEndGrace 5
execute as @s[tag=isSteady] at @s run function #skills:events/player/steady/main
execute as @s[tag=isSteady,tag=!wasSteady] at @s run scoreboard players set @s sgGrace 20
execute as @s[tag=isSteady,tag=!wasSteady] at @s run function #skills:events/player/steady/start
execute as @s[tag=isSteady,tag=!wasSteady] run tag @s add wasSteady
execute as @s[tag=!isSteady,tag=wasSteady] run scoreboard players remove @s sgEndGrace 1
execute as @s[tag=!isSteady,tag=wasSteady] unless score @s sgEndGrace matches 1.. at @s run function #skills:events/player/steady/stop
execute as @s[tag=!isSteady,tag=wasSteady] unless score @s sgEndGrace matches 1.. run tag @s remove wasSteady
tag @s remove isSteady

scoreboard players operation @s sgX4 = @s sgX3
scoreboard players operation @s sgY4 = @s sgY3
scoreboard players operation @s sgZ4 = @s sgZ3

scoreboard players operation @s sgX3 = @s sgX2
scoreboard players operation @s sgY3 = @s sgY2
scoreboard players operation @s sgZ3 = @s sgZ2

execute store result score @s sgX2 run data get entity @s Pos[0] 100000
execute store result score @s sgY2 run data get entity @s Pos[1] 100000
execute store result score @s sgZ2 run data get entity @s Pos[2] 100000

# walk/etc
execute if score @s sgM1 matches 4.. run scoreboard players set @s sgM1 4
execute if score @s sgM1 matches 1.. run scoreboard players remove @s sgM1 1
execute if score @s sgM2 matches 4.. run scoreboard players set @s sgM2 4
execute if score @s sgM2 matches 1.. run scoreboard players remove @s sgM2 1
execute if score @s sgM3 matches 4.. run scoreboard players set @s sgM3 4
execute if score @s sgM3 matches 1.. run scoreboard players remove @s sgM3 1

# fall/fly
execute if score @s sgM4 matches 4.. run scoreboard players set @s sgM4 4
execute if score @s sgM4 matches 1.. run scoreboard players remove @s sgM4 1
execute if score @s sgM5 matches 4.. run scoreboard players set @s sgM5 4
execute if score @s sgM5 matches 1.. run scoreboard players remove @s sgM5 1

# jump
execute if score @s sgJ matches 1.. run scoreboard players set @s sgJT 14
execute if score @s sgJ matches 1.. run scoreboard players set @s sgJ 0
execute if score @s sgJT matches 1.. run scoreboard players remove @s sgJT 1

# sg grace
execute if score @s sgGrace matches 1.. run scoreboard players remove @s sgGrace 1