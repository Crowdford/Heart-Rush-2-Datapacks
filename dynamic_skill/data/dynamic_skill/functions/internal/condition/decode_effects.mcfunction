# decode effect 
function dynamic_skill:internal/decode_effect
say decode effect

# write
execute unless score effect dynamic_skill matches 0 run data modify storage dynamic_skill:main translations append from storage dynamic_skill:main translation
execute unless score effect dynamic_skill matches 0 run data modify storage dynamic_skill:main effect_list append from storage dynamic_skill:main effect

# recursion
execute unless score effect dynamic_skill matches 0 if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_effects