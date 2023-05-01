function main:lobby/location
execute at @s run spawnpoint @s ~ ~ ~ ~
gamemode adventure @s 
function main:lobby/team
clear @s 
effect clear @s 
xp set @s 0 levels
function main:game/set_max_health
effect give @s instant_health 1 120 true
tag @s add cancelDeath
execute unless score @s announcer matches 1.. run scoreboard players set @s announcer 2
execute unless score @s p.shop matches 0.. run scoreboard players set @s p.shop 1
execute unless score @s p.shield matches 0.. run scoreboard players set @s p.shield 1

scoreboard players reset @s lobbyArmor

