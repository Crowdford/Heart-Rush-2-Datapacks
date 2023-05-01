execute store result score $temp SkillParams run data get storage effectstack:trigger effect.id
execute if score $temp SkillParams matches 3 run scoreboard players set $temp SkillParams 1
execute if score $temp SkillParams matches 4 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 5 run scoreboard players set $temp SkillParams 1
execute if score $temp SkillParams matches 8 run scoreboard players set $temp SkillParams 1
execute if score $temp SkillParams matches 10 run scoreboard players set $temp SkillParams 1
execute if score $temp SkillParams matches 11 run scoreboard players set $temp SkillParams 1
execute if score $temp SkillParams matches 17 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 18 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 19 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 20 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 22 run scoreboard players set $temp SkillParams 1
execute if score $temp SkillParams matches 25 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 26 run scoreboard players set $temp SkillParams 1
execute if score $temp SkillParams matches 27 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 31 run scoreboard players set $temp SkillParams 2
execute if score $temp SkillParams matches 32 run scoreboard players set $temp SkillParams 1
execute unless score $temp SkillParams = $1 SkillParams run function skills:condition_not_met