function main:game/count_teams
execute unless score teams Temp matches 1 run scoreboard players set singleTeam Stats 0
execute if score teams Temp matches 1 run scoreboard players add singleTeam Stats 1
execute if score teams Temp matches 1 if score singleTeam Stats matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.only_one_team"},{"text":"\n |  "},{"translate":"game.only_one_team.warning"}]
execute if score teams Temp matches 1 if score singleTeam Stats matches 200 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.only_one_team"},{"text":"\n |  "},{"translate":"game.only_one_team.ending"}]
execute if score teams Temp matches 1 if score singleTeam Stats matches 200 run function main:game/end
execute if score teams Temp matches 0 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.no_teams"}]
execute if score teams Temp matches 0 run function main:game/end