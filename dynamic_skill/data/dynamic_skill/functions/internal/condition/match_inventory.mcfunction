# get sbc item
data modify storage text:lib all set from storage dynamic_skill:trees sbc_item
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main binary set from storage text:int bits
function dynamic_skill:internal/condition/write_arg_tree

# text arg
execute store result score temp dynamic_skill run data get storage text:out chars[0]
execute if score temp dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.default"}'
execute if score temp dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.weakness"}'
execute if score temp dynamic_skill matches 12 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.slowness"}'
execute if score temp dynamic_skill matches 13 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.poison"}'
execute if score temp dynamic_skill matches 14 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.spectral"}'
execute if score temp dynamic_skill matches 15 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.all"}'
execute if score temp dynamic_skill matches 20 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.fireball"}'
execute if score temp dynamic_skill matches 21 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.creeper_charge"}'
execute if score temp dynamic_skill matches 22 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.orb_of_resurrection"}'
execute if score temp dynamic_skill matches 23 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.void_charm"}'
execute if score temp dynamic_skill matches 24 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.jump_crystal"}'
execute if score temp dynamic_skill matches 25 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.speed_crystal"}'
execute if score temp dynamic_skill matches 26 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.persistence_crystal"}'
execute if score temp dynamic_skill matches 30 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.crossbow"}'
execute if score temp dynamic_skill matches 31 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.firework"}'
execute if score temp dynamic_skill matches 32 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.milk"}'
execute if score temp dynamic_skill matches 33 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.fishing_rod"}'
execute if score temp dynamic_skill matches 34 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.ender_pearl"}'

# count (part 1)
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary
scoreboard players operation arg1 dynamic_skill = int dynamic_skill

# direction (part 1)
scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
scoreboard players operation arg2 dynamic_skill = int dynamic_skill
execute if score int dynamic_skill matches 0 run function dynamic_skill:internal/condition/write_min_int_ap

# count (part 2)
scoreboard players operation int dynamic_skill = arg1 dynamic_skill
function dynamic_skill:internal/condition/write_arg_score

# direction (part 2)
scoreboard players operation int dynamic_skill = arg2 dynamic_skill
execute if score int dynamic_skill matches 1 run function dynamic_skill:internal/condition/write_max_int_ap


# text arg
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"storage":"dynamic_skill:main","nbt":"condition.args[2]"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"storage":"dynamic_skill:main","nbt":"condition.args[1]"}'