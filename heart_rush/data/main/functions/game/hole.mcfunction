execute at @s if entity @s[team=red] if entity @e[tag=hole,tag=red_hole,distance=..3] run function main:game/steal/own
execute at @s if entity @s[team=blue] if entity @e[tag=hole,tag=blue_hole,distance=..3] run function main:game/steal/own
execute at @s if entity @s[team=green] if entity @e[tag=hole,tag=green_hole,distance=..3] run function main:game/steal/own
execute at @s if entity @s[team=yellow] if entity @e[tag=hole,tag=yellow_hole,distance=..3] run function main:game/steal/own
execute at @s if entity @s[team=red] unless entity @e[tag=hole,tag=red_hole,distance=..3] run function main:game/steal/heart
execute at @s if entity @s[team=blue] unless entity @e[tag=hole,tag=blue_hole,distance=..3] run function main:game/steal/heart
execute at @s if entity @s[team=green] unless entity @e[tag=hole,tag=green_hole,distance=..3] run function main:game/steal/heart
execute at @s if entity @s[team=yellow] unless entity @e[tag=hole,tag=yellow_hole,distance=..3] run function main:game/steal/heart