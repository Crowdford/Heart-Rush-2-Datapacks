# Reset
scoreboard players set @s respawn 0

# Trigger
gamemode creative @s
function health:triggers/death_pre

# Basic
tag @s remove forceDeath
scoreboard players add @s respawn 110
item replace entity @s armor.head with carved_pumpkin{display:{Name:'""'}}
effect give @s resistance 10 120 true

# Find Id 
scoreboard players set empty deathID 1
execute as @a if score @s deathID = empty deathID run function health:death/check
scoreboard players operation @s deathID = empty deathID

# Void Death
execute at @s if entity @s[y=0,dy=-1000] run scoreboard players set @s deathLType 12
execute at @s if entity @s[y=0,dy=-1000] run tp @s ~ 10 ~

# Bossbars

function health:death/bossbars

# Location
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,NoGravity:1,Invisible:1,Small:1,Tags:["deadMarker","deadMarkerNew"]}
scoreboard players operation @e[type=armor_stand,tag=deadMarkerNew,limit=1] deathID = @s deathID
execute at @s run tp @e[type=armor_stand,tag=deadMarkerNew,limit=1] ~ ~ ~ ~ ~
spectate @e[type=armor_stand,tag=deadMarkerNew,limit=1] @s
tag @e[type=armor_stand,tag=deadMarkerNew,limit=1] remove deadMarkerNew

# Death Msg 
function health:reason/get_reason
tellraw @a [{"text":" |  ","color":"gray"},{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true}]
function health:death/bossbars
kill @e[tag=deathMsg]

# TP Up
execute at @s run tp @s ~ ~2 ~

# Reset Death Values
scoreboard players set @s deathLPlayerTime 1000000
scoreboard players set @s deathPPlayerTime 1000000
scoreboard players set @s deathLPlayerID 0
scoreboard players set @s deathPPlayerID 0

# Trigger
function health:triggers/death_post
