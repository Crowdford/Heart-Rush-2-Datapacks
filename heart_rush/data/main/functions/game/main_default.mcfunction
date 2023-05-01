# Grace Periods / Auto End
function main:game/main_grace
execute if score teams Temp matches 2.. run function main:game/team_grace

# Fall in Hole
execute as @a[gamemode=adventure] if score @s ownSteal matches 1.. run scoreboard players remove @s ownSteal 1
execute as @a[gamemode=adventure,tag=ownSteal] at @s unless block ~ ~ ~ minecraft:end_gateway run tag @s remove ownSteal
execute as @a[gamemode=adventure,tag=!ownSteal] at @s if block ~ ~ ~ minecraft:end_gateway if entity @e[tag=hole,distance=..3] run function main:game/hole
execute as @a[gamemode=adventure,tag=ownSteal] at @s if block ~ ~ ~ minecraft:end_gateway if score @s ownSteal matches 1..30 run tag @s remove ownSteal

# Defenseless Mode
scoreboard players add timer Stats 1
execute if score timer Stats matches 14000 if score defenseless options matches 1 run function main:announcers/defenseless
execute if score timer Stats matches 14000 if score defenseless options matches 1 run function main:game/defenseless
# this is also referenced in the death_pre function of the health datapack
execute if score timer Stats matches 15000 if score defenseless options matches 1 if score defenseless Stats matches 0 run function main:game/defenseless_remove
execute if score timer Stats matches 16000 if score defenseless options matches 1 if score defenseless Stats matches 1 run function main:game/defenseless_remove
execute if score timer Stats matches 17000 if score defenseless options matches 1 if score defenseless Stats matches 2 run function main:game/defenseless_remove
execute if score timer Stats matches 18000 if score defenseless options matches 1 if score defenseless Stats matches 3 run function main:game/defenseless_remove
execute if score timer Stats matches 19000 if score defenseless options matches 1 if score defenseless Stats matches 4 run function main:game/defenseless_remove
execute if score timer Stats matches 20000 if score defenseless options matches 1 if score defenseless Stats matches 5 run function main:game/defenseless_remove
execute if score timer Stats matches 21000 if score defenseless options matches 1 if score defenseless Stats matches 6 run function main:game/defenseless_remove
execute if score timer Stats matches 22000 if score defenseless options matches 1 if score defenseless Stats matches 7 run function main:game/defenseless_remove
execute if score timer Stats matches 23000 if score defenseless options matches 1 if score defenseless Stats matches 8 run function main:game/defenseless_remove
execute if score timer Stats matches 24000 if score defenseless options matches 1 if score defenseless Stats matches 9 run function main:game/defenseless_remove


# Arrow Regain
execute as @a[gamemode=adventure] store result score @s arrows run clear @s #minecraft:arrows 0
scoreboard players add @a[gamemode=adventure,scores={eqrLevel=1..}] arrowRegain 1
execute as @a[gamemode=adventure,scores={arrowRegain=300..,eqrLevel=..2,arrows=..7}] at @s run function #skills:events/player/arrow/regain
execute as @a[gamemode=adventure,scores={arrowRegain=300..,eqrLevel=..2,arrows=..7}] run function main:game/equipment/arrow_regain
execute as @a[gamemode=adventure,scores={arrowRegain=300..,eqrLevel=3..,arrows=..15}] at @s run function #skills:events/player/arrow/regain
execute as @a[gamemode=adventure,scores={arrowRegain=300..,eqrLevel=3..,arrows=..15}] run function main:game/equipment/arrow_regain
execute as @a[gamemode=adventure,scores={arrowRegain=300..}] run scoreboard players set @s arrowRegain 0


# Out of Arena
execute as @e[tag=middle] at @s as @a[gamemode=adventure,distance=100..] unless score pause Stats matches 1.. run function health:force_death/edge
execute as @e[tag=middle] at @s as @a[gamemode=spectator,distance=100..,team=spectator] unless score pause Stats matches 1.. run function main:game/spawn

# Forcefield
execute as @a[nbt={ActiveEffects:[{Id:32}]},gamemode=adventure] run function main:game/item/forcefield


# Skill Triggers
function #skills:game
execute as @a[gamemode=adventure] at @s run function main:game/arrow_nearby
execute as @a[gamemode=adventure] at @s run function main:game/trident_nearby
execute as @a[gamemode=adventure] at @s run function #skills:main
execute as @a[gamemode=adventure] at @s run function #skills:events/player/main
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:white_terracotta run function #skills:events/player/location/on_middle
execute as @a[gamemode=adventure] at @s unless block ~ ~-1 ~ minecraft:white_terracotta if block ~ ~-5 ~ minecraft:white_terracotta run function #skills:events/player/location/on_middle
execute as @a[gamemode=adventure] at @s unless block ~ ~-1 ~ minecraft:white_terracotta unless block ~ ~-5 ~ minecraft:white_terracotta if block ~ ~-10 ~ minecraft:white_terracotta run function #skills:events/player/location/on_middle
execute as @a[scores={useBow=1..},gamemode=adventure] at @s run function #skills:events/player/arrow/shoot
execute as @a[scores={jump=1..},gamemode=adventure] at @s run function #skills:events/player/move/jump
execute as @a[scores={sneakTime=1..},gamemode=adventure] at @s run function #skills:events/player/move/sneak
execute as @a[scores={sneakTime=0},gamemode=adventure] at @s run function #skills:events/player/move/not_sneak
execute as @a[scores={sneakTime=1..,jump=1..},gamemode=adventure] at @s run function #skills:events/player/move/sneakjump
scoreboard players reset * useBow
scoreboard players reset * jump
scoreboard players set @a sneakTime 0
execute as @a[gamemode=adventure] run function main:game/steady
execute as @e[type=block_display,tag=skillObject] run function main:game/object