particle minecraft:mycelium ~ ~1 ~ 0 0 0 0 1 force @s
execute if entity @s[distance=0.51..5] facing entity @s feet positioned ^ ^ ^0.5 run function main:lobby/tutorial_beam
execute if entity @s[distance=5..10] facing entity @s feet positioned ^ ^ ^1 run function main:lobby/tutorial_beam
execute if entity @s[distance=10..20] facing entity @s feet positioned ^ ^ ^2 run function main:lobby/tutorial_beam
execute if entity @s[distance=20..50] facing entity @s feet positioned ^ ^ ^3 run function main:lobby/tutorial_beam
execute if entity @s[distance=50..] facing entity @s feet positioned ^ ^ ^5 run function main:lobby/tutorial_beam