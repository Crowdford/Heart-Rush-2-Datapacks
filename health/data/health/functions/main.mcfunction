# Check for Damage Reason
execute as @a[tag=dmg] run function health:reason/find
function health:reason/reset_dealt
scoreboard players add @a deathLPlayerTime 1
scoreboard players add @a deathPPlayerTime 1

# Check for Damage
execute as @a[gamemode=adventure] if score @s health matches 1.. run scoreboard players operation @s healthActual = @s health
execute as @a[gamemode=adventure,tag=!cancelDeath] if score @s healthActual matches ..60 store result score @s healthMax run attribute @s minecraft:generic.max_health get
execute as @a[gamemode=adventure,tag=!cancelDeath] if score @s healthActual matches ..60 if score @s healthMax matches 60.. run function health:triggers/pre_death
execute as @a[gamemode=adventure,tag=!cancelDeath] if score @s healthActual matches ..60 if score @s healthMax matches 60.. run function health:death/death
execute as @a[gamemode=adventure,tag=forceDeath] if score @s healthActual matches 60.. at @s run function #skills:events/player/on_death
execute as @a[gamemode=adventure,tag=forceDeath] if score @s healthActual matches 60.. run function health:death/death
tag @a[gamemode=adventure] remove cancelDeath

# Respawn
execute as @a[scores={respawn=1..}] run function health:death/respawning

# Reason
advancement revoke @a from health:custom/root

# Player ID
#execute as @a unless score @s playerID matches 1.. store result score @s playerID run scoreboard players add #id playerID 1
execute as @a unless score @s playerID matches 1.. run scoreboard players operation @s playerID = @s effectstackID
# rn it just uses the id from effectstack

# Firework Usage Type
scoreboard players set @a[scores={healthFirework1=1..}] healthFireworkT 1
scoreboard players set @a[scores={healthFirework2=1..}] healthFireworkT 2
scoreboard players reset @a healthFirework1
scoreboard players reset @a healthFirework2

# special damage detections
scoreboard players remove @a[scores={dmgLightning=1..}] dmgLightning 1