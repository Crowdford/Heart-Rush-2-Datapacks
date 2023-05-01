scoreboard players set internal SkillsCondition 0
execute if score @s customCooldown matches 2.. run scoreboard players set internal SkillsCondition 1
execute if score internal SkillsCondition matches 1 run scoreboard players operation @s customCooldown -= $1 SkillParams
execute if score internal SkillsCondition matches 1 unless score @s customCooldown matches 2.. run scoreboard players set @s customCooldown 2
