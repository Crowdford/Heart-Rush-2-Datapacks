# Death Message + Get Killer
function health:reason/get_reason
tellraw @a [{"text":" |  ","color":"gray"},{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true}]

# Give Kill to Killer
execute as @a[tag=healthKill] run function main:game/kill
tag @a remove healthKill

# Own Death Triggers
execute at @s[tag=!cancelDeath] run function #skills:events/player/on_death