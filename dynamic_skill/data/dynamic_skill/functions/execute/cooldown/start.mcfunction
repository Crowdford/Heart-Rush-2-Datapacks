# load cooldown
scoreboard players operation $sid SkillParams = $id SkillParams
function dynamic_skill:execute/cooldown/load

# start cooldown
execute if score @s dynSkill_st matches 1.. run scoreboard players set @s dynSkill_st 1
execute if score @s dynSkill_st matches 1 run function dynamic_skill:execute/cooldown/main
scoreboard players operation @s dynSkill_st = $1 SkillParams
scoreboard players operation @s dynSkill_sm = $1 SkillParams
function skills:cooldown/get_id
scoreboard players operation @s dynSkill_si = $id SkillCooldown

# store cooldown
function dynamic_skill:execute/cooldown/store

