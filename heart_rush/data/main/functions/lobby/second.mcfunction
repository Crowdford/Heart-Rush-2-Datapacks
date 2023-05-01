function main:lobby/player
tellraw @s [{"text":" |  ","color":"gray"},{"translate":"%1$s","with":[{"translate":"Welcome back to %s!","bold":true,"with":[{"text":"Heart Rush 2","color":"red","underlined":true}]},{"translate":"lobby.rejoin","bold":true,"with":[{"text":"Heart Rush 2","color":"red","underlined":true}]}]}]

function dynamic_skill:sotd_info