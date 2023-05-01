# load counter
scoreboard players operation $sid SkillParams = $id SkillParams
function dynamic_skill:execute/counter/load

# start counter
scoreboard players operation @s dynSkill_sc += $1 SkillParams

# store counter
function dynamic_skill:execute/counter/store