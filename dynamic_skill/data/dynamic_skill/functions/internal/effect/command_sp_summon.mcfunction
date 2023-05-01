# entity type
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/effect/write_arg_score

execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.zombie"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.skeleton"}'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.blaze"}'
execute if score int dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.pillager"}'
execute if score int dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.squid"}'
execute if score int dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.cod"}'
execute if score int dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.vex"}'
execute if score int dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.bee"}'
execute if score int dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.cave_spider"}'
execute if score int dynamic_skill matches 9 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.creeper"}'
execute if score int dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.guardian"}'
execute if score int dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.phantom"}'
execute if score int dynamic_skill matches 12 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.piglin_brute"}'
execute if score int dynamic_skill matches 13 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.ravager"}'
execute if score int dynamic_skill matches 14 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.shulker"}'
execute if score int dynamic_skill matches 15 run data modify storage dynamic_skill:main args_text append value '{"translate":"entity.minecraft.witch"}'

# lifetime
scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary

scoreboard players operation int dynamic_skill *= #6 dynamic_skill
scoreboard players add int dynamic_skill 6

function dynamic_skill:internal/effect/write_arg_score

