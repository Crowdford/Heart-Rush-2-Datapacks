kill @e[type=snowball,tag=!fireball]
tag @s add pTemp
execute unless entity @s[x_rotation=-90..69] at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^4 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["fireball_new"]}
execute if entity @s[x_rotation=-90..69] at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["fireball_new"]}
execute unless entity @s[x_rotation=-90..69] at @s run summon fireball ^ ^1 ^1.5 {Tags:["fireball_new_ball","fireball","game"],ExplosionRadius:5,Item:{id:"snowball",Count:1}}
execute if entity @s[x_rotation=-90..69] at @s run summon snowball ^ ^1 ^1.5 {Tags:["fireball_new_ball","fireball","game"],NoGravity:1,Item:{id:"fire_charge",Count:1}}
execute if entity @s[team=red] run scoreboard players set @e[tag=fireball_new_ball,type=snowball] team 1
execute if entity @s[team=blue] run scoreboard players set @e[tag=fireball_new_ball,type=snowball] team 2
execute if entity @s[team=green] run scoreboard players set @e[tag=fireball_new_ball,type=snowball] team 3
execute if entity @s[team=yellow] run scoreboard players set @e[tag=fireball_new_ball,type=snowball] team 4
execute as @e[tag=fireball_new_ball] at @s as @p[tag=pTemp] at @s run tp @e[tag=fireball_new_ball,sort=nearest,limit=1] ~ ~ ~
execute as @e[tag=fireball_new_ball] at @s as @p[tag=pTemp,x_rotation=-90..69] at @s run tp @e[tag=fireball_new_ball,sort=nearest,limit=1] ^ ^1 ^1.5
execute as @e[tag=fireball_new] run data modify entity @e[tag=fireball_new_ball,limit=1,sort=nearest] Owner set from entity @p[tag=pTemp] UUID
execute as @e[tag=fireball_new] run data modify entity @e[tag=fireball_new_ball,limit=1,sort=nearest] Motion set from entity @s Pos
execute as @e[tag=fireball_new_ball,limit=1,sort=nearest] store result score @s fireballID run scoreboard players add #id fireballID 1
execute if entity @s[x_rotation=-90..69] at @e[tag=fireball_new_ball,limit=1,sort=nearest] run summon minecraft:slime ~ ~-0.5 ~ {Size:2,Silent:1b,NoGravity:1,Tags:["fireball_marker","fireball_marker_new"],Attributes:[{Name:generic.attack_damage,Base:0}]}
execute as @e[tag=fireball_marker_new] store result score @s fireballID run scoreboard players get #id fireballID
scoreboard players operation @e[tag=fireball_marker_new,limit=1] fireballOwner = @s playerID
kill @e[tag=fireball_new]
tag @e[tag=fireball_new_ball] remove fireball_new_ball
tag @e[tag=fireball_marker_new] remove fireball_marker_new
scoreboard players reset @s snowFireball
tag @a remove pTemp

scoreboard players set id effectstack 11
scoreboard players set amplifier effectstack 1
scoreboard players set duration effectstack 20
scoreboard players set sid effectstack 1
execute unless entity @s[x_rotation=-90..69] run function effectstack:effect

scoreboard players add @s fbCooldown1 4
scoreboard players add @s fbCooldown2 7

execute if score @s fbCooldown2 matches 1.. run scoreboard players operation @s fbCooldown1 += @s fbCooldown2
execute if score @s fbCooldown2 matches 1.. run scoreboard players operation @s fbCooldown2 += @s fbCooldown1

execute if score @s fbCooldown1 matches 100.. run scoreboard players set @s fbCooldown1 100
execute if score @s fbCooldown2 matches 100.. run scoreboard players set @s fbCooldown2 100