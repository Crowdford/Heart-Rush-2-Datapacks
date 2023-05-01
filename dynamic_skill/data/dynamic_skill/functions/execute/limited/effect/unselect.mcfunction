scoreboard players operation $sel SkillParams = $id SkillParams
function #skills:unselect
execute if score @s skill_1 = $sel SkillParams run scoreboard players set @s skill_1 0
execute if score @s skill_2 = $sel SkillParams run scoreboard players set @s skill_2 0
execute if score @s skill_3 = $sel SkillParams run scoreboard players set @s skill_3 0
function main:game/abilities
scoreboard players operation @s tsEGUI_guiSwitch = @s tsEGUI_guiPage
