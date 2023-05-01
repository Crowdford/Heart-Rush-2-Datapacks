scoreboard players operation r Random = @s maxHealth
function main:util/randomish
scoreboard players operation up custom_ui = n Random
scoreboard players set r Random 10
function main:util/randomish
scoreboard players operation armor_up custom_ui = n Random
scoreboard players operation armor_up custom_ui *= 2 Const
scoreboard players remove armor_up custom_ui 1
