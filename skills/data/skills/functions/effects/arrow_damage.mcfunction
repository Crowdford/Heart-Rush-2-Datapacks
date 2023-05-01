execute store result score dmg Temp run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] damage 1000
execute store result entity @e[type=minecraft:arrow,limit=1,sort=nearest] damage double 0.001 run scoreboard players operation dmg Temp += $1 SkillParams
