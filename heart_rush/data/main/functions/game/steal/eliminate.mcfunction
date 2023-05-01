scoreboard players set eliminateSkip Stats 1

execute if score red lives matches 0 as @a[team=red] run function main:announcers/eliminated
execute if score blue lives matches 0 as @a[team=blue] run function main:announcers/eliminated
execute if score green lives matches 0 as @a[team=green] run function main:announcers/eliminated
execute if score yellow lives matches 0 as @a[team=yellow] run function main:announcers/eliminated
execute if score red lives matches 0 run scoreboard players set red lives -1
execute if score blue lives matches 0 run scoreboard players set blue lives -1
execute if score green lives matches 0 run scoreboard players set green lives -1
execute if score yellow lives matches 0 run scoreboard players set yellow lives -1
execute as @a[gamemode=spectator] run function main:announcers/elimination

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0.7 1
function main:game/eliminate_players
function main:game/count_teams


execute unless score teams Temp matches 1 as @a[gamemode=adventure] run function main:announcers/elimination

execute if score teams Temp matches 1 run function main:game/end
execute if score teams Temp matches 1 run function main:game/win

