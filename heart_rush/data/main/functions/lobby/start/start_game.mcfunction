scoreboard players set starting Stats 0
title @a times 0 20 20
title @a title [{"translate":"lobby.starting.start","color":"green"}]
execute as @a[sort=random,team=random] run function main:lobby/assign_random

scoreboard players set game Stats -1

scoreboard players set r Random 9
function main:util/random 
scoreboard players set wasRandom options 0
execute if score arena options matches 20 run scoreboard players set wasRandom options 1
execute if score arena options matches 20 if score n Random matches 1 run scoreboard players set arena options 1
execute if score arena options matches 20 if score n Random matches 2 run scoreboard players set arena options 2
execute if score arena options matches 20 if score n Random matches 3 run scoreboard players set arena options 4
execute if score arena options matches 20 if score n Random matches 4 run scoreboard players set arena options 7
execute if score arena options matches 20 if score n Random matches 5 run scoreboard players set arena options 8
execute if score arena options matches 20 if score n Random matches 6 run scoreboard players set arena options 9
execute if score arena options matches 20 if score n Random matches 7 run scoreboard players set arena options 10
execute if score arena options matches 20 if score n Random matches 8 run scoreboard players set arena options 11
execute if score arena options matches 20 if score n Random matches 9 run scoreboard players set arena options 12

schedule function main:game/start 1t

scoreboard players reset @a book_skill00
scoreboard players reset @a book_skill01
scoreboard players reset @a book_skill02
scoreboard players reset @a book_skill03
scoreboard players reset @a book_skill04
scoreboard players reset @a book_skill05
scoreboard players reset @a book_skill06
scoreboard players reset @a book_skill07
scoreboard players reset @a book_skill08
scoreboard players reset @a book_skill09
scoreboard players reset @a book_skill10
scoreboard players reset @a book_skill11
scoreboard players reset @a book_skill12
scoreboard players reset @a book_skill13
scoreboard players reset @a book_skill14
scoreboard players reset @a book_skill15