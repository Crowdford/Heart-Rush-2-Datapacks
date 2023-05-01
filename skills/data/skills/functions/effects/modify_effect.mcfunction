## remove effect that is getting modified
# store duration
scoreboard players operation durationMod Temp = duration effectstack
scoreboard players set duration effectstack 0

# clear effect
tag @s add dontEffectTrigger
function effectstack:effect
tag @s remove dontEffectTrigger

# restore duration
scoreboard players operation duration effectstack = durationMod Temp

## Modify effect
# calculate values
scoreboard players operation $op SkillParams = $1 SkillParams
scoreboard players operation $v1 SkillParams = id effectstack
scoreboard players operation $v2 SkillParams = $2 SkillParams
function skills:effects/util/math
execute if score $v1 SkillParams matches 33.. run scoreboard players set $v1 SkillParams 32
execute if score $v1 SkillParams matches ..0 run scoreboard players set $v1 SkillParams 1
scoreboard players operation id effectstack = $v1 SkillParams

scoreboard players operation $op SkillParams = $3 SkillParams
scoreboard players operation $v1 SkillParams = amplifier effectstack
scoreboard players operation $v2 SkillParams = $4 SkillParams
function skills:effects/util/math
execute if score $v1 SkillParams matches 9.. run scoreboard players set $v1 SkillParams 8
execute if score $v1 SkillParams matches ..-1 run scoreboard players set $v1 SkillParams 0
scoreboard players operation amplifier effectstack = $v1 SkillParams

scoreboard players operation $op SkillParams = $5 SkillParams
scoreboard players operation $v1 SkillParams = duration effectstack
scoreboard players operation $v2 SkillParams = $6 SkillParams
function skills:effects/util/math
execute if score $v1 SkillParams matches 5100.. run scoreboard players set $v1 SkillParams 5100
execute if score $v1 SkillParams matches ..-1 run scoreboard players set $v1 SkillParams 0
scoreboard players operation duration effectstack = $v1 SkillParams

# apply modified effect
tag @s add dontEffectTrigger
function effectstack:effect
tag @s remove dontEffectTrigger

