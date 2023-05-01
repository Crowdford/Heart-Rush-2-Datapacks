function main:lobby/player
tp @s 10007 105 9999 -90 0
tellraw @s [{"text":" |  ","color":"gray"},{"translate":"%1$s","with":[{"translate":"Welcome to %s!","bold":true,"with":[{"text":"Heart Rush 2","color":"red","underlined":true}]},{"translate":"lobby.first_join","bold":true,"with":[{"text":"Heart Rush 2","color":"red","underlined":true}]}]}]

function dynamic_skill:sotd_info