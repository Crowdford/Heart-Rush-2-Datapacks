execute if score $1 SkillParams matches 1 unless score @e[type=arrow,sort=nearest,limit=1] team = @s lastTeam run function skills:condition_not_met
execute if score $1 SkillParams matches 2 if score @e[type=arrow,sort=nearest,limit=1] team = @s lastTeam run function skills:condition_not_met