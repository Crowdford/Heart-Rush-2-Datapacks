execute if entity @e[tag=hole,tag=red_hole,distance=..3] unless score red lives matches 1.. run function main:game/steal/cant
execute if entity @e[tag=hole,tag=blue_hole,distance=..3] unless score blue lives matches 1.. run function main:game/steal/cant
execute if entity @e[tag=hole,tag=green_hole,distance=..3] unless score green lives matches 1.. run function main:game/steal/cant
execute if entity @e[tag=hole,tag=yellow_hole,distance=..3] unless score yellow lives matches 1.. run function main:game/steal/cant
execute if entity @e[tag=hole,tag=red_hole,distance=..3] if score red lives matches 1.. run function main:game/steal/steal
execute if entity @e[tag=hole,tag=blue_hole,distance=..3] if score blue lives matches 1.. run function main:game/steal/steal
execute if entity @e[tag=hole,tag=green_hole,distance=..3] if score green lives matches 1.. run function main:game/steal/steal
execute if entity @e[tag=hole,tag=yellow_hole,distance=..3] if score yellow lives matches 1.. run function main:game/steal/steal