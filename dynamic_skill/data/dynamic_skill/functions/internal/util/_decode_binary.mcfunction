scoreboard players operation int dynamic_skill *= #2 dynamic_skill
execute store result score bit dynamic_skill run data get storage dynamic_skill:main binary[0]
execute if score bit dynamic_skill matches 1 run scoreboard players add int dynamic_skill 1
data remove storage dynamic_skill:main binary[0]
scoreboard players remove digits dynamic_skill 1
execute if score digits dynamic_skill matches 1.. run function dynamic_skill:internal/util/_decode_binary