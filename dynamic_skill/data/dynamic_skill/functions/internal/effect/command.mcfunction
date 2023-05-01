# particle type
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/effect/write_arg_score

# selector
scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/effect/write_arg_score