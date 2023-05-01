# block
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/effect/write_arg_score

# glow
scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/effect/write_arg_score

# lifetime
scoreboard players set digits dynamic_skill 5
function dynamic_skill:internal/util/decode_binary

scoreboard players operation int dynamic_skill *= #40 dynamic_skill

function dynamic_skill:internal/effect/write_arg_score

# arg text
scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players operation temp dynamic_skill /= #20 dynamic_skill
data modify storage dynamic_skill:main args_text append value '[{"score":{"name":"temp","objective":"dynamic_skill"}}]'

# skill id
execute store result score int dynamic_skill run data get storage dynamic_skill:main skill.id

function dynamic_skill:internal/effect/write_arg_score