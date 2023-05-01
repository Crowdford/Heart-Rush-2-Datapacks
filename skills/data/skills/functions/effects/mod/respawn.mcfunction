scoreboard players set internal SkillsCondition 0
execute if score @s respawn matches 2.. run scoreboard players set internal SkillsCondition 1
execute if score internal SkillsCondition matches 1 run scoreboard players operation @s respawn -= $1 SkillParams
execute if score internal SkillsCondition matches 1 unless score @s respawn matches 2.. run scoreboard players set @s respawn 2
