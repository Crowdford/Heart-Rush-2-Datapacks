scoreboard players set id effectstack 19
scoreboard players set amplifier effectstack 0
scoreboard players set duration effectstack 100
scoreboard players set sid effectstack 400
scoreboard players add arrowCounter Stats 1
scoreboard players operation arrowCounter Stats %= 100 Const
scoreboard players operation sid effectstack += arrowCounter Stats
function effectstack:effect
effect clear @s minecraft:conduit_power