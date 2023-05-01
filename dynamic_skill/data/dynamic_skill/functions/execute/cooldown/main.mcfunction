scoreboard players operation value SkillCooldown = @s dynSkill_st
scoreboard players operation max SkillCooldown = @s dynSkill_sm
scoreboard players operation id SkillCooldown = @s dynSkill_si
function dynamic_skill:execute/cooldown/get_name
function skills:cooldown/display
scoreboard players remove @s dynSkill_st 1