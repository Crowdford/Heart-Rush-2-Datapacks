execute if score $1 SkillParams matches 1 run tag @s remove noNatRegen
execute if score $1 SkillParams matches 0 run scoreboard players set id effectstack 10
execute if score $1 SkillParams matches 0 run scoreboard players set duration effectstack 0
execute if score $1 SkillParams matches 0 run scoreboard players set sid effectstack 2
execute if score $1 SkillParams matches 0 run tag @s add dontEffectTrigger
execute if score $1 SkillParams matches 0 run function effectstack:effect
execute if score $1 SkillParams matches 0 run tag @s remove dontEffectTrigger
execute if score $1 SkillParams matches 0 run tag @s add noNatRegen