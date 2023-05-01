#/scoreboard objectives add gamestats dummy {"text":"Information","color":"gold"}
#/scoreboard objectives modify gamestats displayname {"translate":"game.gamestats","color":"gold","bold":true}
scoreboard players reset * gamestats
scoreboard objectives setdisplay sidebar gamestats

execute if entity @a[team=red] run scoreboard players set  gamestats 0
execute if entity @a[team=red] run scoreboard players set  gamestats 0
team join sb_r1 
team join sb_r2 

execute if entity @a[team=blue] run scoreboard players set  gamestats 0
execute if entity @a[team=blue] run scoreboard players set  gamestats 0
team join sb_b1 
team join sb_b2 

execute if entity @a[team=green] run scoreboard players set  gamestats 0
execute if entity @a[team=green] run scoreboard players set  gamestats 0
team join sb_g1 
team join sb_g2 

execute if entity @a[team=yellow] run scoreboard players set  gamestats 0
execute if entity @a[team=yellow] run scoreboard players set  gamestats 0
team join sb_y1 
team join sb_y2 


function main:game/sidebar/all