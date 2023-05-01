execute unless block ~ ~ ~ #main:breakable unless block ~ ~ ~ air run scoreboard players set $1 SkillParams 0

execute if score $1 SkillParams matches 1 if entity @s[team=red] run setblock ~ ~ ~ red_mushroom_block
execute if score $1 SkillParams matches 1 if entity @s[team=blue] run setblock ~ ~ ~ brown_mushroom_block
execute if score $1 SkillParams matches 1 if entity @s[team=green] run setblock ~ ~ ~ acacia_leaves
execute if score $1 SkillParams matches 1 if entity @s[team=yellow] run setblock ~ ~ ~ mushroom_stem

execute if score $1 SkillParams matches 2 if entity @s[team=red] run setblock ~ ~ ~ red_stained_glass
execute if score $1 SkillParams matches 2 if entity @s[team=blue] run setblock ~ ~ ~ blue_stained_glass 
execute if score $1 SkillParams matches 2 if entity @s[team=green] run setblock ~ ~ ~ lime_stained_glass
execute if score $1 SkillParams matches 2 if entity @s[team=yellow] run setblock ~ ~ ~ yellow_stained_glass