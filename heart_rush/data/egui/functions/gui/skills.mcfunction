#
# Generic Action
# --> execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] run <command>
#
execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1

# Version Reset
scoreboard players operation version Temp = version skills
scoreboard players remove version Temp 500
execute unless score @s skill_version >= version Temp run scoreboard players set @s skill_1 0
execute unless score @s skill_version >= version Temp run scoreboard players set @s skill_2 0
execute unless score @s skill_version >= version Temp run scoreboard players set @s skill_3 0

# Page Check / Reset 
execute if score id skills matches ..21 if score @s skill_page matches 1 run scoreboard players set @s skill_page 0

#
# Actions 
# --> item replace entity @s enderchest. with<slot> <item>{eval:<id>,egui:1}
# --> execute as @s[scores={tsEGUI_guiVal=<id>}] run <command>
#
item replace entity @s enderchest.7 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.skills.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.skills.description.1","color":"gray","italic":false}','{"translate":"menu.skills.description.2","color":"gray","italic":false}','{"translate":"menu.skills.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=red] enderchest.7 with name_tag{eval:0,egui:1,display:{Name:'{"translate":"menu.skills.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.skills.description.1","color":"gray","italic":false}','{"translate":"menu.skills.description.2","color":"gray","italic":false}','{"translate":"menu.skills.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=blue] enderchest.7 with rabbit_foot{eval:0,egui:1,display:{Name:'{"translate":"menu.skills.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.skills.description.1","color":"gray","italic":false}','{"translate":"menu.skills.description.2","color":"gray","italic":false}','{"translate":"menu.skills.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=green] enderchest.7 with book{eval:0,egui:1,display:{Name:'{"translate":"menu.skills.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.skills.description.1","color":"gray","italic":false}','{"translate":"menu.skills.description.2","color":"gray","italic":false}','{"translate":"menu.skills.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=yellow] enderchest.7 with egg{eval:0,egui:1,display:{Name:'{"translate":"menu.skills.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.skills.description.1","color":"gray","italic":false}','{"translate":"menu.skills.description.2","color":"gray","italic":false}','{"translate":"menu.skills.description.3","color":"gray","italic":false}']}}

execute if score id skills matches ..21 run item replace entity @s enderchest.16 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
execute if score id skills matches ..21 run item replace entity @s[team=red] enderchest.16 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
execute if score id skills matches ..21 run item replace entity @s[team=blue] enderchest.16 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
execute if score id skills matches ..21 run item replace entity @s[team=green] enderchest.16 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
execute if score id skills matches ..21 run item replace entity @s[team=yellow] enderchest.16 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
execute if score id skills matches 22.. unless score @s skill_page matches 1 run item replace entity @s enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:9,HideFlags:127}
execute if score id skills matches 22.. unless score @s skill_page matches 1 run item replace entity @s[team=red] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:1,HideFlags:127}
execute if score id skills matches 22.. unless score @s skill_page matches 1 run item replace entity @s[team=blue] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:3,HideFlags:127}
execute if score id skills matches 22.. unless score @s skill_page matches 1 run item replace entity @s[team=green] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:5,HideFlags:127}
execute if score id skills matches 22.. unless score @s skill_page matches 1 run item replace entity @s[team=yellow] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:7,HideFlags:127}
execute if score id skills matches 22.. if score @s skill_page matches 1 run item replace entity @s enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:10,HideFlags:127}
execute if score id skills matches 22.. if score @s skill_page matches 1 run item replace entity @s[team=red] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:2,HideFlags:127}
execute if score id skills matches 22.. if score @s skill_page matches 1 run item replace entity @s[team=blue] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:4,HideFlags:127}
execute if score id skills matches 22.. if score @s skill_page matches 1 run item replace entity @s[team=green] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:6,HideFlags:127}
execute if score id skills matches 22.. if score @s skill_page matches 1 run item replace entity @s[team=yellow] enderchest.16 with diamond_hoe{eval:102,egui:1,display:{Name:'{"translate":"menu.change_page","color":"gray","bold":true,"italic":false}'},CustomModelData:8,HideFlags:127}
execute as @s[scores={tsEGUI_guiVal=102}] run scoreboard players add @s skill_page 1
execute as @s[scores={tsEGUI_guiVal=102}] if score @s skill_page matches 2.. run scoreboard players set @s skill_page 0

item replace entity @s enderchest.25 with bone_meal{eval:100,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=red] enderchest.25 with light_blue_dye{eval:100,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=blue] enderchest.25 with rabbit_hide{eval:100,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=green] enderchest.25 with slime_ball{eval:100,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=yellow] enderchest.25 with glowstone_dust{eval:100,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=100},tag=!menu.switch_options] if score game Stats matches 0 run scoreboard players set @s tsEGUI_guiSwitch 1
execute as @s[scores={tsEGUI_guiVal=100},tag=menu.switch_options] if score game Stats matches 0 run scoreboard players set @s tsEGUI_guiSwitch 4
execute as @s[scores={tsEGUI_guiVal=100},tag=menu.switch_options] if score game Stats matches 0 run tag @s remove menu.switch_options
execute as @s[scores={tsEGUI_guiVal=100}] if score game Stats matches 1..2 run scoreboard players set @s tsEGUI_guiSwitch 11
execute as @s[scores={tsEGUI_guiVal=100}] if score game Stats matches 0 positioned 9868 112 9986 if entity @s[distance=..10] run scoreboard players set @s tsEGUI_guiSwitch 11


item replace entity @s enderchest.8 with gold_nugget{eval:101,egui:1,display:{Name:'{"translate":"menu.skills.empty_skill_slot","color":"gold","bold":true,"italic":false}'}}
item replace entity @s enderchest.17 with gold_nugget{eval:101,egui:1,display:{Name:'{"translate":"menu.skills.empty_skill_slot","color":"gold","bold":true,"italic":false}'}}
item replace entity @s enderchest.26 with gold_nugget{eval:101,egui:1,display:{Name:'{"translate":"menu.skills.empty_skill_slot","color":"gold","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=101}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.5 1 0.5

# Skills
execute unless score @s skill_page matches 1 run function skills:load
execute if score @s skill_page matches 1 run function skills:load2
scoreboard players operation skill Temp = @s skill_1
scoreboard players set slot Temp 1
execute if score @s skill_1 matches 1.. run function egui:gui/util/load_skill
scoreboard players operation skill Temp = @s skill_2
scoreboard players set slot Temp 2
execute if score @s skill_2 matches 1.. run function egui:gui/util/load_skill
scoreboard players operation skill Temp = @s skill_3
scoreboard players set slot Temp 3
execute if score @s skill_3 matches 1.. run function egui:gui/util/load_skill
execute as @s[scores={tsEGUI_guiVal=1..42}] if score @s skill_1 matches 1.. if score @s skill_2 matches 1.. if score @s skill_3 matches 1.. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.5 1 0.5
execute as @s[scores={tsEGUI_guiVal=1..42}] if score @s skill_1 matches 1.. if score @s skill_2 matches 1.. if score @s skill_3 matches 1.. at @s run scoreboard players set @s tsEGUI_guiVal 0
execute as @s[scores={tsEGUI_guiVal=1..42}] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.25 2
execute as @s[scores={tsEGUI_guiVal=1..42}] run scoreboard players operation skill Temp = @s tsEGUI_guiVal
execute as @s[scores={tsEGUI_guiVal=1..42}] run scoreboard players operation @s skill_version = version skills
execute as @s[scores={tsEGUI_guiVal=1..42}] unless score @s skill_3 matches 1.. run scoreboard players set slot Temp 3
execute as @s[scores={tsEGUI_guiVal=1..42}] unless score @s skill_2 matches 1.. run scoreboard players set slot Temp 2
execute as @s[scores={tsEGUI_guiVal=1..42}] unless score @s skill_1 matches 1.. run scoreboard players set slot Temp 1
execute as @s[scores={tsEGUI_guiVal=1..42}] if score slot Temp matches 1 run scoreboard players operation @s skill_1 = skill Temp
execute as @s[scores={tsEGUI_guiVal=1..42}] if score slot Temp matches 2 run scoreboard players operation @s skill_2 = skill Temp
execute as @s[scores={tsEGUI_guiVal=1..42}] if score slot Temp matches 3 run scoreboard players operation @s skill_3 = skill Temp
execute as @s[scores={tsEGUI_guiVal=1..42}] if score game Stats matches 0 run scoreboard players set @s tsEGUI_guiSwitch 2
execute as @s[scores={tsEGUI_guiVal=1..42}] if score game Stats matches 1..2 run scoreboard players set @s tsEGUI_guiSwitch 12
execute as @s[scores={tsEGUI_guiVal=1..42}] run scoreboard players operation $sel SkillParams = skill Temp
execute as @s[scores={tsEGUI_guiVal=1..42}] at @s run function #skills:select
execute as @s[scores={tsEGUI_guiVal=1..42}] at @s run function main:game/abilities
execute as @s[scores={tsEGUI_guiVal=-42..-1}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1
execute as @s[scores={tsEGUI_guiVal=-42..-1}] run scoreboard players operation skill Temp = @s tsEGUI_guiVal
execute as @s[scores={tsEGUI_guiVal=-42..-1}] run scoreboard players operation skill Temp *= -1 Const
execute as @s[scores={tsEGUI_guiVal=-42..-1}] run scoreboard players operation $sel SkillParams = skill Temp
execute as @s[scores={tsEGUI_guiVal=-42..-1}] run function #skills:unselect
execute as @s[scores={tsEGUI_guiVal=-42..-1}] if score @s skill_1 = skill Temp run scoreboard players set @s skill_1 0
execute as @s[scores={tsEGUI_guiVal=-42..-1}] if score @s skill_2 = skill Temp run scoreboard players set @s skill_2 0
execute as @s[scores={tsEGUI_guiVal=-42..-1}] if score @s skill_3 = skill Temp run scoreboard players set @s skill_3 0
execute as @s[scores={tsEGUI_guiVal=-42..-1}] run function main:game/abilities
execute as @s[scores={tsEGUI_guiVal=-42..-1}] if score game Stats matches 0 run scoreboard players set @s tsEGUI_guiSwitch 2
execute as @s[scores={tsEGUI_guiVal=-42..-1}] if score game Stats matches 1..2 run scoreboard players set @s tsEGUI_guiSwitch 12

