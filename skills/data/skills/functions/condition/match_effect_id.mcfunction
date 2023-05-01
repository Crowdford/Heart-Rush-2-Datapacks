execute store result score $temp SkillParams run data get storage effectstack:trigger effect.id
#tellraw @a ["Is: ",{"storage":"effectstack:trigger","nbt":"effect.id"}, " this? ", {"score":{"name":"$1","objective":"SkillParams"}}]
execute unless score $temp SkillParams = $1 SkillParams run function skills:condition_not_met