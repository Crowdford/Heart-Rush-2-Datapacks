gamemode adventure @s
function main:game/set_max_health
scoreboard players reset @s health
scoreboard players operation @s healthActual = @s maxHealth
scoreboard players add @s healthActual 60
effect give @s instant_health 1 120 true
item replace entity @s armor.head with air


function health:death/location_reset
scoreboard players reset @s deathID


scoreboard players set @s respawn 0
function health:death/bossbars

execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2


effect clear @s resistance

function health:triggers/respawned

# skip death for 1 tick after respawn
tag @s add cancelDeath