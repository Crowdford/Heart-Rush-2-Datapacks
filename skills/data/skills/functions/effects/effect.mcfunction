scoreboard players operation id effectstack = $1 SkillParams
scoreboard players operation amplifier effectstack = $2 SkillParams
scoreboard players operation duration effectstack = $3 SkillParams
scoreboard players operation duration effectstack *= 20 Const
scoreboard players operation sid effectstack = $id SkillParams
scoreboard players add sid effectstack 100


tag @s remove skillTriggerTemp

scoreboard players operation $condx SkillsCondition = $cond SkillsCondition
scoreboard players operation $idx SkillParams = $id SkillParams
scoreboard players operation idx SkillsCondition = id SkillsCondition

scoreboard players operation met0x SkillsCondition = met0 SkillsCondition
scoreboard players operation met1x SkillsCondition = met1 SkillsCondition
scoreboard players operation met2x SkillsCondition = met2 SkillsCondition
scoreboard players operation met3x SkillsCondition = met3 SkillsCondition
scoreboard players operation met4x SkillsCondition = met4 SkillsCondition
scoreboard players operation met5x SkillsCondition = met5 SkillsCondition
scoreboard players operation met6x SkillsCondition = met6 SkillsCondition
scoreboard players operation met7x SkillsCondition = met7 SkillsCondition
scoreboard players operation met8x SkillsCondition = met8 SkillsCondition
scoreboard players operation met9x SkillsCondition = met9 SkillsCondition
scoreboard players operation met10x SkillsCondition = met10 SkillsCondition
scoreboard players operation met11x SkillsCondition = met11 SkillsCondition
scoreboard players operation met12x SkillsCondition = met12 SkillsCondition
scoreboard players operation met13x SkillsCondition = met13 SkillsCondition
scoreboard players operation met14x SkillsCondition = met14 SkillsCondition
scoreboard players operation met15x SkillsCondition = met15 SkillsCondition

#tellraw @a ["effect apply start",{"score":{"name":"id","objective":"effectstack"}}]
execute if score duration effectstack matches 1.. run tag @s add dontUneffectTrigger3
data modify storage effectstack:trigger stack append from storage effectstack:trigger effect
function effectstack:effect
data modify storage effectstack:trigger effect set from storage effectstack:trigger stack[-1]
data remove storage effectstack:trigger stack[-1]
tag @s remove dontUneffectTrigger3
#tellraw @a ["effect apply end",{"score":{"name":"id","objective":"effectstack"}},"\n"]

scoreboard players operation met0 SkillsCondition = met0x SkillsCondition
scoreboard players operation met1 SkillsCondition = met1x SkillsCondition
scoreboard players operation met2 SkillsCondition = met2x SkillsCondition
scoreboard players operation met3 SkillsCondition = met3x SkillsCondition
scoreboard players operation met4 SkillsCondition = met4x SkillsCondition
scoreboard players operation met5 SkillsCondition = met5x SkillsCondition
scoreboard players operation met6 SkillsCondition = met6x SkillsCondition
scoreboard players operation met7 SkillsCondition = met7x SkillsCondition
scoreboard players operation met8 SkillsCondition = met8x SkillsCondition
scoreboard players operation met9 SkillsCondition = met9x SkillsCondition
scoreboard players operation met10 SkillsCondition = met10x SkillsCondition
scoreboard players operation met11 SkillsCondition = met11x SkillsCondition
scoreboard players operation met12 SkillsCondition = met12x SkillsCondition
scoreboard players operation met13 SkillsCondition = met13x SkillsCondition
scoreboard players operation met14 SkillsCondition = met14x SkillsCondition
scoreboard players operation met15 SkillsCondition = met15x SkillsCondition

tag @s add skillTriggerTemp

scoreboard players operation $cond SkillsCondition = $condx SkillsCondition
scoreboard players operation $id SkillParams = $idx SkillParams
scoreboard players operation id SkillsCondition = idx SkillsCondition