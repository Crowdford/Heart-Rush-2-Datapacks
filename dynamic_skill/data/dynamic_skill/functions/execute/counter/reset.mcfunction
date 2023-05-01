# load counter
scoreboard players operation $sid SkillParams = $id SkillParams
function dynamic_skill:execute/counter/load

# reset counter
scoreboard players set @s dynSkill_sc 0

# store counter
function dynamic_skill:execute/counter/store

