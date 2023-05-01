# Reset
kill @e[tag=game]
kill @e[type=item]
bossbar set rp players
schedule clear main:game/clear_delay
gamemode spectator @a[team=spectator]

# Start MSG
tellraw @a {"text":" |  ","color":"gray"}
tellraw @a {"text":" |  ","color":"gray"}
tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.started","color":"gold","bold":true}]
tellraw @a {"text":" |  ","color":"gray"}
tellraw @a {"text":" |  ","color":"gray"}

# Spectators
gamemode spectator @a[team=lobby]
gamemode spectator @a[team=lobby_heart]
gamemode spectator @a[team=lobby_creator]
gamemode spectator @a[team=lobby_ts]
gamemode spectator @a[team=lobby_fire]
gamemode spectator @a[team=lobby_speed]
gamemode spectator @a[team=lobby_jump]
gamemode spectator @a[team=lobby_thunder]
gamemode spectator @a[team=lobby_witch]
gamemode spectator @a[team=beeb]
gamemode spectator @a[team=crow]
team join spectator @a[gamemode=spectator]
team join spectator @a[gamemode=creative]

# Beeb & Crow
execute as @a[scores={crow=1},team=red] run scoreboard players set @a[team=red] crow 1
execute as @a[scores={crow=1},team=blue] run scoreboard players set @a[team=blue] crow 1
execute as @a[scores={crow=1},team=green] run scoreboard players set @a[team=green] crow 1
execute as @a[scores={crow=1},team=yellow] run scoreboard players set @a[team=yellow] crow 1
execute as @a[scores={crow=1},team=red] run team modify red suffix {"text":" \uE003","color":"white"}
execute as @a[scores={crow=1},team=blue] run team modify blue suffix {"text":" \uE003","color":"white"}
execute as @a[scores={crow=1},team=green] run team modify green suffix {"text":" \uE003","color":"white"}
execute as @a[scores={crow=1},team=yellow] run team modify yellow suffix {"text":" \uE003","color":"white"}
execute as @a[scores={beeb=1},team=red] run scoreboard players set @a[team=red] beeb 1
execute as @a[scores={beeb=1},team=blue] run scoreboard players set @a[team=blue] beeb 1
execute as @a[scores={beeb=1},team=green] run scoreboard players set @a[team=green] beeb 1
execute as @a[scores={beeb=1},team=yellow] run scoreboard players set @a[team=yellow] beeb 1
execute as @a[scores={beeb=1},team=red] run team modify red suffix {"text":" \uEBEE","color":"white"}
execute as @a[scores={beeb=1},team=blue] run team modify blue suffix {"text":" \uEBEE","color":"white"}
execute as @a[scores={beeb=1},team=green] run team modify green suffix {"text":" \uEBEE","color":"white"}
execute as @a[scores={beeb=1},team=yellow] run team modify yellow suffix {"text":" \uEBEE","color":"white"}

# Values
scoreboard players set timer Stats 0
scoreboard players set game Stats 1
scoreboard players set locked Stats 0
scoreboard players set pause Stats 0
scoreboard players set steals Stats 0
scoreboard players set defenseless Stats 0
scoreboard players add #id edgeI 1
scoreboard players set stolen Stats 0
scoreboard players reset * gold
scoreboard players reset * goldtimer
scoreboard players reset * killstreak
scoreboard players reset * pointstreak
scoreboard players reset * chargeUses
scoreboard players reset * mvpKills
scoreboard players reset * mvpAssists
scoreboard players reset * mvpPoints
scoreboard players reset * mvpDeaths
scoreboard players reset * arrowRegain
scoreboard players reset * customCooldown
scoreboard players reset * shieldCooldown
scoreboard players reset * useShield
scoreboard players reset * useBow
scoreboard players reset * jump
scoreboard players reset * maxHealth
scoreboard players set @a sneakTime 0
tag @a remove eliminated

scoreboard players reset * deathLPlayerTime
scoreboard players reset * deathLPlayerID
scoreboard players reset * deathPPlayerTime
scoreboard players reset * deathPPlayerID
scoreboard players reset * deathLType
scoreboard players reset * deathLTypePrev

# Grace Period Scores
scoreboard players set leftRed Stats 0
scoreboard players set leftBlue Stats 0
scoreboard players set leftGreen Stats 0
scoreboard players set leftYellow Stats 0
scoreboard players set singleTeam Stats 0

# Lives
scoreboard players operation red lives = lives options
scoreboard players operation blue lives = lives options
scoreboard players operation green lives = lives options
scoreboard players operation yellow lives = lives options
execute unless entity @a[gamemode=adventure,team=red] run scoreboard players set red lives -1
execute unless entity @a[gamemode=adventure,team=blue] run scoreboard players set blue lives -1
execute unless entity @a[gamemode=adventure,team=green] run scoreboard players set green lives -1
execute unless entity @a[gamemode=adventure,team=yellow] run scoreboard players set yellow lives -1
function main:game/sidebar/setup
scoreboard objectives setdisplay belowName disHealth

# Arena
function main:game/start/load
function main:game/start/level_setup

execute as @e[tag=red_hole] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:red_stained_glass
execute as @e[tag=blue_hole] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:blue_stained_glass
execute as @e[tag=green_hole] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:lime_stained_glass
execute as @e[tag=yellow_hole] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:yellow_stained_glass

# Equipment
scoreboard players reset * eqmLevel
scoreboard players reset * eqmPath1
scoreboard players reset * eqmPath2 
scoreboard players reset * eqrLevel
scoreboard players reset * eqrPath
scoreboard players reset * eqrPath2
scoreboard players reset * eqaLevel
scoreboard players reset * eqaPath
scoreboard players reset * eqs
scoreboard players set @a[gamemode=adventure] eqmLevel 0
scoreboard players set @a[gamemode=adventure] eqmPath1 0
scoreboard players set @a[gamemode=adventure] eqmPath2 0
scoreboard players set @a[gamemode=adventure] eqrLevel 0
scoreboard players set @a[gamemode=adventure] eqrPath 0
scoreboard players set @a[gamemode=adventure] eqaLevel 0
scoreboard players set @a[gamemode=adventure] eqaPath 0
scoreboard players set @a[gamemode=adventure] eqs 1
scoreboard players set @a[gamemode=adventure] maxHealth 20
execute as @a[gamemode=adventure] run function main:game/set_max_health
effect give @a[gamemode=adventure] instant_health 1 10 true

# Player Functions
clear @a[gamemode=adventure]
execute as @a[gamemode=adventure] run function main:game/equipment/all
execute as @a[gamemode=adventure] run function main:game/equipment/block
effect clear @a[gamemode=adventure]
scoreboard players operation @a[gamemode=adventure] edgeI = #id edgeI
execute as @a run function main:game/spawn
execute as @a run function main:announcers/start

scoreboard players reset * pid
scoreboard players set #id pid 0
execute as @a[gamemode=adventure] store result score @s pid run scoreboard players add #id pid 1
scoreboard players set @a[gamemode=adventure] tsEGUI_guiSwitch 11

execute as @a store result score @s uuid1 run data get entity @s UUID[0]
execute as @a store result score @s uuid2 run data get entity @s UUID[1]
execute as @a store result score @s uuid3 run data get entity @s UUID[2]
execute as @a store result score @s uuid4 run data get entity @s UUID[3]

function skills:store/clear

# P Last
execute as @a[gamemode=adventure] run function main:game/abilities
effect give @a[gamemode=adventure] instant_health 1 10 true

# Trigger
function #skills:start
function dynamic_skill:execute/reset_scores

# Save Team
scoreboard players reset * lastTeam
execute as @a[team=red] run scoreboard players set @s lastTeam 1
execute as @a[team=blue] run scoreboard players set @s lastTeam 2
execute as @a[team=green] run scoreboard players set @s lastTeam 3
execute as @a[team=yellow] run scoreboard players set @s lastTeam 4