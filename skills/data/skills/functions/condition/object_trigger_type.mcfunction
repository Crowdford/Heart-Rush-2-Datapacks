# separate
scoreboard players operation $2 SkillParams = $1 SkillParams
scoreboard players operation $1 SkillParams /= 10 Const
scoreboard players operation $2 SkillParams %= 10 Const

# team check
scoreboard players set $3 SkillParams 0
execute if score $1 SkillParams matches 1 if entity @s[team=red] if entity @e[type=block_display,limit=1,tag=skillObject,tag=!objectRed,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 1 if entity @s[team=blue] if entity @e[type=block_display,limit=1,tag=skillObject,tag=!objectBlue,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 1 if entity @s[team=green] if entity @e[type=block_display,limit=1,tag=skillObject,tag=!objectGreen,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 1 if entity @s[team=yellow] if entity @e[type=block_display,limit=1,tag=skillObject,tag=!objectYellow,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 2 if entity @s[team=red] if entity @e[type=block_display,limit=1,tag=skillObject,tag=objectRed,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 2 if entity @s[team=blue] if entity @e[type=block_display,limit=1,tag=skillObject,tag=objectBlue,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 2 if entity @s[team=green] if entity @e[type=block_display,limit=1,tag=skillObject,tag=objectGreen,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 2 if entity @s[team=yellow] if entity @e[type=block_display,limit=1,tag=skillObject,tag=objectYellow,distance=..0.5] run scoreboard players set $3 SkillParams 1
execute if score $1 SkillParams matches 3 run scoreboard players set $3 SkillParams 1

# skill check
scoreboard players operation id SkillsCondition = $id SkillParams
scoreboard players set $4 SkillParams 0
execute if score $id SkillParams = @s skill_1 run scoreboard players set $4 SkillParams 1
execute if score $id SkillParams = @s skill_2 run scoreboard players set $4 SkillParams 1
execute if score $id SkillParams = @s skill_3 run scoreboard players set $4 SkillParams 1
execute if score $2 SkillParams matches 0 run scoreboard players set $4 SkillParams 1
execute if score $2 SkillParams matches 1 run scoreboard players add $4 SkillParams 1
execute if score $2 SkillParams matches 1 run scoreboard players operation $4 SkillParams %= 2 Const

# finish
execute if score $3 SkillParams matches 0 if score $4 SkillParams matches 0 run function skills:condition_not_met
execute if score $3 SkillParams matches 1 if score $4 SkillParams matches 0 run function skills:condition_not_met
execute if score $3 SkillParams matches 0 if score $4 SkillParams matches 1 run function skills:condition_not_met

# also kills the object
execute if score $1 SkillParams matches 1 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=red] run kill @e[type=block_display,limit=1,tag=skillObject,tag=!objectRed,distance=..0.5]
execute if score $1 SkillParams matches 1 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=blue] run kill @e[type=block_display,limit=1,tag=skillObject,tag=!objectBlue,distance=..0.5]
execute if score $1 SkillParams matches 1 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=green] run kill @e[type=block_display,limit=1,tag=skillObject,tag=!objectGreen,distance=..0.5]
execute if score $1 SkillParams matches 1 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=yellow] run kill @e[type=block_display,limit=1,tag=skillObject,tag=!objectYellow,distance=..0.5]
execute if score $1 SkillParams matches 2 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=red] run kill @e[type=block_display,limit=1,tag=skillObject,tag=objectRed,distance=..0.5]
execute if score $1 SkillParams matches 2 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=blue] run kill @e[type=block_display,limit=1,tag=skillObject,tag=objectBlue,distance=..0.5]
execute if score $1 SkillParams matches 2 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=green] run kill @e[type=block_display,limit=1,tag=skillObject,tag=objectGreen,distance=..0.5]
execute if score $1 SkillParams matches 2 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 if entity @s[team=yellow] run kill @e[type=block_display,limit=1,tag=skillObject,tag=objectYellow,distance=..0.5]
execute if score $1 SkillParams matches 3 if score $3 SkillParams matches 1 if score $4 SkillParams matches 1 run kill @e[type=block_display,limit=1,tag=skillObject,distance=..0.5]