# reset state
scoreboard players set modefskip dynamic_skill 0
scoreboard players set modefstate dynamic_skill 000
scoreboard players set modefstate2 dynamic_skill 0

# get id op
scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/effect/write_arg_score

execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '"="'
execute if score int dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '"+="'
execute if score int dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '"-="'
execute if score int dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '"*="'
execute if score int dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '"/="'
execute if score int dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '"✘"'
execute unless score int dynamic_skill matches 8 run scoreboard players add modefstate dynamic_skill 100
execute if score int dynamic_skill matches 8 run scoreboard players set modefskip dynamic_skill 1
execute if score int dynamic_skill matches 3 run scoreboard players set modefstate2 dynamic_skill 1

# get id
scoreboard players set digits dynamic_skill 5
execute unless score modefskip dynamic_skill matches 1 run function dynamic_skill:internal/util/decode_binary
execute unless score modefskip dynamic_skill matches 1 run function dynamic_skill:internal/effect/write_arg_score
execute unless score modefskip dynamic_skill matches 1 run scoreboard players operation temp dynamic_skill = int dynamic_skill
execute if score modefskip dynamic_skill matches 1 run scoreboard players set temp dynamic_skill 0
execute if score modefskip dynamic_skill matches 1 run data modify storage dynamic_skill:main effect.args append value 0
scoreboard players set modefskip dynamic_skill 0



# get amplifier op
scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/effect/write_arg_score

execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '"="'
execute if score int dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '"+="'
execute if score int dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '"-="'
execute if score int dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '"*="'
execute if score int dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '"/="'
execute if score int dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '"✘"'
execute unless score int dynamic_skill matches 8 run scoreboard players add modefstate dynamic_skill 10
execute if score int dynamic_skill matches 8 run scoreboard players set modefskip dynamic_skill 1

# get amplifier
scoreboard players set digits dynamic_skill 3
execute unless score modefskip dynamic_skill matches 1 run function dynamic_skill:internal/util/decode_binary
execute unless score modefskip dynamic_skill matches 1 run function dynamic_skill:internal/effect/write_arg_score
execute if score modefskip dynamic_skill matches 1 run data modify storage dynamic_skill:main effect.args append value 0
scoreboard players set modefskip dynamic_skill 0

# get duration op
scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/effect/write_arg_score

execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '"="'
execute if score int dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '"+="'
execute if score int dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '"-="'
execute if score int dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '"*="'
execute if score int dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '"/="'
execute if score int dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '"✘"'
execute unless score int dynamic_skill matches 8 run scoreboard players add modefstate dynamic_skill 1
execute if score int dynamic_skill matches 8 run scoreboard players set modefskip dynamic_skill 1

# get duration
scoreboard players set digits dynamic_skill 8
execute unless score modefskip dynamic_skill matches 1 run function dynamic_skill:internal/util/decode_binary
execute unless score modefskip dynamic_skill matches 1 run function dynamic_skill:internal/effect/write_arg_score
execute if score modefskip dynamic_skill matches 1 run data modify storage dynamic_skill:main effect.args append value 0
scoreboard players set modefskip dynamic_skill 0

# effect name
data modify storage dynamic_skill:main args_text append value '"✘"'
execute if score temp dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.speed"}'
execute if score temp dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.slowness"}'
execute if score temp dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.haste"}'
execute if score temp dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.mining_fatigue"}'
execute if score temp dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.strength"}'
execute if score temp dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.jump_boost"}'
execute if score temp dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.regeneration"}'
execute if score temp dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.resistance"}'
execute if score temp dynamic_skill matches 14 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.invisibility"}'
execute if score temp dynamic_skill matches 17 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.hunger"}'
execute if score temp dynamic_skill matches 18 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.weakness"}'
execute if score temp dynamic_skill matches 19 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.poison"}'
execute if score temp dynamic_skill matches 20 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.wither"}'
execute if score temp dynamic_skill matches 22 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.absorption"}'
execute if score temp dynamic_skill matches 25 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.levitation"}'
execute if score temp dynamic_skill matches 26 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.luck"}'
execute if score temp dynamic_skill matches 27 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.unluck"}'
execute if score temp dynamic_skill matches 31 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.bad_omen"}'
execute if score temp dynamic_skill matches 32 run data modify storage dynamic_skill:main args_text[-1] set value '{"translate":"effect.minecraft.hero_of_the_village"}'

# select tellraw
execute if score modefstate dynamic_skill matches 000 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect000","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 001 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect001","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 010 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect010","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 011 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect011","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 100 if score modefstate2 dynamic_skill matches 0 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect100","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 100 if score modefstate2 dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect100alt","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 101 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect101","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 110 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect110","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
execute if score modefstate dynamic_skill matches 111 run data modify block 0 1 0 Text1 set value '{"translate":"dynskill.skills:effects/modify_effect111","with":[{"storage":"dynamic_skill:main","nbt":"args_text[0]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[1]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[3]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[2]","interpret":true},{"storage":"dynamic_skill:main","nbt":"effect.args[5]","interpret":true},{"storage":"dynamic_skill:main","nbt":"args_text[3]","interpret":true}]}'
data modify storage dynamic_skill:main args_text append from block 0 1 0 Text1