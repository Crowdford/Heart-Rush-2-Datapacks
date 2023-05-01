scoreboard players add @s pointstreak 1

scoreboard players set gold Temp 0
execute if entity @s[scores={pointstreak=2}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"2","color":"green","bold":true}]}]
execute if entity @s[scores={pointstreak=2}] run scoreboard players set gold Temp 10

execute if entity @s[scores={pointstreak=3}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"3","color":"green","bold":true}]}]
execute if entity @s[scores={pointstreak=3}] run scoreboard players set gold Temp 20

execute if entity @s[scores={pointstreak=4}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"4","color":"gold","bold":true}]}]
execute if entity @s[scores={pointstreak=4}] run scoreboard players set gold Temp 30

execute if entity @s[scores={pointstreak=5}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"5","color":"gold","bold":true}]}]
execute if entity @s[scores={pointstreak=5}] run scoreboard players set gold Temp 40

execute if entity @s[scores={pointstreak=6}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"6","color":"red","bold":true}]}]
execute if entity @s[scores={pointstreak=6}] run scoreboard players set gold Temp 60

execute if entity @s[scores={pointstreak=7}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"7","color":"red","bold":true}]}]
execute if entity @s[scores={pointstreak=7}] run scoreboard players set gold Temp 75

execute if entity @s[scores={pointstreak=8}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"8","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=8}] run scoreboard players set gold Temp 100

execute if entity @s[scores={pointstreak=9}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"9","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=9}] run scoreboard players set gold Temp 130

execute if entity @s[scores={pointstreak=10}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"10","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=10}] run scoreboard players set gold Temp 175

execute if entity @s[scores={pointstreak=11}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"11","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=11}] run scoreboard players set gold Temp 220

execute if entity @s[scores={pointstreak=12}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"12","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=12}] run scoreboard players set gold Temp 300

execute if entity @s[scores={pointstreak=13}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"13","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=13}] run scoreboard players set gold Temp 375

execute if entity @s[scores={pointstreak=14}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"14","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=14}] run scoreboard players set gold Temp 450

execute if entity @s[scores={pointstreak=15}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"15","color":"dark_red","bold":true}]}]
execute if entity @s[scores={pointstreak=15}] run scoreboard players set gold Temp 600

execute if entity @s[scores={pointstreak=20}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"20","color":"dark_gray","bold":true}]}]
execute if entity @s[scores={pointstreak=20}] run scoreboard players set gold Temp 775

execute if entity @s[scores={pointstreak=25}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"25","color":"dark_gray","bold":true}]}]
execute if entity @s[scores={pointstreak=25}] run scoreboard players set gold Temp 1000

execute if entity @s[scores={pointstreak=30}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"30","color":"dark_gray","bold":true}]}]
execute if entity @s[scores={pointstreak=30}] run scoreboard players set gold Temp 1500

execute if entity @s[scores={pointstreak=35}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"35","color":"dark_gray","bold":true}]}]
execute if entity @s[scores={pointstreak=35}] run scoreboard players set gold Temp 2500

execute if entity @s[scores={pointstreak=40}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"40","color":"dark_gray","bold":true}]}]
execute if entity @s[scores={pointstreak=40}] run scoreboard players set gold Temp 4000

execute if entity @s[scores={pointstreak=45}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"45","color":"dark_gray","bold":true}]}]
execute if entity @s[scores={pointstreak=45}] run scoreboard players set gold Temp 6500

execute if entity @s[scores={pointstreak=50}] run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.pointstreak","color":"gray","with":[{"selector":"@s"},{"text":"50","color":"dark_purple","bold":true}]}]
execute if entity @s[scores={pointstreak=50}] run scoreboard players set gold Temp 10000

execute if score gold options matches 2..3 run scoreboard players operation gold Temp += gold Temp
execute if score gold options matches 3 run scoreboard players operation gold Temp += gold Temp
scoreboard players operation gold Temp *= 6 Const
execute if score gold Temp matches 1.. run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","color":"gold","with":[{"score":{"name":"gold","objective":"Temp"},"color":"gold"}]}]
scoreboard players operation @s gold += gold Temp