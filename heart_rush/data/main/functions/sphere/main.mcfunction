#execute if score dir particles matches 0 run scoreboard players add offset particles 1
#execute if score dir particles matches 1 run scoreboard players remove offset particles 1
#execute if score offset particles matches 200.. run scoreboard players set dir particles 1
#execute if score offset particles matches ..1 run scoreboard players set dir particles 0

# reset
scoreboard players set count particles 0
scoreboard players add count2 particles 1

# rotate
#tp @s ~ ~ ~ ~1 ~1

# calc offset 
scoreboard players operation offset1 particles = offset particles
scoreboard players operation offset1 particles %= 81 Const
scoreboard players operation offset1 particles /= 9 Const
scoreboard players operation offset2 particles = offset particles
scoreboard players operation offset2 particles /= 81 Const
scoreboard players operation offset3 particles = offset particles
scoreboard players operation offset3 particles %= 9 Const

# particles
execute at @s positioned ~ ~0.25 ~ run function main:sphere/offset1
execute if score count2 particles matches 90.. run function main:sphere/restart