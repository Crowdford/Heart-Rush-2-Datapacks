scoreboard players add #duration effectstack 19
scoreboard players operation #duration effectstack /= #20 effectstack
scoreboard players remove #amplifier effectstack 1
execute if score #amplifier effectstack matches 9.. run scoreboard players set #amplifier effectstack 8
function effectstack:apply/tree/tree