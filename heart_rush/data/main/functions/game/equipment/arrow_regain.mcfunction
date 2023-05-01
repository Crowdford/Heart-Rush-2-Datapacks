scoreboard players set r Random 4
function main:util/randomish
execute if entity @s[scores={eqrLevel=4..,eqrPath=2}] run scoreboard players add n Random 1
execute if entity @s[scores={eqrLevel=5..,eqrPath=2}] run scoreboard players add n Random 1
execute if entity @s[scores={eqrLevel=6..,eqrPath=2}] run scoreboard players add n Random 1
execute if entity @s[scores={eqrLevel=7..,eqrPath=2}] run scoreboard players add n Random 1
execute if score n Random matches 1..4 run give @s arrow{arrow:"default",HideFlags:63,display:{Name:'{"translate":"equipment.arrow.default","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"arrow",no_drop:1b}
execute if score n Random matches 5 run give @s tipped_arrow{arrow:"weakness",HideFlags:63,display:{Name:'{"translate":"equipment.arrow.weakness","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"arrow",no_drop:1b,Potion:"fire_resistance",CustomPotionColor:3618880}
execute if score n Random matches 6 run give @s tipped_arrow{arrow:"slowness",HideFlags:63,display:{Name:'{"translate":"equipment.arrow.slowness","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"arrow",no_drop:1b,Potion:"water_breathing",CustomPotionColor:7439513}
execute if score n Random matches 7 run give @s tipped_arrow{arrow:"poison",HideFlags:63,display:{Name:'{"translate":"equipment.arrow.poison","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"arrow",no_drop:1b,CustomPotionEffects:[{Id:29,Amplifier:0b,Duration:100}],CustomPotionColor:7077686}
execute if score n Random matches 8 run function main:game/equipment/arrow_regain