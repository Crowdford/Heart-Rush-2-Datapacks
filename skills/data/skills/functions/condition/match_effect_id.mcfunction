execute store result score $temp SkillParams run data get storage effectstack:trigger effect.id
execute unless score $temp SkillParams = $1 SkillParams run function skills:condition_not_met