# get effect id
data modify storage text:lib all set from storage dynamic_skill:trees effect_stack
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main binary set from storage text:int bits
function dynamic_skill:internal/condition/write_arg_tree

# text arg
execute store result score temp dynamic_skill run data get storage text:out chars[0]
execute if score temp dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.speed"}'
execute if score temp dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.slowness"}'
execute if score temp dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.haste"}'
execute if score temp dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.mining_fatigue"}'
execute if score temp dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.strength"}'
execute if score temp dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.jump_boost"}'
execute if score temp dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.regeneration"}'
execute if score temp dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.resistance"}'
execute if score temp dynamic_skill matches 17 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.hunger"}'
execute if score temp dynamic_skill matches 18 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.weakness"}'
execute if score temp dynamic_skill matches 19 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.poison"}'
execute if score temp dynamic_skill matches 20 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.wither"}'
execute if score temp dynamic_skill matches 22 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.absorption"}'
execute if score temp dynamic_skill matches 25 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.levitation"}'
execute if score temp dynamic_skill matches 26 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.luck"}'
execute if score temp dynamic_skill matches 27 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.unluck"}'
execute if score temp dynamic_skill matches 31 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.bad_omen"}'
execute if score temp dynamic_skill matches 32 run data modify storage dynamic_skill:main args_text append value '{"translate":"effect.minecraft.hero_of_the_village"}'