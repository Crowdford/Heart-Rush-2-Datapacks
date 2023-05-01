data remove storage simplify:main out[-1]
scoreboard players operation $count string.simplify = $length string.simplify
scoreboard players operation $count string.simplify -= $lower string.simplify
scoreboard players operation $count string.simplify -= $upper string.simplify
scoreboard players remove $count string.simplify 1
execute if score $count string.simplify matches 01.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 02.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 03.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 04.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 05.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 06.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 08.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 09.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 10.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 11.. run data remove storage simplify:main out[0]
execute if score $count string.simplify matches 12.. run data remove storage simplify:main out[0]
 function application_name:internal/end_name