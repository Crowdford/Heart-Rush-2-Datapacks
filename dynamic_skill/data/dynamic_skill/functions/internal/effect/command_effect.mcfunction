# effect id
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary


function dynamic_skill:internal/effect/write_arg_score

execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.instant_health"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.instant_damage"}'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.nausea"}'
execute if score int dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.fire_resistance"}'
execute if score int dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.water_breathing"}'
execute if score int dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.invisibility"}'
execute if score int dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.blindness"}'
execute if score int dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.night_vision"}'
execute if score int dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.glowing"}'
execute if score int dynamic_skill matches 9 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.slow_falling"}'
execute if score int dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.conduit_power"}'
execute if score int dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.dolphins_grace"}'
execute if score int dynamic_skill matches 12.. run data modify storage dynamic_skill:main args_text append value '{"translate":"✘"}'
scoreboard players operation temp2 dynamic_skill = int dynamic_skill

# duration
scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/effect/write_arg_score

scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players operation temp dynamic_skill *= #5 dynamic_skill
scoreboard players add temp dynamic_skill 1
execute if score temp2 dynamic_skill matches 0..1 run scoreboard players add temp dynamic_skill 10
execute if score temp2 dynamic_skill matches 0..1 run scoreboard players operation temp dynamic_skill /= #20 dynamic_skill
execute if score temp2 dynamic_skill matches 0..1 run scoreboard players operation temp dynamic_skill > #1 dynamic_skill
data modify storage dynamic_skill:main args_text append value '{"score":{"name":"temp","objective":"dynamic_skill"}}'