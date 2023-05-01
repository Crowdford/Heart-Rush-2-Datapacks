scoreboard players set digits dynamic_skill 5
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/condition/write_arg_score

# text arg
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.speed"}'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.slowness"}'
execute if score int dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.haste"}'
execute if score int dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.mining_fatigue"}'
execute if score int dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.strength"}'
execute if score int dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.instant_health"}'
execute if score int dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.instant_damage"}'
execute if score int dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.jump_boost"}'
execute if score int dynamic_skill matches 9 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.nausea"}'
execute if score int dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.regeneration"}'
execute if score int dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.resistance"}'
execute if score int dynamic_skill matches 12 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.fire_resistance"}'
execute if score int dynamic_skill matches 13 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.water_breathing"}'
execute if score int dynamic_skill matches 14 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.invisibility"}'
execute if score int dynamic_skill matches 15 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.blindness"}'
execute if score int dynamic_skill matches 16 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.night_vision"}'
execute if score int dynamic_skill matches 17 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.hunger"}'
execute if score int dynamic_skill matches 18 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.weakness"}'
execute if score int dynamic_skill matches 19 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.poison"}'
execute if score int dynamic_skill matches 20 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.wither"}'
execute if score int dynamic_skill matches 21 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.health_boost"}'
execute if score int dynamic_skill matches 22 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.absorption"}'
execute if score int dynamic_skill matches 23 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.saturation"}'
execute if score int dynamic_skill matches 24 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.glowing"}'
execute if score int dynamic_skill matches 25 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.levitation"}'
execute if score int dynamic_skill matches 26 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.luck"}'
execute if score int dynamic_skill matches 27 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.unluck"}'
execute if score int dynamic_skill matches 28 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.slow_falling"}'
execute if score int dynamic_skill matches 29 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.conduit_power"}'
execute if score int dynamic_skill matches 30 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.dolphins_grace"}'
execute if score int dynamic_skill matches 31 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.bad_omen"}'
execute if score int dynamic_skill matches 32 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.hero_of_the_village"}'