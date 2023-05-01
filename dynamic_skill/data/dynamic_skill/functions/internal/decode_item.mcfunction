scoreboard players set digits dynamic_skill 6
function dynamic_skill:internal/util/decode_binary
scoreboard players operation item dynamic_skill = int dynamic_skill
function dynamic_skill:internal/item/decode_id