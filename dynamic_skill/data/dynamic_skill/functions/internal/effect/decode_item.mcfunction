# get item
data modify storage text:lib all set from storage dynamic_skill:trees sbc_item
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main binary set from storage text:int bits
function dynamic_skill:internal/effect/write_arg_tree

# text arg
execute store result score temp dynamic_skill run data get storage text:out chars[0]
execute if score temp dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.default"}'
execute if score temp dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.weakness"}'
execute if score temp dynamic_skill matches 12 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.slowness"}'
execute if score temp dynamic_skill matches 13 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.poison"}'
execute if score temp dynamic_skill matches 14 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.spectral"}'
execute if score temp dynamic_skill matches 15 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.arrow.any"}'
execute if score temp dynamic_skill matches 20 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.fireball"}'
execute if score temp dynamic_skill matches 21 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.creeper_charge"}'
execute if score temp dynamic_skill matches 22 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.orb_of_resurrection"}'
execute if score temp dynamic_skill matches 23 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.void_charm"}'
execute if score temp dynamic_skill matches 24 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.jump_crystal"}'
execute if score temp dynamic_skill matches 25 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.speed_crystal"}'
execute if score temp dynamic_skill matches 26 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.persistence_crystal"}'
execute if score temp dynamic_skill matches 27 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.item.forcefield"}'
execute if score temp dynamic_skill matches 30 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.crossbow"}'
execute if score temp dynamic_skill matches 31 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.firework"}'
execute if score temp dynamic_skill matches 32 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.milk"}'
execute if score temp dynamic_skill matches 33 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.fishing_rod"}'
execute if score temp dynamic_skill matches 34 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.ender_pearl"}'
execute if score temp dynamic_skill matches 40 run data modify storage dynamic_skill:main args_text append value '{"translate":"equipment.random"}'

# get count
scoreboard players set digits dynamic_skill 6
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/effect/write_arg_score



