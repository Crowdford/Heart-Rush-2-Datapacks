playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 1

scoreboard players set id effectstack 32
scoreboard players set amplifier effectstack 0
scoreboard players set duration effectstack 140
scoreboard players set sid effectstack 1
function effectstack:effect