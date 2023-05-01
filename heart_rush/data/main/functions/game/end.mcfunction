# reset beeb /crow
scoreboard players reset * beeb
scoreboard players reset * crow
scoreboard players reset * gold
team modify red suffix ""
team modify blue suffix ""
team modify green suffix ""
team modify yellow suffix ""

# save winners
tag @a[gamemode=adventure] add winners

# Respawn Dead
execute as @a[scores={respawn=1..}] run function health:death/respawn

# Reset Arena 
scoreboard players set remove_blocks Temp 0
execute as @e[tag=middle] at @s positioned ~ 0 ~ run function main:game/remove_blocks

# Reset
kill @e[tag=game]
kill @e[tag=skillObject]
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay belowName

# Values
scoreboard players set game Stats 0

# Arena
function main:game/start/unload

# Back to Lobby + Player Reset 
execute as @a[gamemode=!creative] run function main:lobby/player


function effectstack:store/clear

function skills:cooldown/setup


# Setup Lobby
function main:lobby/setup

# reset bossbars
schedule function skills:cooldown/setup 5t

# clear delay
schedule function main:game/clear_delay 10t append
schedule function main:game/clear_delay 5s append
schedule function main:game/clear_delay 10s append
schedule function main:game/clear_delay 15s append
schedule function main:game/clear_delay 20s append
schedule function main:game/clear_delay 25s append
schedule function main:game/clear_delay 30s append
schedule function main:game/clear_delay 35s append
schedule function main:game/clear_delay 40s append
schedule function main:game/clear_delay 45s append
schedule function main:game/clear_delay 50s append
schedule function main:game/clear_delay 55s append
schedule function main:game/clear_delay 60s append

# reset scores 
scoreboard players reset * eqaLevel
scoreboard players reset * eqaPath
scoreboard players reset * eqmLevel
scoreboard players reset * eqmPath1
scoreboard players reset * eqmPath2
scoreboard players reset * eqrLevel
scoreboard players reset * eqrPath
scoreboard players reset * eqrPath2

# bossbar 
bossbar set minecraft:1 players
bossbar set minecraft:2 players
bossbar set minecraft:3 players

# restore random
execute if score wasRandom options matches 1 run scoreboard players set arena options 20
