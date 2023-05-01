# tp to fireball
scoreboard players operation id Temp = @s fireballID
tag @s add slimeTemp
execute as @e[type=snowball,tag=fireball] if score id Temp = @s fireballID at @s run tp @e[type=slime,tag=slimeTemp,limit=1,sort=nearest] ~ ~-0.5 ~
tag @s remove slimeTemp

# explode
execute at @s unless entity @e[type=snowball,tag=fireball,distance=..5,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,Silent:1b,NoAI:1}
execute at @s unless entity @e[type=snowball,tag=fireball,distance=..5,limit=1,sort=nearest] run function main:game/item/fireball_blast
execute at @s unless entity @e[type=snowball,tag=fireball,distance=..5,limit=1,sort=nearest] run data merge entity @s {Size:0,DeathTime:19s,Health:0.0f}

# store location
execute store result score @s slimeX run data get entity @s Pos[0] 100
execute store result score @s slimeY run data get entity @s Pos[1] 100
execute store result score @s slimeZ run data get entity @s Pos[2] 100