#
# Generic Action
# --> execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] run <command>
#
execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1

#
# Actions 
# --> item replace entity @s enderchest. with<slot> <item>{eval:<id>,egui:1}
# --> execute as @s[scores={tsEGUI_guiVal=<id>}] run <command>
#
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.shield.main.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.shield.main.description.1","color":"gray","italic":false}','{"translate":"menu.shield.main.description.2","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{CustomModelData:1,eval:0,egui:1,display:{Name:'""'}}
scoreboard players set placeType Temp 1
function egui:gui/util/place_shield
item replace entity @s enderchest.26 with bone_meal{eval:3,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=3}] run scoreboard players set @s tsEGUI_guiSwitch 1

item replace entity @s enderchest.12 with flower_banner_pattern{HideFlags:127,eval:1,egui:1,display:{Name:'{"translate":"menu.shield.main.add","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.shield.main.add.description","color":"gray","italic":false}']}}
execute if score @s bp8 matches 1.. run item replace entity @s enderchest.12 with flower_banner_pattern{HideFlags:127,eval:0,egui:1,display:{Name:'{"translate":"menu.shield.main.add","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.shield.main.add.description.alt","color":"red","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s bpp 0
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s bpc 0
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s tsEGUI_guiSwitch 7

item replace entity @s enderchest.14 with barrier{eval:2,egui:1,display:{Name:'{"translate":"menu.shield.main.remove","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.shield.main.remove.description","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=2}] run scoreboard players set @s tsEGUI_guiSwitch 9
