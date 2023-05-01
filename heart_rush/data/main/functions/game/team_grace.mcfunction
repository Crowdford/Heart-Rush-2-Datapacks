execute if score red lives matches 1.. if entity @a[gamemode=adventure,team=red] run scoreboard players set leftRed Stats 0
execute if score blue lives matches 1.. if entity @a[gamemode=adventure,team=blue] run scoreboard players set leftBlue Stats 0
execute if score green lives matches 1.. if entity @a[gamemode=adventure,team=green] run scoreboard players set leftGreen Stats 0
execute if score yellow lives matches 1.. if entity @a[gamemode=adventure,team=yellow] run scoreboard players set leftYellow Stats 0
execute if score red lives matches 1.. if entity @a[gamemode=spectator,team=red,scores={respawn=1..}] run scoreboard players set leftRed Stats 0
execute if score blue lives matches 1.. if entity @a[gamemode=spectator,team=blue,scores={respawn=1..}] run scoreboard players set leftBlue Stats 0
execute if score green lives matches 1.. if entity @a[gamemode=spectator,team=green,scores={respawn=1..}] run scoreboard players set leftGreen Stats 0
execute if score yellow lives matches 1.. if entity @a[gamemode=spectator,team=yellow,scores={respawn=1..}] run scoreboard players set leftYellow Stats 0
execute if score red lives matches 1.. unless entity @a[gamemode=adventure,team=red] unless entity @a[gamemode=spectator,team=red,scores={respawn=1..}] run scoreboard players add leftRed Stats 1
execute if score blue lives matches 1.. unless entity @a[gamemode=adventure,team=blue] unless entity @a[gamemode=spectator,team=blue,scores={respawn=1..}] run scoreboard players add leftBlue Stats 1
execute if score green lives matches 1.. unless entity @a[gamemode=adventure,team=green] unless entity @a[gamemode=spectator,team=green,scores={respawn=1..}] run scoreboard players add leftGreen Stats 1
execute if score yellow lives matches 1.. unless entity @a[gamemode=adventure,team=yellow] unless entity @a[gamemode=spectator,team=yellow,scores={respawn=1..}] run scoreboard players add leftYellow Stats 1
execute if score leftRed Stats matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"red","with":[{"translate":"game.team.red","bold":true},{"translate":"game.team.red.alt","bold":true},{"translate":"game.team.red.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.warning","color":"red"}]
execute if score leftBlue Stats matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"blue","with":[{"translate":"game.team.blue","bold":true},{"translate":"game.team.blue.alt","bold":true},{"translate":"game.team.blue.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.warning","color":"blue"}]
execute if score leftGreen Stats matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"green","with":[{"translate":"game.team.green","bold":true},{"translate":"game.team.green.alt","bold":true},{"translate":"game.team.green.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.warning","color":"green"}]
execute if score leftYellow Stats matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"yellow","with":[{"translate":"game.team.yellow","bold":true},{"translate":"game.team.yellow.alt","bold":true},{"translate":"game.team.yellow.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.warning","color":"yellow"}]
execute if score leftRed Stats matches 600 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"red","with":[{"translate":"game.team.red","bold":true},{"translate":"game.team.red.alt","bold":true},{"translate":"game.team.red.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.eliminated","color":"red"}]
execute if score leftBlue Stats matches 600 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"blue","with":[{"translate":"game.team.blue","bold":true},{"translate":"game.team.blue.alt","bold":true},{"translate":"game.team.blue.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.eliminated","color":"blue"}]
execute if score leftGreen Stats matches 600 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"green","with":[{"translate":"game.team.green","bold":true},{"translate":"game.team.green.alt","bold":true},{"translate":"game.team.green.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.eliminated","color":"green"}]
execute if score leftYellow Stats matches 600 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.team_left","color":"yellow","with":[{"translate":"game.team.yellow","bold":true},{"translate":"game.team.yellow.alt","bold":true},{"translate":"game.team.yellow.alt2","bold":true}]},{"text":"\n |  ","color":"gray"},{"translate":"game.team_left.eliminated","color":"yellow"}]

execute if score leftRed Stats matches 600 run scoreboard players set red lives -1
execute if score leftRed Stats matches 600 run function main:game/sidebar/all
execute if score leftRed Stats matches 600 run scoreboard players set leftRed Stats -1
execute if score leftBlue Stats matches 600 run scoreboard players set blue lives -1
execute if score leftBlue Stats matches 600 run function main:game/sidebar/all
execute if score leftBlue Stats matches 600 run scoreboard players set leftBlue Stats -1
execute if score leftGreen Stats matches 600 run scoreboard players set green lives -1
execute if score leftGreen Stats matches 600 run function main:game/sidebar/all
execute if score leftGreen Stats matches 600 run scoreboard players set leftGreen Stats -1
execute if score leftYellow Stats matches 600 run scoreboard players set yellow lives -1
execute if score leftYellow Stats matches 600 run function main:game/sidebar/all
execute if score leftYellow Stats matches 600 run scoreboard players set leftYellow Stats -1